#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "VersionObject.h"

using namespace std;
using namespace Tizen::ArtikCloud;

VersionObject::VersionObject()
{
	//__init();
}

VersionObject::~VersionObject()
{
	//__cleanup();
}

void
VersionObject::__init()
{
	//
	//
	//version = std::string();
	//
	//
	//server = std::string();
	//
}

void
VersionObject::__cleanup()
{
	//if(version != NULL) {
	//
	//delete version;
	//version = NULL;
	//}
	//if(server != NULL) {
	//
	//delete server;
	//server = NULL;
	//}
	//
}

void
VersionObject::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *versionKey = "version";
	node = json_object_get_member(pJsonObject, versionKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&version, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *serverKey = "server";
	node = json_object_get_member(pJsonObject, serverKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&server, node, "std::string", "");
		} else {
			
		}
	}
}

VersionObject::VersionObject(char* json)
{
	this->fromJson(json);
}

char*
VersionObject::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("std::string")) {
		std::string obj = getVersion();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *versionKey = "version";
	json_object_set_member(pJsonObject, versionKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getServer();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *serverKey = "server";
	json_object_set_member(pJsonObject, serverKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
VersionObject::getVersion()
{
	return version;
}

void
VersionObject::setVersion(std::string  version)
{
	this->version = version;
}

std::string
VersionObject::getServer()
{
	return server;
}

void
VersionObject::setServer(std::string  server)
{
	this->server = server;
}


