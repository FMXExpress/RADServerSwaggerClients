#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "EdgeModuleAddedObject.h"

using namespace std;
using namespace Tizen::ArtikCloud;

EdgeModuleAddedObject::EdgeModuleAddedObject()
{
	//__init();
}

EdgeModuleAddedObject::~EdgeModuleAddedObject()
{
	//__cleanup();
}

void
EdgeModuleAddedObject::__init()
{
	//
	//
	//_id = std::string();
	//
	//
	//modulename = std::string();
	//
}

void
EdgeModuleAddedObject::__cleanup()
{
	//if(_id != NULL) {
	//
	//delete _id;
	//_id = NULL;
	//}
	//if(modulename != NULL) {
	//
	//delete modulename;
	//modulename = NULL;
	//}
	//
}

void
EdgeModuleAddedObject::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *_idKey = "_id";
	node = json_object_get_member(pJsonObject, _idKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&_id, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *modulenameKey = "modulename";
	node = json_object_get_member(pJsonObject, modulenameKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&modulename, node, "std::string", "");
		} else {
			
		}
	}
}

EdgeModuleAddedObject::EdgeModuleAddedObject(char* json)
{
	this->fromJson(json);
}

char*
EdgeModuleAddedObject::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("std::string")) {
		std::string obj = getId();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *_idKey = "_id";
	json_object_set_member(pJsonObject, _idKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getModulename();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *modulenameKey = "modulename";
	json_object_set_member(pJsonObject, modulenameKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
EdgeModuleAddedObject::getId()
{
	return _id;
}

void
EdgeModuleAddedObject::setId(std::string  _id)
{
	this->_id = _id;
}

std::string
EdgeModuleAddedObject::getModulename()
{
	return modulename;
}

void
EdgeModuleAddedObject::setModulename(std::string  modulename)
{
	this->modulename = modulename;
}


