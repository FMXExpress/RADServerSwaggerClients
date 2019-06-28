#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "EdgeModuleUpdateObject.h"

using namespace std;
using namespace Tizen::ArtikCloud;

EdgeModuleUpdateObject::EdgeModuleUpdateObject()
{
	//__init();
}

EdgeModuleUpdateObject::~EdgeModuleUpdateObject()
{
	//__cleanup();
}

void
EdgeModuleUpdateObject::__init()
{
	//
	//
	//modulename = std::string();
	//
	//
	//protocol = std::string();
	//
	//
	//protocolprops = std::string();
	//
}

void
EdgeModuleUpdateObject::__cleanup()
{
	//if(modulename != NULL) {
	//
	//delete modulename;
	//modulename = NULL;
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
	//
}

void
EdgeModuleUpdateObject::fromJson(char* jsonStr)
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
}

EdgeModuleUpdateObject::EdgeModuleUpdateObject(char* json)
{
	this->fromJson(json);
}

char*
EdgeModuleUpdateObject::toJson()
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
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
EdgeModuleUpdateObject::getModulename()
{
	return modulename;
}

void
EdgeModuleUpdateObject::setModulename(std::string  modulename)
{
	this->modulename = modulename;
}

std::string
EdgeModuleUpdateObject::getProtocol()
{
	return protocol;
}

void
EdgeModuleUpdateObject::setProtocol(std::string  protocol)
{
	this->protocol = protocol;
}

std::string
EdgeModuleUpdateObject::getProtocolprops()
{
	return protocolprops;
}

void
EdgeModuleUpdateObject::setProtocolprops(std::string  protocolprops)
{
	this->protocolprops = protocolprops;
}


