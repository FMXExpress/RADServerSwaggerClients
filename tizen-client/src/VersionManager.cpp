#include <glib-object.h>
#include <json-glib/json-glib.h>

#include "VersionManager.h"
#include "NetClient.h"
#include "Helpers.h"
#include "Error.h"
#include "RequestInfo.h"

using namespace std;
using namespace Tizen::ArtikCloud;


VersionManager::VersionManager()
{

}

VersionManager::~VersionManager()
{

}

static gboolean __VersionManagerresponseHandler(gpointer data)
{
	RequestInfo *request = static_cast<RequestInfo*>(data);
	g_thread_join(request->thread);

	// invoke the callback function
	bool retval = request->processor(*(request->p_chunk), *(request->code), request->errormsg, request->userData, request->handler);

	delete request;
	return FALSE;
}

static gpointer __VersionManagerthreadFunc(gpointer data)
{
	RequestInfo *request = static_cast<RequestInfo*>(data);

	// handle the request
	NetClient::easycurl(request->host, request->path, request->method, request->queryParams,
	request->mBody, request->headerList, request->p_chunk, request->code, request->errormsg);

	request->thread = g_thread_self();
	g_idle_add(__VersionManagerresponseHandler, static_cast<gpointer>(request));

	return NULL;
}


static bool getVersionProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(VersionObject, Error, void* )
	= reinterpret_cast<void(*)(VersionObject, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	VersionObject out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("VersionObject")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "VersionObject", "VersionObject");
			json_node_free(pJson);

			if ("VersionObject" == "std::string") {
				string* val = (std::string*)(&out);
				if (val->empty() && p_chunk.size>4) {
					*val = string(p_chunk.memory, p_chunk.size);
				}
			}
		} else {
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
		}
		handler(out, error, userData);
		return true;
		//TODO: handle case where json parsing has an error

	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unknown Error"));
		}
		 handler(out, error, userData);
		return false;
			}
}

static bool getVersionHelper(char * accessToken,
	std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	void(* handler)(VersionObject, Error, void* )
	, void* userData, bool isAsync)
{

	//TODO: maybe delete headerList after its used to free up space?
	struct curl_slist *headerList = NULL;

	
	{
		string headerString("X-Embarcadero-Application-Id: ");
		headerString.append(stringify(&xEmbarcaderoApplicationId, "std::string"));
		headerList = curl_slist_append(headerList, headerString.c_str());
	}

	{
		string headerString("X-Embarcadero-App-Secret: ");
		headerString.append(stringify(&xEmbarcaderoAppSecret, "std::string"));
		headerList = curl_slist_append(headerList, headerString.c_str());
	}

	{
		string headerString("X-Embarcadero-Master-Secret: ");
		headerString.append(stringify(&xEmbarcaderoMasterSecret, "std::string"));
		headerList = curl_slist_append(headerList, headerString.c_str());
	}

	string accessHeader = "Authorization: Bearer ";
	accessHeader.append(accessToken);
	headerList = curl_slist_append(headerList, accessHeader.c_str());
	headerList = curl_slist_append(headerList, "Content-Type: application/json");

	map <string, string> queryParams;
	string itemAtq;
	
	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/version");
	int pos;


	//TODO: free memory of errormsg, memorystruct
	MemoryStruct_s* p_chunk = new MemoryStruct_s();
	long code;
	char* errormsg = NULL;
	string myhttpmethod("GET");

	if(strcmp("PUT", "GET") == 0){
		if(strcmp("", mBody.c_str()) == 0){
			mBody.append("{}");
		}
	}

	if(!isAsync){
		NetClient::easycurl(VersionManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = getVersionProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

		curl_slist_free_all(headerList);
		if (p_chunk) {
			if(p_chunk->memory) {
				free(p_chunk->memory);
			}
			delete (p_chunk);
		}
		if (errormsg) {
			free(errormsg);
		}
		return retval;
	} else{
		GThread *thread = NULL;
		RequestInfo *requestInfo = NULL;

		requestInfo = new(nothrow) RequestInfo (VersionManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), getVersionProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __VersionManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool VersionManager::getVersionAsync(char * accessToken,
	std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	void(* handler)(VersionObject, Error, void* )
	, void* userData)
{
	return getVersionHelper(accessToken,
	xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret, 
	handler, userData, true);
}

bool VersionManager::getVersionSync(char * accessToken,
	std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	void(* handler)(VersionObject, Error, void* )
	, void* userData)
{
	return getVersionHelper(accessToken,
	xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret, 
	handler, userData, false);
}

