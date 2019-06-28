#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "EdgeModuleObject.h"

using namespace std;
using namespace Tizen::ArtikCloud;

EdgeModuleObject::EdgeModuleObject()
{
	//__init();
}

EdgeModuleObject::~EdgeModuleObject()
{
	//__cleanup();
}

void
EdgeModuleObject::__init()
{
	//
	//
	//modulename = std::string();
	//
	//
	//_id = std::string();
	//
	//
	//protocol = std::string();
	//
	//
	//protocolprops = std::string();
	//
	//
	//_meta = new _metaEdgeModuleObject();
	//
}

void
EdgeModuleObject::__cleanup()
{
	//if(modulename != NULL) {
	//
	//delete modulename;
	//modulename = NULL;
	//}
	//if(_id != NULL) {
	//
	//delete _id;
	//_id = NULL;
	//}
	//if(protocol != NULL) {
	//
	//delete protocol;
	//protocol = NULL;
	//}
	//if(protocolprops != NULL) {
	//
	//delete protocolprops;
	//protocolprops = NULL;
	//}
	//if(_meta != NULL) {
	//
	//delete _meta;
	//_meta = NULL;
	//}
	//
}

void
EdgeModuleObject::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *modulenameKey = "modulename";
	node = json_object_get_member(pJsonObject, modulenameKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&modulename, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *_idKey = "_id";
	node = json_object_get_member(pJsonObject, _idKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&_id, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *protocolKey = "protocol";
	node = json_object_get_member(pJsonObject, protocolKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&protocol, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *protocolpropsKey = "protocolprops";
	node = json_object_get_member(pJsonObject, protocolpropsKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&protocolprops, node, "std::string", "");
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

EdgeModuleObject::EdgeModuleObject(char* json)
{
	this->fromJson(json);
}

char*
EdgeModuleObject::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("std::string")) {
		std::string obj = getModulename();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *modulenameKey = "modulename";
	json_object_set_member(pJsonObject, modulenameKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getId();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *_idKey = "_id";
	json_object_set_member(pJsonObject, _idKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getProtocol();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *protocolKey = "protocol";
	json_object_set_member(pJsonObject, protocolKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getProtocolprops();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *protocolpropsKey = "protocolprops";
	json_object_set_member(pJsonObject, protocolpropsKey, node);
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
EdgeModuleObject::getModulename()
{
	return modulename;
}

void
EdgeModuleObject::setModulename(std::string  modulename)
{
	this->modulename = modulename;
}

std::string
EdgeModuleObject::getId()
{
	return _id;
}

void
EdgeModuleObject::setId(std::string  _id)
{
	this->_id = _id;
}

std::string
EdgeModuleObject::getProtocol()
{
	return protocol;
}

void
EdgeModuleObject::setProtocol(std::string  protocol)
{
	this->protocol = protocol;
}

std::string
EdgeModuleObject::getProtocolprops()
{
	return protocolprops;
}

void
EdgeModuleObject::setProtocolprops(std::string  protocolprops)
{
	this->protocolprops = protocolprops;
}

_metaEdgeModuleObject
EdgeModuleObject::getMeta()
{
	return _meta;
}

void
EdgeModuleObject::setMeta(_metaEdgeModuleObject  _meta)
{
	this->_meta = _meta;
}


