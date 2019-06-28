#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "InstallationAddObject.h"

using namespace std;
using namespace Tizen::ArtikCloud;

InstallationAddObject::InstallationAddObject()
{
	//__init();
}

InstallationAddObject::~InstallationAddObject()
{
	//__cleanup();
}

void
InstallationAddObject::__init()
{
	//
	//
	//deviceToken = std::string();
	//
	//
	//deviceType = std::string();
	//
	//new std::list()std::list> channels;
	//
	//
}

void
InstallationAddObject::__cleanup()
{
	//if(deviceToken != NULL) {
	//
	//delete deviceToken;
	//deviceToken = NULL;
	//}
	//if(deviceType != NULL) {
	//
	//delete deviceType;
	//deviceType = NULL;
	//}
	//if(channels != NULL) {
	//channels.RemoveAll(true);
	//delete channels;
	//channels = NULL;
	//}
	//
}

void
InstallationAddObject::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *deviceTokenKey = "deviceToken";
	node = json_object_get_member(pJsonObject, deviceTokenKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&deviceToken, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *deviceTypeKey = "deviceType";
	node = json_object_get_member(pJsonObject, deviceTypeKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&deviceType, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *channelsKey = "channels";
	node = json_object_get_member(pJsonObject, channelsKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<std::string> new_list;
			std::string inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("std::string")) {
					jsonToValue(&inst, temp_json, "std::string", "");
				} else {
					
				}
				new_list.push_back(inst);
			}
			channels = new_list;
		}
		
	}
}

InstallationAddObject::InstallationAddObject(char* json)
{
	this->fromJson(json);
}

char*
InstallationAddObject::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("std::string")) {
		std::string obj = getDeviceToken();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *deviceTokenKey = "deviceToken";
	json_object_set_member(pJsonObject, deviceTokenKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getDeviceType();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *deviceTypeKey = "deviceType";
	json_object_set_member(pJsonObject, deviceTypeKey, node);
	if (isprimitive("std::string")) {
		list<std::string> new_list = static_cast<list <std::string> > (getChannels());
		node = converttoJson(&new_list, "std::string", "array");
	} else {
		node = json_node_alloc();
		list<std::string> new_list = static_cast<list <std::string> > (getChannels());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
	}


	
	const gchar *channelsKey = "channels";
	json_object_set_member(pJsonObject, channelsKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
InstallationAddObject::getDeviceToken()
{
	return deviceToken;
}

void
InstallationAddObject::setDeviceToken(std::string  deviceToken)
{
	this->deviceToken = deviceToken;
}

std::string
InstallationAddObject::getDeviceType()
{
	return deviceType;
}

void
InstallationAddObject::setDeviceType(std::string  deviceType)
{
	this->deviceType = deviceType;
}

std::list<std::string>
InstallationAddObject::getChannels()
{
	return channels;
}

void
InstallationAddObject::setChannels(std::list <std::string> channels)
{
	this->channels = channels;
}


