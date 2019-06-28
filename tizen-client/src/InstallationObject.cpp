#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "InstallationObject.h"

using namespace std;
using namespace Tizen::ArtikCloud;

InstallationObject::InstallationObject()
{
	//__init();
}

InstallationObject::~InstallationObject()
{
	//__cleanup();
}

void
InstallationObject::__init()
{
	//
	//
	//_id = std::string();
	//
	//
	//deviceToken = std::string();
	//
	//
	//deviceType = std::string();
	//
	//
	//_meta = new _metaInstallationObject();
	//
	//new std::list()std::list> channels;
	//
	//
}

void
InstallationObject::__cleanup()
{
	//if(_id != NULL) {
	//
	//delete _id;
	//_id = NULL;
	//}
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
	//if(_meta != NULL) {
	//
	//delete _meta;
	//_meta = NULL;
	//}
	//if(channels != NULL) {
	//channels.RemoveAll(true);
	//delete channels;
	//channels = NULL;
	//}
	//
}

void
InstallationObject::fromJson(char* jsonStr)
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
	const gchar *_metaKey = "_meta";
	node = json_object_get_member(pJsonObject, _metaKey);
	if (node !=NULL) {
	

		if (isprimitive("_metaInstallationObject")) {
			jsonToValue(&_meta, node, "_metaInstallationObject", "_metaInstallationObject");
		} else {
			
			_metaInstallationObject* obj = static_cast<_metaInstallationObject*> (&_meta);
			obj->fromJson(json_to_string(node, false));
			
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

InstallationObject::InstallationObject(char* json)
{
	this->fromJson(json);
}

char*
InstallationObject::toJson()
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
	if (isprimitive("_metaInstallationObject")) {
		_metaInstallationObject obj = getMeta();
		node = converttoJson(&obj, "_metaInstallationObject", "");
	}
	else {
		
		_metaInstallationObject obj = static_cast<_metaInstallationObject> (getMeta());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *_metaKey = "_meta";
	json_object_set_member(pJsonObject, _metaKey, node);
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
InstallationObject::getId()
{
	return _id;
}

void
InstallationObject::setId(std::string  _id)
{
	this->_id = _id;
}

std::string
InstallationObject::getDeviceToken()
{
	return deviceToken;
}

void
InstallationObject::setDeviceToken(std::string  deviceToken)
{
	this->deviceToken = deviceToken;
}

std::string
InstallationObject::getDeviceType()
{
	return deviceType;
}

void
InstallationObject::setDeviceType(std::string  deviceType)
{
	this->deviceType = deviceType;
}

_metaInstallationObject
InstallationObject::getMeta()
{
	return _meta;
}

void
InstallationObject::setMeta(_metaInstallationObject  _meta)
{
	this->_meta = _meta;
}

std::list<std::string>
InstallationObject::getChannels()
{
	return channels;
}

void
InstallationObject::setChannels(std::list <std::string> channels)
{
	this->channels = channels;
}


