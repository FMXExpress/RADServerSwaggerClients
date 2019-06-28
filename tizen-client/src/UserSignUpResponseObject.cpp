#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "UserSignUpResponseObject.h"

using namespace std;
using namespace Tizen::ArtikCloud;

UserSignUpResponseObject::UserSignUpResponseObject()
{
	//__init();
}

UserSignUpResponseObject::~UserSignUpResponseObject()
{
	//__cleanup();
}

void
UserSignUpResponseObject::__init()
{
	//
	//
	//_id = std::string();
	//
	//
	//sessionToken = std::string();
	//
}

void
UserSignUpResponseObject::__cleanup()
{
	//if(_id != NULL) {
	//
	//delete _id;
	//_id = NULL;
	//}
	//if(sessionToken != NULL) {
	//
	//delete sessionToken;
	//sessionToken = NULL;
	//}
	//
}

void
UserSignUpResponseObject::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *_idKey = "_id";
	node = json_object_get_member(pJsonObject, _idKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&_id, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *sessionTokenKey = "sessionToken";
	node = json_object_get_member(pJsonObject, sessionTokenKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&sessionToken, node, "std::string", "");
		} else {
			
		}
	}
}

UserSignUpResponseObject::UserSignUpResponseObject(char* json)
{
	this->fromJson(json);
}

char*
UserSignUpResponseObject::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("std::string")) {
		std::string obj = getId();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *_idKey = "_id";
	json_object_set_member(pJsonObject, _idKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getSessionToken();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *sessionTokenKey = "sessionToken";
	json_object_set_member(pJsonObject, sessionTokenKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
UserSignUpResponseObject::getId()
{
	return _id;
}

void
UserSignUpResponseObject::setId(std::string  _id)
{
	this->_id = _id;
}

std::string
UserSignUpResponseObject::getSessionToken()
{
	return sessionToken;
}

void
UserSignUpResponseObject::setSessionToken(std::string  sessionToken)
{
	this->sessionToken = sessionToken;
}


