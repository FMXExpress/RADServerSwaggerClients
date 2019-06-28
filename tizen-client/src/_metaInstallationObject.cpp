#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "_metaInstallationObject.h"

using namespace std;
using namespace Tizen::ArtikCloud;

_metaInstallationObject::_metaInstallationObject()
{
	//__init();
}

_metaInstallationObject::~_metaInstallationObject()
{
	//__cleanup();
}

void
_metaInstallationObject::__init()
{
	//
	//
	//creator = std::string();
	//
	//
	//created = std::string();
	//
	//
	//updated = std::string();
	//
}

void
_metaInstallationObject::__cleanup()
{
	//if(creator != NULL) {
	//
	//delete creator;
	//creator = NULL;
	//}
	//if(created != NULL) {
	//
	//delete created;
	//created = NULL;
	//}
	//if(updated != NULL) {
	//
	//delete updated;
	//updated = NULL;
	//}
	//
}

void
_metaInstallationObject::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *creatorKey = "creator";
	node = json_object_get_member(pJsonObject, creatorKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&creator, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *createdKey = "created";
	node = json_object_get_member(pJsonObject, createdKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&created, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *updatedKey = "updated";
	node = json_object_get_member(pJsonObject, updatedKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&updated, node, "std::string", "");
		} else {
			
		}
	}
}

_metaInstallationObject::_metaInstallationObject(char* json)
{
	this->fromJson(json);
}

char*
_metaInstallationObject::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("std::string")) {
		std::string obj = getCreator();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *creatorKey = "creator";
	json_object_set_member(pJsonObject, creatorKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getCreated();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *createdKey = "created";
	json_object_set_member(pJsonObject, createdKey, node);
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
_metaInstallationObject::getCreator()
{
	return creator;
}

void
_metaInstallationObject::setCreator(std::string  creator)
{
	this->creator = creator;
}

std::string
_metaInstallationObject::getCreated()
{
	return created;
}

void
_metaInstallationObject::setCreated(std::string  created)
{
	this->created = created;
}

std::string
_metaInstallationObject::getUpdated()
{
	return updated;
}

void
_metaInstallationObject::setUpdated(std::string  updated)
{
	this->updated = updated;
}


