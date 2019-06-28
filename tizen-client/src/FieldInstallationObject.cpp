#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "FieldInstallationObject.h"

using namespace std;
using namespace Tizen::ArtikCloud;

FieldInstallationObject::FieldInstallationObject()
{
	//__init();
}

FieldInstallationObject::~FieldInstallationObject()
{
	//__cleanup();
}

void
FieldInstallationObject::__init()
{
	//
	//
	//name = std::string();
	//
	//new std::list()std::list> fields;
	//
	//
	//
	//custom = bool(false);
	//
}

void
FieldInstallationObject::__cleanup()
{
	//if(name != NULL) {
	//
	//delete name;
	//name = NULL;
	//}
	//if(fields != NULL) {
	//fields.RemoveAll(true);
	//delete fields;
	//fields = NULL;
	//}
	//if(custom != NULL) {
	//
	//delete custom;
	//custom = NULL;
	//}
	//
}

void
FieldInstallationObject::fromJson(char* jsonStr)
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
	const gchar *fieldsKey = "fields";
	node = json_object_get_member(pJsonObject, fieldsKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<FieldObject_fields> new_list;
			FieldObject_fields inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("FieldObject_fields")) {
					jsonToValue(&inst, temp_json, "FieldObject_fields", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			fields = new_list;
		}
		
	}
	const gchar *customKey = "custom";
	node = json_object_get_member(pJsonObject, customKey);
	if (node !=NULL) {
	

		if (isprimitive("bool")) {
			jsonToValue(&custom, node, "bool", "");
		} else {
			
		}
	}
}

FieldInstallationObject::FieldInstallationObject(char* json)
{
	this->fromJson(json);
}

char*
FieldInstallationObject::toJson()
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
	if (isprimitive("FieldObject_fields")) {
		list<FieldObject_fields> new_list = static_cast<list <FieldObject_fields> > (getFields());
		node = converttoJson(&new_list, "FieldObject_fields", "array");
	} else {
		node = json_node_alloc();
		list<FieldObject_fields> new_list = static_cast<list <FieldObject_fields> > (getFields());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<FieldObject_fields>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			FieldObject_fields obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *fieldsKey = "fields";
	json_object_set_member(pJsonObject, fieldsKey, node);
	if (isprimitive("bool")) {
		bool obj = getCustom();
		node = converttoJson(&obj, "bool", "");
	}
	else {
		
	}
	const gchar *customKey = "custom";
	json_object_set_member(pJsonObject, customKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
FieldInstallationObject::getName()
{
	return name;
}

void
FieldInstallationObject::setName(std::string  name)
{
	this->name = name;
}

std::list<FieldObject_fields>
FieldInstallationObject::getFields()
{
	return fields;
}

void
FieldInstallationObject::setFields(std::list <FieldObject_fields> fields)
{
	this->fields = fields;
}

bool
FieldInstallationObject::getCustom()
{
	return custom;
}

void
FieldInstallationObject::setCustom(bool  custom)
{
	this->custom = custom;
}


