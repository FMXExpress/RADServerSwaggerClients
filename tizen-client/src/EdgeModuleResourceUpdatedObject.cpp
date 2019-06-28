#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "EdgeModuleResourceUpdatedObject.h"

using namespace std;
using namespace Tizen::ArtikCloud;

EdgeModuleResourceUpdatedObject::EdgeModuleResourceUpdatedObject()
{
	//__init();
}

EdgeModuleResourceUpdatedObject::~EdgeModuleResourceUpdatedObject()
{
	//__cleanup();
}

void
EdgeModuleResourceUpdatedObject::__init()
{
	//
	//
	//updated = std::string();
	//
}

void
EdgeModuleResourceUpdatedObject::__cleanup()
{
	//if(updated != NULL) {
	//
	//delete updated;
	//updated = NULL;
	//}
	//
}

void
EdgeModuleResourceUpdatedObject::fromJson(char* jsonStr)
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

EdgeModuleResourceUpdatedObject::EdgeModuleResourceUpdatedObject(char* json)
{
	this->fromJson(json);
}

char*
EdgeModuleResourceUpdatedObject::toJson()
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
EdgeModuleResourceUpdatedObject::getUpdated()
{
	return updated;
}

void
EdgeModuleResourceUpdatedObject::setUpdated(std::string  updated)
{
	this->updated = updated;
}


