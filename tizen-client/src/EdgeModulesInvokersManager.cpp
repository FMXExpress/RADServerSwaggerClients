#include <glib-object.h>
#include <json-glib/json-glib.h>

#include "EdgeModulesInvokersManager.h"
#include "NetClient.h"
#include "Helpers.h"
#include "Error.h"
#include "RequestInfo.h"

using namespace std;
using namespace Tizen::ArtikCloud;


EdgeModulesInvokersManager::EdgeModulesInvokersManager()
{

}

EdgeModulesInvokersManager::~EdgeModulesInvokersManager()
{

}

static gboolean __EdgeModulesInvokersManagerresponseHandler(gpointer data)
{
	RequestInfo *request = static_cast<RequestInfo*>(data);
	g_thread_join(request->thread);

	// invoke the callback function
	bool retval = request->processor(*(request->p_chunk), *(request->code), request->errormsg, request->userData, request->handler);

	delete request;
	return FALSE;
}

static gpointer __EdgeModulesInvokersManagerthreadFunc(gpointer data)
{
	RequestInfo *request = static_cast<RequestInfo*>(data);

	// handle the request
	NetClient::easycurl(request->host, request->path, request->method, request->queryParams,
	request->mBody, request->headerList, request->p_chunk, request->code, request->errormsg);

	request->thread = g_thread_self();
	g_idle_add(__EdgeModulesInvokersManagerresponseHandler, static_cast<gpointer>(request));

	return NULL;
}


static bool deleteResourceEndpointProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	
	void(* handler)(Error, void* ) = reinterpret_cast<void(*)(Error, void* )> (voidHandler);
	JsonNode* pJson;
	char * data = p_chunk.memory;

	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));


		handler(error, userData);
		return true;



	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unknown Error"));
		}
		handler(error, userData);
		return false;
	}
}

static bool deleteResourceEndpointHelper(char * accessToken,
	std::string mname, std::string rname, std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	
	void(* handler)(Error, void* ) , void* userData, bool isAsync)
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

	string url("/edgemodules/{mname}/{rname}");
	int pos;

	string s_mname("{");
	s_mname.append("mname");
	s_mname.append("}");
	pos = url.find(s_mname);
	url.erase(pos, s_mname.length());
	url.insert(pos, stringify(&mname, "std::string"));
	string s_rname("{");
	s_rname.append("rname");
	s_rname.append("}");
	pos = url.find(s_rname);
	url.erase(pos, s_rname.length());
	url.insert(pos, stringify(&rname, "std::string"));

	//TODO: free memory of errormsg, memorystruct
	MemoryStruct_s* p_chunk = new MemoryStruct_s();
	long code;
	char* errormsg = NULL;
	string myhttpmethod("DELETE");

	if(strcmp("PUT", "DELETE") == 0){
		if(strcmp("", mBody.c_str()) == 0){
			mBody.append("{}");
		}
	}

	if(!isAsync){
		NetClient::easycurl(EdgeModulesInvokersManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = deleteResourceEndpointProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (EdgeModulesInvokersManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), deleteResourceEndpointProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __EdgeModulesInvokersManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool EdgeModulesInvokersManager::deleteResourceEndpointAsync(char * accessToken,
	std::string mname, std::string rname, std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	
	void(* handler)(Error, void* ) , void* userData)
{
	return deleteResourceEndpointHelper(accessToken,
	mname, rname, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret, 
	handler, userData, true);
}

bool EdgeModulesInvokersManager::deleteResourceEndpointSync(char * accessToken,
	std::string mname, std::string rname, std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	
	void(* handler)(Error, void* ) , void* userData)
{
	return deleteResourceEndpointHelper(accessToken,
	mname, rname, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret, 
	handler, userData, false);
}

static bool deleteResourceEndpointItemProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	
	void(* handler)(Error, void* ) = reinterpret_cast<void(*)(Error, void* )> (voidHandler);
	JsonNode* pJson;
	char * data = p_chunk.memory;

	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));


		handler(error, userData);
		return true;



	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unknown Error"));
		}
		handler(error, userData);
		return false;
	}
}

static bool deleteResourceEndpointItemHelper(char * accessToken,
	std::string mname, std::string rname, std::string wildcard, std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	
	void(* handler)(Error, void* ) , void* userData, bool isAsync)
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

	string url("/edgemodules/{mname}/{rname}/{wildcard}");
	int pos;

	string s_mname("{");
	s_mname.append("mname");
	s_mname.append("}");
	pos = url.find(s_mname);
	url.erase(pos, s_mname.length());
	url.insert(pos, stringify(&mname, "std::string"));
	string s_rname("{");
	s_rname.append("rname");
	s_rname.append("}");
	pos = url.find(s_rname);
	url.erase(pos, s_rname.length());
	url.insert(pos, stringify(&rname, "std::string"));
	string s_wildcard("{");
	s_wildcard.append("wildcard");
	s_wildcard.append("}");
	pos = url.find(s_wildcard);
	url.erase(pos, s_wildcard.length());
	url.insert(pos, stringify(&wildcard, "std::string"));

	//TODO: free memory of errormsg, memorystruct
	MemoryStruct_s* p_chunk = new MemoryStruct_s();
	long code;
	char* errormsg = NULL;
	string myhttpmethod("DELETE");

	if(strcmp("PUT", "DELETE") == 0){
		if(strcmp("", mBody.c_str()) == 0){
			mBody.append("{}");
		}
	}

	if(!isAsync){
		NetClient::easycurl(EdgeModulesInvokersManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = deleteResourceEndpointItemProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (EdgeModulesInvokersManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), deleteResourceEndpointItemProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __EdgeModulesInvokersManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool EdgeModulesInvokersManager::deleteResourceEndpointItemAsync(char * accessToken,
	std::string mname, std::string rname, std::string wildcard, std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	
	void(* handler)(Error, void* ) , void* userData)
{
	return deleteResourceEndpointItemHelper(accessToken,
	mname, rname, wildcard, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret, 
	handler, userData, true);
}

bool EdgeModulesInvokersManager::deleteResourceEndpointItemSync(char * accessToken,
	std::string mname, std::string rname, std::string wildcard, std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	
	void(* handler)(Error, void* ) , void* userData)
{
	return deleteResourceEndpointItemHelper(accessToken,
	mname, rname, wildcard, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret, 
	handler, userData, false);
}

static bool getResourceEndpointProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	
	void(* handler)(Error, void* ) = reinterpret_cast<void(*)(Error, void* )> (voidHandler);
	JsonNode* pJson;
	char * data = p_chunk.memory;

	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));


		handler(error, userData);
		return true;



	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unknown Error"));
		}
		handler(error, userData);
		return false;
	}
}

static bool getResourceEndpointHelper(char * accessToken,
	std::string mname, std::string rname, std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	
	void(* handler)(Error, void* ) , void* userData, bool isAsync)
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

	string url("/edgemodules/{mname}/{rname}");
	int pos;

	string s_mname("{");
	s_mname.append("mname");
	s_mname.append("}");
	pos = url.find(s_mname);
	url.erase(pos, s_mname.length());
	url.insert(pos, stringify(&mname, "std::string"));
	string s_rname("{");
	s_rname.append("rname");
	s_rname.append("}");
	pos = url.find(s_rname);
	url.erase(pos, s_rname.length());
	url.insert(pos, stringify(&rname, "std::string"));

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
		NetClient::easycurl(EdgeModulesInvokersManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = getResourceEndpointProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (EdgeModulesInvokersManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), getResourceEndpointProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __EdgeModulesInvokersManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool EdgeModulesInvokersManager::getResourceEndpointAsync(char * accessToken,
	std::string mname, std::string rname, std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	
	void(* handler)(Error, void* ) , void* userData)
{
	return getResourceEndpointHelper(accessToken,
	mname, rname, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret, 
	handler, userData, true);
}

bool EdgeModulesInvokersManager::getResourceEndpointSync(char * accessToken,
	std::string mname, std::string rname, std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	
	void(* handler)(Error, void* ) , void* userData)
{
	return getResourceEndpointHelper(accessToken,
	mname, rname, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret, 
	handler, userData, false);
}

static bool getResourceEndpointItemProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	
	void(* handler)(Error, void* ) = reinterpret_cast<void(*)(Error, void* )> (voidHandler);
	JsonNode* pJson;
	char * data = p_chunk.memory;

	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));


		handler(error, userData);
		return true;



	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unknown Error"));
		}
		handler(error, userData);
		return false;
	}
}

static bool getResourceEndpointItemHelper(char * accessToken,
	std::string mname, std::string rname, std::string wildcard, std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	
	void(* handler)(Error, void* ) , void* userData, bool isAsync)
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

	string url("/edgemodules/{mname}/{rname}/{wildcard}");
	int pos;

	string s_mname("{");
	s_mname.append("mname");
	s_mname.append("}");
	pos = url.find(s_mname);
	url.erase(pos, s_mname.length());
	url.insert(pos, stringify(&mname, "std::string"));
	string s_rname("{");
	s_rname.append("rname");
	s_rname.append("}");
	pos = url.find(s_rname);
	url.erase(pos, s_rname.length());
	url.insert(pos, stringify(&rname, "std::string"));
	string s_wildcard("{");
	s_wildcard.append("wildcard");
	s_wildcard.append("}");
	pos = url.find(s_wildcard);
	url.erase(pos, s_wildcard.length());
	url.insert(pos, stringify(&wildcard, "std::string"));

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
		NetClient::easycurl(EdgeModulesInvokersManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = getResourceEndpointItemProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (EdgeModulesInvokersManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), getResourceEndpointItemProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __EdgeModulesInvokersManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool EdgeModulesInvokersManager::getResourceEndpointItemAsync(char * accessToken,
	std::string mname, std::string rname, std::string wildcard, std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	
	void(* handler)(Error, void* ) , void* userData)
{
	return getResourceEndpointItemHelper(accessToken,
	mname, rname, wildcard, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret, 
	handler, userData, true);
}

bool EdgeModulesInvokersManager::getResourceEndpointItemSync(char * accessToken,
	std::string mname, std::string rname, std::string wildcard, std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	
	void(* handler)(Error, void* ) , void* userData)
{
	return getResourceEndpointItemHelper(accessToken,
	mname, rname, wildcard, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret, 
	handler, userData, false);
}

static bool patchResourceEndpointProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	
	void(* handler)(Error, void* ) = reinterpret_cast<void(*)(Error, void* )> (voidHandler);
	JsonNode* pJson;
	char * data = p_chunk.memory;

	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));


		handler(error, userData);
		return true;



	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unknown Error"));
		}
		handler(error, userData);
		return false;
	}
}

static bool patchResourceEndpointHelper(char * accessToken,
	std::string mname, std::string rname, std::string body, std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	
	void(* handler)(Error, void* ) , void* userData, bool isAsync)
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

	if (isprimitive("std::string")) {
		node = converttoJson(&body, "std::string", "");
	}
	

	char *jsonStr1 =  json_to_string(node, false);
	mBody.append(jsonStr1);
	g_free(static_cast<gpointer>(jsonStr1));

	string url("/edgemodules/{mname}/{rname}");
	int pos;

	string s_mname("{");
	s_mname.append("mname");
	s_mname.append("}");
	pos = url.find(s_mname);
	url.erase(pos, s_mname.length());
	url.insert(pos, stringify(&mname, "std::string"));
	string s_rname("{");
	s_rname.append("rname");
	s_rname.append("}");
	pos = url.find(s_rname);
	url.erase(pos, s_rname.length());
	url.insert(pos, stringify(&rname, "std::string"));

	//TODO: free memory of errormsg, memorystruct
	MemoryStruct_s* p_chunk = new MemoryStruct_s();
	long code;
	char* errormsg = NULL;
	string myhttpmethod("PATCH");

	if(strcmp("PUT", "PATCH") == 0){
		if(strcmp("", mBody.c_str()) == 0){
			mBody.append("{}");
		}
	}

	if(!isAsync){
		NetClient::easycurl(EdgeModulesInvokersManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = patchResourceEndpointProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (EdgeModulesInvokersManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), patchResourceEndpointProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __EdgeModulesInvokersManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool EdgeModulesInvokersManager::patchResourceEndpointAsync(char * accessToken,
	std::string mname, std::string rname, std::string body, std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	
	void(* handler)(Error, void* ) , void* userData)
{
	return patchResourceEndpointHelper(accessToken,
	mname, rname, body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret, 
	handler, userData, true);
}

bool EdgeModulesInvokersManager::patchResourceEndpointSync(char * accessToken,
	std::string mname, std::string rname, std::string body, std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	
	void(* handler)(Error, void* ) , void* userData)
{
	return patchResourceEndpointHelper(accessToken,
	mname, rname, body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret, 
	handler, userData, false);
}

static bool patchResourceEndpointItemProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	
	void(* handler)(Error, void* ) = reinterpret_cast<void(*)(Error, void* )> (voidHandler);
	JsonNode* pJson;
	char * data = p_chunk.memory;

	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));


		handler(error, userData);
		return true;



	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unknown Error"));
		}
		handler(error, userData);
		return false;
	}
}

static bool patchResourceEndpointItemHelper(char * accessToken,
	std::string mname, std::string rname, std::string wildcard, std::string body, std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	
	void(* handler)(Error, void* ) , void* userData, bool isAsync)
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

	if (isprimitive("std::string")) {
		node = converttoJson(&body, "std::string", "");
	}
	

	char *jsonStr1 =  json_to_string(node, false);
	mBody.append(jsonStr1);
	g_free(static_cast<gpointer>(jsonStr1));

	string url("/edgemodules/{mname}/{rname}/{wildcard}");
	int pos;

	string s_mname("{");
	s_mname.append("mname");
	s_mname.append("}");
	pos = url.find(s_mname);
	url.erase(pos, s_mname.length());
	url.insert(pos, stringify(&mname, "std::string"));
	string s_rname("{");
	s_rname.append("rname");
	s_rname.append("}");
	pos = url.find(s_rname);
	url.erase(pos, s_rname.length());
	url.insert(pos, stringify(&rname, "std::string"));
	string s_wildcard("{");
	s_wildcard.append("wildcard");
	s_wildcard.append("}");
	pos = url.find(s_wildcard);
	url.erase(pos, s_wildcard.length());
	url.insert(pos, stringify(&wildcard, "std::string"));

	//TODO: free memory of errormsg, memorystruct
	MemoryStruct_s* p_chunk = new MemoryStruct_s();
	long code;
	char* errormsg = NULL;
	string myhttpmethod("PATCH");

	if(strcmp("PUT", "PATCH") == 0){
		if(strcmp("", mBody.c_str()) == 0){
			mBody.append("{}");
		}
	}

	if(!isAsync){
		NetClient::easycurl(EdgeModulesInvokersManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = patchResourceEndpointItemProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (EdgeModulesInvokersManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), patchResourceEndpointItemProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __EdgeModulesInvokersManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool EdgeModulesInvokersManager::patchResourceEndpointItemAsync(char * accessToken,
	std::string mname, std::string rname, std::string wildcard, std::string body, std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	
	void(* handler)(Error, void* ) , void* userData)
{
	return patchResourceEndpointItemHelper(accessToken,
	mname, rname, wildcard, body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret, 
	handler, userData, true);
}

bool EdgeModulesInvokersManager::patchResourceEndpointItemSync(char * accessToken,
	std::string mname, std::string rname, std::string wildcard, std::string body, std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	
	void(* handler)(Error, void* ) , void* userData)
{
	return patchResourceEndpointItemHelper(accessToken,
	mname, rname, wildcard, body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret, 
	handler, userData, false);
}

static bool postResourceEndpointProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	
	void(* handler)(Error, void* ) = reinterpret_cast<void(*)(Error, void* )> (voidHandler);
	JsonNode* pJson;
	char * data = p_chunk.memory;

	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));


		handler(error, userData);
		return true;



	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unknown Error"));
		}
		handler(error, userData);
		return false;
	}
}

static bool postResourceEndpointHelper(char * accessToken,
	std::string mname, std::string rname, std::string body, std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	
	void(* handler)(Error, void* ) , void* userData, bool isAsync)
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

	if (isprimitive("std::string")) {
		node = converttoJson(&body, "std::string", "");
	}
	

	char *jsonStr1 =  json_to_string(node, false);
	mBody.append(jsonStr1);
	g_free(static_cast<gpointer>(jsonStr1));

	string url("/edgemodules/{mname}/{rname}");
	int pos;

	string s_mname("{");
	s_mname.append("mname");
	s_mname.append("}");
	pos = url.find(s_mname);
	url.erase(pos, s_mname.length());
	url.insert(pos, stringify(&mname, "std::string"));
	string s_rname("{");
	s_rname.append("rname");
	s_rname.append("}");
	pos = url.find(s_rname);
	url.erase(pos, s_rname.length());
	url.insert(pos, stringify(&rname, "std::string"));

	//TODO: free memory of errormsg, memorystruct
	MemoryStruct_s* p_chunk = new MemoryStruct_s();
	long code;
	char* errormsg = NULL;
	string myhttpmethod("POST");

	if(strcmp("PUT", "POST") == 0){
		if(strcmp("", mBody.c_str()) == 0){
			mBody.append("{}");
		}
	}

	if(!isAsync){
		NetClient::easycurl(EdgeModulesInvokersManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = postResourceEndpointProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (EdgeModulesInvokersManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), postResourceEndpointProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __EdgeModulesInvokersManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool EdgeModulesInvokersManager::postResourceEndpointAsync(char * accessToken,
	std::string mname, std::string rname, std::string body, std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	
	void(* handler)(Error, void* ) , void* userData)
{
	return postResourceEndpointHelper(accessToken,
	mname, rname, body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret, 
	handler, userData, true);
}

bool EdgeModulesInvokersManager::postResourceEndpointSync(char * accessToken,
	std::string mname, std::string rname, std::string body, std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	
	void(* handler)(Error, void* ) , void* userData)
{
	return postResourceEndpointHelper(accessToken,
	mname, rname, body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret, 
	handler, userData, false);
}

static bool postResourceEndpointItemProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	
	void(* handler)(Error, void* ) = reinterpret_cast<void(*)(Error, void* )> (voidHandler);
	JsonNode* pJson;
	char * data = p_chunk.memory;

	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));


		handler(error, userData);
		return true;



	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unknown Error"));
		}
		handler(error, userData);
		return false;
	}
}

static bool postResourceEndpointItemHelper(char * accessToken,
	std::string mname, std::string rname, std::string wildcard, std::string body, std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	
	void(* handler)(Error, void* ) , void* userData, bool isAsync)
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

	if (isprimitive("std::string")) {
		node = converttoJson(&body, "std::string", "");
	}
	

	char *jsonStr1 =  json_to_string(node, false);
	mBody.append(jsonStr1);
	g_free(static_cast<gpointer>(jsonStr1));

	string url("/edgemodules/{mname}/{rname}/{wildcard}");
	int pos;

	string s_mname("{");
	s_mname.append("mname");
	s_mname.append("}");
	pos = url.find(s_mname);
	url.erase(pos, s_mname.length());
	url.insert(pos, stringify(&mname, "std::string"));
	string s_rname("{");
	s_rname.append("rname");
	s_rname.append("}");
	pos = url.find(s_rname);
	url.erase(pos, s_rname.length());
	url.insert(pos, stringify(&rname, "std::string"));
	string s_wildcard("{");
	s_wildcard.append("wildcard");
	s_wildcard.append("}");
	pos = url.find(s_wildcard);
	url.erase(pos, s_wildcard.length());
	url.insert(pos, stringify(&wildcard, "std::string"));

	//TODO: free memory of errormsg, memorystruct
	MemoryStruct_s* p_chunk = new MemoryStruct_s();
	long code;
	char* errormsg = NULL;
	string myhttpmethod("POST");

	if(strcmp("PUT", "POST") == 0){
		if(strcmp("", mBody.c_str()) == 0){
			mBody.append("{}");
		}
	}

	if(!isAsync){
		NetClient::easycurl(EdgeModulesInvokersManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = postResourceEndpointItemProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (EdgeModulesInvokersManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), postResourceEndpointItemProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __EdgeModulesInvokersManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool EdgeModulesInvokersManager::postResourceEndpointItemAsync(char * accessToken,
	std::string mname, std::string rname, std::string wildcard, std::string body, std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	
	void(* handler)(Error, void* ) , void* userData)
{
	return postResourceEndpointItemHelper(accessToken,
	mname, rname, wildcard, body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret, 
	handler, userData, true);
}

bool EdgeModulesInvokersManager::postResourceEndpointItemSync(char * accessToken,
	std::string mname, std::string rname, std::string wildcard, std::string body, std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	
	void(* handler)(Error, void* ) , void* userData)
{
	return postResourceEndpointItemHelper(accessToken,
	mname, rname, wildcard, body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret, 
	handler, userData, false);
}

static bool putResourceEndpointProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	
	void(* handler)(Error, void* ) = reinterpret_cast<void(*)(Error, void* )> (voidHandler);
	JsonNode* pJson;
	char * data = p_chunk.memory;

	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));


		handler(error, userData);
		return true;



	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unknown Error"));
		}
		handler(error, userData);
		return false;
	}
}

static bool putResourceEndpointHelper(char * accessToken,
	std::string mname, std::string rname, std::string body, std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	
	void(* handler)(Error, void* ) , void* userData, bool isAsync)
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

	if (isprimitive("std::string")) {
		node = converttoJson(&body, "std::string", "");
	}
	

	char *jsonStr1 =  json_to_string(node, false);
	mBody.append(jsonStr1);
	g_free(static_cast<gpointer>(jsonStr1));

	string url("/edgemodules/{mname}/{rname}");
	int pos;

	string s_mname("{");
	s_mname.append("mname");
	s_mname.append("}");
	pos = url.find(s_mname);
	url.erase(pos, s_mname.length());
	url.insert(pos, stringify(&mname, "std::string"));
	string s_rname("{");
	s_rname.append("rname");
	s_rname.append("}");
	pos = url.find(s_rname);
	url.erase(pos, s_rname.length());
	url.insert(pos, stringify(&rname, "std::string"));

	//TODO: free memory of errormsg, memorystruct
	MemoryStruct_s* p_chunk = new MemoryStruct_s();
	long code;
	char* errormsg = NULL;
	string myhttpmethod("PUT");

	if(strcmp("PUT", "PUT") == 0){
		if(strcmp("", mBody.c_str()) == 0){
			mBody.append("{}");
		}
	}

	if(!isAsync){
		NetClient::easycurl(EdgeModulesInvokersManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = putResourceEndpointProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (EdgeModulesInvokersManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), putResourceEndpointProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __EdgeModulesInvokersManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool EdgeModulesInvokersManager::putResourceEndpointAsync(char * accessToken,
	std::string mname, std::string rname, std::string body, std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	
	void(* handler)(Error, void* ) , void* userData)
{
	return putResourceEndpointHelper(accessToken,
	mname, rname, body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret, 
	handler, userData, true);
}

bool EdgeModulesInvokersManager::putResourceEndpointSync(char * accessToken,
	std::string mname, std::string rname, std::string body, std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	
	void(* handler)(Error, void* ) , void* userData)
{
	return putResourceEndpointHelper(accessToken,
	mname, rname, body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret, 
	handler, userData, false);
}

static bool putResourceEndpointItemProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	
	void(* handler)(Error, void* ) = reinterpret_cast<void(*)(Error, void* )> (voidHandler);
	JsonNode* pJson;
	char * data = p_chunk.memory;

	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));


		handler(error, userData);
		return true;



	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unknown Error"));
		}
		handler(error, userData);
		return false;
	}
}

static bool putResourceEndpointItemHelper(char * accessToken,
	std::string mname, std::string rname, std::string wildcard, std::string body, std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	
	void(* handler)(Error, void* ) , void* userData, bool isAsync)
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

	if (isprimitive("std::string")) {
		node = converttoJson(&body, "std::string", "");
	}
	

	char *jsonStr1 =  json_to_string(node, false);
	mBody.append(jsonStr1);
	g_free(static_cast<gpointer>(jsonStr1));

	string url("/edgemodules/{mname}/{rname}/{wildcard}");
	int pos;

	string s_mname("{");
	s_mname.append("mname");
	s_mname.append("}");
	pos = url.find(s_mname);
	url.erase(pos, s_mname.length());
	url.insert(pos, stringify(&mname, "std::string"));
	string s_rname("{");
	s_rname.append("rname");
	s_rname.append("}");
	pos = url.find(s_rname);
	url.erase(pos, s_rname.length());
	url.insert(pos, stringify(&rname, "std::string"));
	string s_wildcard("{");
	s_wildcard.append("wildcard");
	s_wildcard.append("}");
	pos = url.find(s_wildcard);
	url.erase(pos, s_wildcard.length());
	url.insert(pos, stringify(&wildcard, "std::string"));

	//TODO: free memory of errormsg, memorystruct
	MemoryStruct_s* p_chunk = new MemoryStruct_s();
	long code;
	char* errormsg = NULL;
	string myhttpmethod("PUT");

	if(strcmp("PUT", "PUT") == 0){
		if(strcmp("", mBody.c_str()) == 0){
			mBody.append("{}");
		}
	}

	if(!isAsync){
		NetClient::easycurl(EdgeModulesInvokersManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = putResourceEndpointItemProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (EdgeModulesInvokersManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), putResourceEndpointItemProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __EdgeModulesInvokersManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool EdgeModulesInvokersManager::putResourceEndpointItemAsync(char * accessToken,
	std::string mname, std::string rname, std::string wildcard, std::string body, std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	
	void(* handler)(Error, void* ) , void* userData)
{
	return putResourceEndpointItemHelper(accessToken,
	mname, rname, wildcard, body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret, 
	handler, userData, true);
}

bool EdgeModulesInvokersManager::putResourceEndpointItemSync(char * accessToken,
	std::string mname, std::string rname, std::string wildcard, std::string body, std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	
	void(* handler)(Error, void* ) , void* userData)
{
	return putResourceEndpointItemHelper(accessToken,
	mname, rname, wildcard, body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret, 
	handler, userData, false);
}

