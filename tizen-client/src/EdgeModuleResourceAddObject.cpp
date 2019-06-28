#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "EdgeModuleResourceAddObject.h"

using namespace std;
using namespace Tizen::ArtikCloud;

EdgeModuleResourceAddObject::EdgeModuleResourceAddObject()
{
	//__init();
}

EdgeModuleResourceAddObject::~EdgeModuleResourceAddObject()
{
	//__cleanup();
}

void
EdgeModuleResourceAddObject::__init()
{
	//
	//
	//resourcename = std::string();
	//
}

void
EdgeModuleResourceAddObject::__cleanup()
{
	//if(resourcename != NULL) {
	//
	//delete resourcename;
	//resourcename = NULL;
	//}
	//
}

void
EdgeModuleResourceAddObject::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *resourcenameKey = "resourcename";
	node = json_object_get_member(pJsonObject, resourcenameKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&resourcename, node, "std::string", "");
		} else {
			
		}
	}
}

EdgeModuleResourceAddObject::EdgeModuleResourceAddObject(char* json)
{
	this->fromJson(json);
}

char*
EdgeModuleResourceAddObject::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("std::string")) {
		std::string obj = getResourcename();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *resourcenameKey = "resourcename";
	json_object_set_member(pJsonObject, resourcenameKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
EdgeModuleResourceAddObject::getResourcename()
{
	return resourcename;
}

void
EdgeModuleResourceAddObject::setResourcename(std::string  resourcename)
{
	this->resourcename = resourcename;
}


