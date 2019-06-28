#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "UserObject.h"

using namespace std;
using namespace Tizen::ArtikCloud;

UserObject::UserObject()
{
	//__init();
}

UserObject::~UserObject()
{
	//__cleanup();
}

void
UserObject::__init()
{
	//
	//
	//id = std::string();
	//
	//
	//username = std::string();
	//
	//
	//_meta = new _metaObject();
	//
}

void
UserObject::__cleanup()
{
	//if(id != NULL) {
	//
	//delete id;
	//id = NULL;
	//}
	//if(username != NULL) {
	//
	//delete username;
	//username = NULL;
	//}
	//if(_meta != NULL) {
	//
	//delete _meta;
	//_meta = NULL;
	//}
	//
}

void
UserObject::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *idKey = "id";
	node = json_object_get_member(pJsonObject, idKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&id, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *usernameKey = "username";
	node = json_object_get_member(pJsonObject, usernameKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&username, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *_metaKey = "_meta";
	node = json_object_get_member(pJsonObject, _metaKey);
	if (node !=NULL) {
	

		if (isprimitive("_metaObject")) {
			jsonToValue(&_meta, node, "_metaObject", "_metaObject");
		} else {
			
			_metaObject* obj = static_cast<_metaObject*> (&_meta);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

UserObject::UserObject(char* json)
{
	this->fromJson(json);
}

char*
UserObject::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("std::string")) {
		std::string obj = getId();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *idKey = "id";
	json_object_set_member(pJsonObject, idKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getUsername();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *usernameKey = "username";
	json_object_set_member(pJsonObject, usernameKey, node);
	if (isprimitive("_metaObject")) {
		_metaObject obj = getMeta();
		node = converttoJson(&obj, "_metaObject", "");
	}
	else {
		
		_metaObject obj = static_cast<_metaObject> (getMeta());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *_metaKey = "_meta";
	json_object_set_member(pJsonObject, _metaKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
UserObject::getId()
{
	return id;
}

void
UserObject::setId(std::string  id)
{
	this->id = id;
}

std::string
UserObject::getUsername()
{
	return username;
}

void
UserObject::setUsername(std::string  username)
{
	this->username = username;
}

_metaObject
UserObject::getMeta()
{
	return _meta;
}

void
UserObject::setMeta(_metaObject  _meta)
{
	this->_meta = _meta;
}


