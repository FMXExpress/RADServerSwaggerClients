#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "UpdateGroupObject.h"

using namespace std;
using namespace Tizen::ArtikCloud;

UpdateGroupObject::UpdateGroupObject()
{
	//__init();
}

UpdateGroupObject::~UpdateGroupObject()
{
	//__cleanup();
}

void
UpdateGroupObject::__init()
{
	//
	//
	//fieldName = std::string();
	//
	//new std::list()std::list> users;
	//
	//
}

void
UpdateGroupObject::__cleanup()
{
	//if(fieldName != NULL) {
	//
	//delete fieldName;
	//fieldName = NULL;
	//}
	//if(users != NULL) {
	//users.RemoveAll(true);
	//delete users;
	//users = NULL;
	//}
	//
}

void
UpdateGroupObject::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *fieldNameKey = "fieldName";
	node = json_object_get_member(pJsonObject, fieldNameKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&fieldName, node, "std::string", "");
		} else {
			
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

UpdateGroupObject::UpdateGroupObject(char* json)
{
	this->fromJson(json);
}

char*
UpdateGroupObject::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("std::string")) {
		std::string obj = getFieldName();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *fieldNameKey = "fieldName";
	json_object_set_member(pJsonObject, fieldNameKey, node);
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
UpdateGroupObject::getFieldName()
{
	return fieldName;
}

void
UpdateGroupObject::setFieldName(std::string  fieldName)
{
	this->fieldName = fieldName;
}

std::list<std::string>
UpdateGroupObject::getUsers()
{
	return users;
}

void
UpdateGroupObject::setUsers(std::list <std::string> users)
{
	this->users = users;
}


