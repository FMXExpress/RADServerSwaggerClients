#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "_metaObject.h"

using namespace std;
using namespace Tizen::ArtikCloud;

_metaObject::_metaObject()
{
	//__init();
}

_metaObject::~_metaObject()
{
	//__cleanup();
}

void
_metaObject::__init()
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
_metaObject::__cleanup()
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
_metaObject::fromJson(char* jsonStr)
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

_metaObject::_metaObject(char* json)
{
	this->fromJson(json);
}

char*
_metaObject::toJson()
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
_metaObject::getCreator()
{
	return creator;
}

void
_metaObject::setCreator(std::string  creator)
{
	this->creator = creator;
}

std::string
_metaObject::getCreated()
{
	return created;
}

void
_metaObject::setCreated(std::string  created)
{
	this->created = created;
}

std::string
_metaObject::getUpdated()
{
	return updated;
}

void
_metaObject::setUpdated(std::string  updated)
{
	this->updated = updated;
}


