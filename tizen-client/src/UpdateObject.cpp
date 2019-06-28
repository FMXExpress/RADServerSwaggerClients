#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "UpdateObject.h"

using namespace std;
using namespace Tizen::ArtikCloud;

UpdateObject::UpdateObject()
{
	//__init();
}

UpdateObject::~UpdateObject()
{
	//__cleanup();
}

void
UpdateObject::__init()
{
	//
	//
	//fieldName = std::string();
	//
}

void
UpdateObject::__cleanup()
{
	//if(fieldName != NULL) {
	//
	//delete fieldName;
	//fieldName = NULL;
	//}
	//
}

void
UpdateObject::fromJson(char* jsonStr)
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
}

UpdateObject::UpdateObject(char* json)
{
	this->fromJson(json);
}

char*
UpdateObject::toJson()
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
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
UpdateObject::getFieldName()
{
	return fieldName;
}

void
UpdateObject::setFieldName(std::string  fieldName)
{
	this->fieldName = fieldName;
}


