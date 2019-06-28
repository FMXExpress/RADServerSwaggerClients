#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "EdgeModuleResourceObject.h"

using namespace std;
using namespace Tizen::ArtikCloud;

EdgeModuleResourceObject::EdgeModuleResourceObject()
{
	//__init();
}

EdgeModuleResourceObject::~EdgeModuleResourceObject()
{
	//__cleanup();
}

void
EdgeModuleResourceObject::__init()
{
	//
	//
	//resourcename = std::string();
	//
	//
	//modulename = std::string();
	//
	//
	//moduleid = std::string();
	//
	//
	//_meta = new _metaEdgeModuleObject();
	//
}

void
EdgeModuleResourceObject::__cleanup()
{
	//if(resourcename != NULL) {
	//
	//delete resourcename;
	//resourcename = NULL;
	//}
	//if(modulename != NULL) {
	//
	//delete modulename;
	//modulename = NULL;
	//}
	//if(moduleid != NULL) {
	//
	//delete moduleid;
	//moduleid = NULL;
	//}
	//if(_meta != NULL) {
	//
	//delete _meta;
	//_meta = NULL;
	//}
	//
}

void
EdgeModuleResourceObject::fromJson(char* jsonStr)
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
	const gchar *modulenameKey = "modulename";
	node = json_object_get_member(pJsonObject, modulenameKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&modulename, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *moduleidKey = "moduleid";
	node = json_object_get_member(pJsonObject, moduleidKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&moduleid, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *_metaKey = "_meta";
	node = json_object_get_member(pJsonObject, _metaKey);
	if (node !=NULL) {
	

		if (isprimitive("_metaEdgeModuleObject")) {
			jsonToValue(&_meta, node, "_metaEdgeModuleObject", "_metaEdgeModuleObject");
		} else {
			
			_metaEdgeModuleObject* obj = static_cast<_metaEdgeModuleObject*> (&_meta);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

EdgeModuleResourceObject::EdgeModuleResourceObject(char* json)
{
	this->fromJson(json);
}

char*
EdgeModuleResourceObject::toJson()
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
	if (isprimitive("std::string")) {
		std::string obj = getModulename();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *modulenameKey = "modulename";
	json_object_set_member(pJsonObject, modulenameKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getModuleid();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *moduleidKey = "moduleid";
	json_object_set_member(pJsonObject, moduleidKey, node);
	if (isprimitive("_metaEdgeModuleObject")) {
		_metaEdgeModuleObject obj = getMeta();
		node = converttoJson(&obj, "_metaEdgeModuleObject", "");
	}
	else {
		
		_metaEdgeModuleObject obj = static_cast<_metaEdgeModuleObject> (getMeta());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *_metaKey = "_meta";
	json_object_set_member(pJsonObject, _metaKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
EdgeModuleResourceObject::getResourcename()
{
	return resourcename;
}

void
EdgeModuleResourceObject::setResourcename(std::string  resourcename)
{
	this->resourcename = resourcename;
}

std::string
EdgeModuleResourceObject::getModulename()
{
	return modulename;
}

void
EdgeModuleResourceObject::setModulename(std::string  modulename)
{
	this->modulename = modulename;
}

std::string
EdgeModuleResourceObject::getModuleid()
{
	return moduleid;
}

void
EdgeModuleResourceObject::setModuleid(std::string  moduleid)
{
	this->moduleid = moduleid;
}

_metaEdgeModuleObject
EdgeModuleResourceObject::getMeta()
{
	return _meta;
}

void
EdgeModuleResourceObject::setMeta(_metaEdgeModuleObject  _meta)
{
	this->_meta = _meta;
}


