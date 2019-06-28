#include <glib-object.h>
#include <json-glib/json-glib.h>

#include "UsersManager.h"
#include "NetClient.h"
#include "Helpers.h"
#include "Error.h"
#include "RequestInfo.h"

using namespace std;
using namespace Tizen::ArtikCloud;


UsersManager::UsersManager()
{

}

UsersManager::~UsersManager()
{

}

static gboolean __UsersManagerresponseHandler(gpointer data)
{
	RequestInfo *request = static_cast<RequestInfo*>(data);
	g_thread_join(request->thread);

	// invoke the callback function
	bool retval = request->processor(*(request->p_chunk), *(request->code), request->errormsg, request->userData, request->handler);

	delete request;
	return FALSE;
}

static gpointer __UsersManagerthreadFunc(gpointer data)
{
	RequestInfo *request = static_cast<RequestInfo*>(data);

	// handle the request
	NetClient::easycurl(request->host, request->path, request->method, request->queryParams,
	request->mBody, request->headerList, request->p_chunk, request->code, request->errormsg);

	request->thread = g_thread_self();
	g_idle_add(__UsersManagerresponseHandler, static_cast<gpointer>(request));

	return NULL;
}


static bool addUserProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(UseridObject, Error, void* )
	= reinterpret_cast<void(*)(UseridObject, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	UseridObject out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("UseridObject")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "UseridObject", "UseridObject");
			json_node_free(pJson);

			if ("UseridObject" == "std::string") {
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

static bool addUserHelper(char * accessToken,
	UserCredentialsObject body, std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	void(* handler)(UseridObject, Error, void* )
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

	if (isprimitive("UserCredentialsObject")) {
		node = converttoJson(&body, "UserCredentialsObject", "");
	}
	
	char *jsonStr =  body.toJson();
	node = json_from_string(jsonStr, NULL);
	g_free(static_cast<gpointer>(jsonStr));
	

	char *jsonStr1 =  json_to_string(node, false);
	mBody.append(jsonStr1);
	g_free(static_cast<gpointer>(jsonStr1));

	string url("/users");
	int pos;


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
		NetClient::easycurl(UsersManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = addUserProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (UsersManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), addUserProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __UsersManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool UsersManager::addUserAsync(char * accessToken,
	UserCredentialsObject body, std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	void(* handler)(UseridObject, Error, void* )
	, void* userData)
{
	return addUserHelper(accessToken,
	body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret, 
	handler, userData, true);
}

bool UsersManager::addUserSync(char * accessToken,
	UserCredentialsObject body, std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	void(* handler)(UseridObject, Error, void* )
	, void* userData)
{
	return addUserHelper(accessToken,
	body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret, 
	handler, userData, false);
}

static bool deleteUserProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
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

static bool deleteUserHelper(char * accessToken,
	std::string id, std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	
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

	string url("/users/{id}");
	int pos;

	string s_id("{");
	s_id.append("id");
	s_id.append("}");
	pos = url.find(s_id);
	url.erase(pos, s_id.length());
	url.insert(pos, stringify(&id, "std::string"));

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
		NetClient::easycurl(UsersManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = deleteUserProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (UsersManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), deleteUserProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __UsersManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool UsersManager::deleteUserAsync(char * accessToken,
	std::string id, std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	
	void(* handler)(Error, void* ) , void* userData)
{
	return deleteUserHelper(accessToken,
	id, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret, 
	handler, userData, true);
}

bool UsersManager::deleteUserSync(char * accessToken,
	std::string id, std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	
	void(* handler)(Error, void* ) , void* userData)
{
	return deleteUserHelper(accessToken,
	id, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret, 
	handler, userData, false);
}

static bool getUserProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(UserObject, Error, void* )
	= reinterpret_cast<void(*)(UserObject, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	UserObject out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("UserObject")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "UserObject", "UserObject");
			json_node_free(pJson);

			if ("UserObject" == "std::string") {
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

static bool getUserHelper(char * accessToken,
	std::string id, std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	void(* handler)(UserObject, Error, void* )
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

	string url("/users/{id}");
	int pos;

	string s_id("{");
	s_id.append("id");
	s_id.append("}");
	pos = url.find(s_id);
	url.erase(pos, s_id.length());
	url.insert(pos, stringify(&id, "std::string"));

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
		NetClient::easycurl(UsersManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = getUserProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (UsersManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), getUserProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __UsersManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool UsersManager::getUserAsync(char * accessToken,
	std::string id, std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	void(* handler)(UserObject, Error, void* )
	, void* userData)
{
	return getUserHelper(accessToken,
	id, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret, 
	handler, userData, true);
}

bool UsersManager::getUserSync(char * accessToken,
	std::string id, std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	void(* handler)(UserObject, Error, void* )
	, void* userData)
{
	return getUserHelper(accessToken,
	id, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret, 
	handler, userData, false);
}

static bool getUserFieldsProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<FieldObject>, Error, void* )
	= reinterpret_cast<void(*)(std::list<FieldObject>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<FieldObject> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			FieldObject singlemodel;
			singlemodel.fromJson(singlenodestr);
			out.push_front(singlemodel);
			g_free(static_cast<gpointer>(singlenodestr));
			json_node_free(myJson);
		}
		json_array_unref (jsonarray);
		json_node_free(pJson);


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

static bool getUserFieldsHelper(char * accessToken,
	std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	void(* handler)(std::list<FieldObject>, Error, void* )
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

	string url("/users/fields");
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
		NetClient::easycurl(UsersManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = getUserFieldsProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (UsersManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), getUserFieldsProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __UsersManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool UsersManager::getUserFieldsAsync(char * accessToken,
	std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	void(* handler)(std::list<FieldObject>, Error, void* )
	, void* userData)
{
	return getUserFieldsHelper(accessToken,
	xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret, 
	handler, userData, true);
}

bool UsersManager::getUserFieldsSync(char * accessToken,
	std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	void(* handler)(std::list<FieldObject>, Error, void* )
	, void* userData)
{
	return getUserFieldsHelper(accessToken,
	xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret, 
	handler, userData, false);
}

static bool getUserGroupsProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<GroupName>, Error, void* )
	= reinterpret_cast<void(*)(std::list<GroupName>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<GroupName> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			GroupName singlemodel;
			singlemodel.fromJson(singlenodestr);
			out.push_front(singlemodel);
			g_free(static_cast<gpointer>(singlenodestr));
			json_node_free(myJson);
		}
		json_array_unref (jsonarray);
		json_node_free(pJson);


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

static bool getUserGroupsHelper(char * accessToken,
	std::string id, std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	void(* handler)(std::list<GroupName>, Error, void* )
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

	string url("/users/{id}/groups");
	int pos;

	string s_id("{");
	s_id.append("id");
	s_id.append("}");
	pos = url.find(s_id);
	url.erase(pos, s_id.length());
	url.insert(pos, stringify(&id, "std::string"));

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
		NetClient::easycurl(UsersManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = getUserGroupsProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (UsersManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), getUserGroupsProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __UsersManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool UsersManager::getUserGroupsAsync(char * accessToken,
	std::string id, std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	void(* handler)(std::list<GroupName>, Error, void* )
	, void* userData)
{
	return getUserGroupsHelper(accessToken,
	id, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret, 
	handler, userData, true);
}

bool UsersManager::getUserGroupsSync(char * accessToken,
	std::string id, std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	void(* handler)(std::list<GroupName>, Error, void* )
	, void* userData)
{
	return getUserGroupsHelper(accessToken,
	id, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret, 
	handler, userData, false);
}

static bool getUsersProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<UserObject>, Error, void* )
	= reinterpret_cast<void(*)(std::list<UserObject>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<UserObject> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			UserObject singlemodel;
			singlemodel.fromJson(singlenodestr);
			out.push_front(singlemodel);
			g_free(static_cast<gpointer>(singlenodestr));
			json_node_free(myJson);
		}
		json_array_unref (jsonarray);
		json_node_free(pJson);


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

static bool getUsersHelper(char * accessToken,
	std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, long long skip, long long limit, long long order, std::string where, 
	void(* handler)(std::list<UserObject>, Error, void* )
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
	

	itemAtq = stringify(&skip, "long long");
	queryParams.insert(pair<string, string>("skip", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("skip");
	}


	itemAtq = stringify(&limit, "long long");
	queryParams.insert(pair<string, string>("limit", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("limit");
	}


	itemAtq = stringify(&order, "long long");
	queryParams.insert(pair<string, string>("order", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("order");
	}


	itemAtq = stringify(&where, "std::string");
	queryParams.insert(pair<string, string>("where", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("where");
	}

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/users");
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
		NetClient::easycurl(UsersManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = getUsersProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (UsersManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), getUsersProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __UsersManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool UsersManager::getUsersAsync(char * accessToken,
	std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, long long skip, long long limit, long long order, std::string where, 
	void(* handler)(std::list<UserObject>, Error, void* )
	, void* userData)
{
	return getUsersHelper(accessToken,
	xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret, skip, limit, order, where, 
	handler, userData, true);
}

bool UsersManager::getUsersSync(char * accessToken,
	std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, long long skip, long long limit, long long order, std::string where, 
	void(* handler)(std::list<UserObject>, Error, void* )
	, void* userData)
{
	return getUsersHelper(accessToken,
	xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret, skip, limit, order, where, 
	handler, userData, false);
}

static bool loginUserProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(UserTokenObject, Error, void* )
	= reinterpret_cast<void(*)(UserTokenObject, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	UserTokenObject out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("UserTokenObject")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "UserTokenObject", "UserTokenObject");
			json_node_free(pJson);

			if ("UserTokenObject" == "std::string") {
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

static bool loginUserHelper(char * accessToken,
	UserCredentialsObject body, std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	void(* handler)(UserTokenObject, Error, void* )
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

	if (isprimitive("UserCredentialsObject")) {
		node = converttoJson(&body, "UserCredentialsObject", "");
	}
	
	char *jsonStr =  body.toJson();
	node = json_from_string(jsonStr, NULL);
	g_free(static_cast<gpointer>(jsonStr));
	

	char *jsonStr1 =  json_to_string(node, false);
	mBody.append(jsonStr1);
	g_free(static_cast<gpointer>(jsonStr1));

	string url("/users/login");
	int pos;


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
		NetClient::easycurl(UsersManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = loginUserProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (UsersManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), loginUserProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __UsersManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool UsersManager::loginUserAsync(char * accessToken,
	UserCredentialsObject body, std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	void(* handler)(UserTokenObject, Error, void* )
	, void* userData)
{
	return loginUserHelper(accessToken,
	body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret, 
	handler, userData, true);
}

bool UsersManager::loginUserSync(char * accessToken,
	UserCredentialsObject body, std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	void(* handler)(UserTokenObject, Error, void* )
	, void* userData)
{
	return loginUserHelper(accessToken,
	body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret, 
	handler, userData, false);
}

static bool logoutUserProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
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

static bool logoutUserHelper(char * accessToken,
	std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	
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

	string url("/users/logout");
	int pos;


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
		NetClient::easycurl(UsersManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = logoutUserProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (UsersManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), logoutUserProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __UsersManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool UsersManager::logoutUserAsync(char * accessToken,
	std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	
	void(* handler)(Error, void* ) , void* userData)
{
	return logoutUserHelper(accessToken,
	xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret, 
	handler, userData, true);
}

bool UsersManager::logoutUserSync(char * accessToken,
	std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	
	void(* handler)(Error, void* ) , void* userData)
{
	return logoutUserHelper(accessToken,
	xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret, 
	handler, userData, false);
}

static bool signupUserProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(UserSignUpResponseObject, Error, void* )
	= reinterpret_cast<void(*)(UserSignUpResponseObject, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	UserSignUpResponseObject out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("UserSignUpResponseObject")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "UserSignUpResponseObject", "UserSignUpResponseObject");
			json_node_free(pJson);

			if ("UserSignUpResponseObject" == "std::string") {
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

static bool signupUserHelper(char * accessToken,
	UserCredentialsObject body, std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	void(* handler)(UserSignUpResponseObject, Error, void* )
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

	if (isprimitive("UserCredentialsObject")) {
		node = converttoJson(&body, "UserCredentialsObject", "");
	}
	
	char *jsonStr =  body.toJson();
	node = json_from_string(jsonStr, NULL);
	g_free(static_cast<gpointer>(jsonStr));
	

	char *jsonStr1 =  json_to_string(node, false);
	mBody.append(jsonStr1);
	g_free(static_cast<gpointer>(jsonStr1));

	string url("/users/signup");
	int pos;


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
		NetClient::easycurl(UsersManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = signupUserProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (UsersManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), signupUserProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __UsersManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool UsersManager::signupUserAsync(char * accessToken,
	UserCredentialsObject body, std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	void(* handler)(UserSignUpResponseObject, Error, void* )
	, void* userData)
{
	return signupUserHelper(accessToken,
	body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret, 
	handler, userData, true);
}

bool UsersManager::signupUserSync(char * accessToken,
	UserCredentialsObject body, std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	void(* handler)(UserSignUpResponseObject, Error, void* )
	, void* userData)
{
	return signupUserHelper(accessToken,
	body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret, 
	handler, userData, false);
}

static bool updateUserProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(UpdatedObject, Error, void* )
	= reinterpret_cast<void(*)(UpdatedObject, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	UpdatedObject out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("UpdatedObject")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "UpdatedObject", "UpdatedObject");
			json_node_free(pJson);

			if ("UpdatedObject" == "std::string") {
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

static bool updateUserHelper(char * accessToken,
	std::string id, UpdateObject body, std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	void(* handler)(UpdatedObject, Error, void* )
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

	if (isprimitive("UpdateObject")) {
		node = converttoJson(&body, "UpdateObject", "");
	}
	
	char *jsonStr =  body.toJson();
	node = json_from_string(jsonStr, NULL);
	g_free(static_cast<gpointer>(jsonStr));
	

	char *jsonStr1 =  json_to_string(node, false);
	mBody.append(jsonStr1);
	g_free(static_cast<gpointer>(jsonStr1));

	string url("/users/{id}");
	int pos;

	string s_id("{");
	s_id.append("id");
	s_id.append("}");
	pos = url.find(s_id);
	url.erase(pos, s_id.length());
	url.insert(pos, stringify(&id, "std::string"));

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
		NetClient::easycurl(UsersManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = updateUserProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (UsersManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), updateUserProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __UsersManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool UsersManager::updateUserAsync(char * accessToken,
	std::string id, UpdateObject body, std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	void(* handler)(UpdatedObject, Error, void* )
	, void* userData)
{
	return updateUserHelper(accessToken,
	id, body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret, 
	handler, userData, true);
}

bool UsersManager::updateUserSync(char * accessToken,
	std::string id, UpdateObject body, std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	void(* handler)(UpdatedObject, Error, void* )
	, void* userData)
{
	return updateUserHelper(accessToken,
	id, body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret, 
	handler, userData, false);
}

