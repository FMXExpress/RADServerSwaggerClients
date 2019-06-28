#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "UpdatedGroupObject.h"

using namespace std;
using namespace Tizen::ArtikCloud;

UpdatedGroupObject::UpdatedGroupObject()
{
	//__init();
}

UpdatedGroupObject::~UpdatedGroupObject()
{
	//__cleanup();
}

void
UpdatedGroupObject::__init()
{
	//
	//
	//updated = std::string();
	//
}

void
UpdatedGroupObject::__cleanup()
{
	//if(updated != NULL) {
	//
	//delete updated;
	//updated = NULL;
	//}
	//
}

void
UpdatedGroupObject::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *updatedKey = "updated";
	node = json_object_get_member(pJsonObject, updatedKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&updated, node, "std::string", "");
		} else {
			
		}
	}
}

UpdatedGroupObject::UpdatedGroupObject(char* json)
{
	this->fromJson(json);
}

char*
UpdatedGroupObject::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("std::string")) {
		std::string obj = getUpdated();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *updatedKey = "updated";
	json_object_set_member(pJsonObject, updatedKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
UpdatedGroupObject::getUpdated()
{
	return updated;
}

void
UpdatedGroupObject::setUpdated(std::string  updated)
{
	this->updated = updated;
}


