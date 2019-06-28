#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "GroupObject.h"

using namespace std;
using namespace Tizen::ArtikCloud;

GroupObject::GroupObject()
{
	//__init();
}

GroupObject::~GroupObject()
{
	//__cleanup();
}

void
GroupObject::__init()
{
	//
	//
	//name = std::string();
	//
	//
	//_meta = new _metaGroupObject();
	//
	//new std::list()std::list> users;
	//
	//
}

void
GroupObject::__cleanup()
{
	//if(name != NULL) {
	//
	//delete name;
	//name = NULL;
	//}
	//if(_meta != NULL) {
	//
	//delete _meta;
	//_meta = NULL;
	//}
	//if(users != NULL) {
	//users.RemoveAll(true);
	//delete users;
	//users = NULL;
	//}
	//
}

void
GroupObject::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *nameKey = "name";
	node = json_object_get_member(pJsonObject, nameKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&name, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *_metaKey = "_meta";
	node = json_object_get_member(pJsonObject, _metaKey);
	if (node !=NULL) {
	

		if (isprimitive("_metaGroupObject")) {
			jsonToValue(&_meta, node, "_metaGroupObject", "_metaGroupObject");
		} else {
			
			_metaGroupObject* obj = static_cast<_metaGroupObject*> (&_meta);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *usersKey = "users";
	node = json_object_get_member(pJsonObject, usersKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<std::string> new_list;
			std::string inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("std::string")) {
					jsonToValue(&inst, temp_json, "std::string", "");
				} else {
					
				}
				new_list.push_back(inst);
			}
			users = new_list;
		}
		
	}
}

GroupObject::GroupObject(char* json)
{
	this->fromJson(json);
}

char*
GroupObject::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("std::string")) {
		std::string obj = getName();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *nameKey = "name";
	json_object_set_member(pJsonObject, nameKey, node);
	if (isprimitive("_metaGroupObject")) {
		_metaGroupObject obj = getMeta();
		node = converttoJson(&obj, "_metaGroupObject", "");
	}
	else {
		
		_metaGroupObject obj = static_cast<_metaGroupObject> (getMeta());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *_metaKey = "_meta";
	json_object_set_member(pJsonObject, _metaKey, node);
	if (isprimitive("std::string")) {
		list<std::string> new_list = static_cast<list <std::string> > (getUsers());
		node = converttoJson(&new_list, "std::string", "array");
	} else {
		node = json_node_alloc();
		list<std::string> new_list = static_cast<list <std::string> > (getUsers());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
	}


	
	const gchar *usersKey = "users";
	json_object_set_member(pJsonObject, usersKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
GroupObject::getName()
{
	return name;
}

void
GroupObject::setName(std::string  name)
{
	this->name = name;
}

_metaGroupObject
GroupObject::getMeta()
{
	return _meta;
}

void
GroupObject::setMeta(_metaGroupObject  _meta)
{
	this->_meta = _meta;
}

std::list<std::string>
GroupObject::getUsers()
{
	return users;
}

void
GroupObject::setUsers(std::list <std::string> users)
{
	this->users = users;
}


