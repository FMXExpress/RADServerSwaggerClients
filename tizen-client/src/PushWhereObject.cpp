#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "PushWhereObject.h"

using namespace std;
using namespace Tizen::ArtikCloud;

PushWhereObject::PushWhereObject()
{
	//__init();
}

PushWhereObject::~PushWhereObject()
{
	//__cleanup();
}

void
PushWhereObject::__init()
{
	//
	//
	//deviceType = std::string();
	//
	//
	//deviceToken = new PushWhereObject_deviceToken();
	//
}

void
PushWhereObject::__cleanup()
{
	//if(deviceType != NULL) {
	//
	//delete deviceType;
	//deviceType = NULL;
	//}
	//if(deviceToken != NULL) {
	//
	//delete deviceToken;
	//deviceToken = NULL;
	//}
	//
}

void
PushWhereObject::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *deviceTypeKey = "deviceType";
	node = json_object_get_member(pJsonObject, deviceTypeKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&deviceType, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *deviceTokenKey = "deviceToken";
	node = json_object_get_member(pJsonObject, deviceTokenKey);
	if (node !=NULL) {
	

		if (isprimitive("PushWhereObject_deviceToken")) {
			jsonToValue(&deviceToken, node, "PushWhereObject_deviceToken", "PushWhereObject_deviceToken");
		} else {
			
			PushWhereObject_deviceToken* obj = static_cast<PushWhereObject_deviceToken*> (&deviceToken);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

PushWhereObject::PushWhereObject(char* json)
{
	this->fromJson(json);
}

char*
PushWhereObject::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("std::string")) {
		std::string obj = getDeviceType();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *deviceTypeKey = "deviceType";
	json_object_set_member(pJsonObject, deviceTypeKey, node);
	if (isprimitive("PushWhereObject_deviceToken")) {
		PushWhereObject_deviceToken obj = getDeviceToken();
		node = converttoJson(&obj, "PushWhereObject_deviceToken", "");
	}
	else {
		
		PushWhereObject_deviceToken obj = static_cast<PushWhereObject_deviceToken> (getDeviceToken());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *deviceTokenKey = "deviceToken";
	json_object_set_member(pJsonObject, deviceTokenKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
PushWhereObject::getDeviceType()
{
	return deviceType;
}

void
PushWhereObject::setDeviceType(std::string  deviceType)
{
	this->deviceType = deviceType;
}

PushWhereObject_deviceToken
PushWhereObject::getDeviceToken()
{
	return deviceToken;
}

void
PushWhereObject::setDeviceToken(PushWhereObject_deviceToken  deviceToken)
{
	this->deviceToken = deviceToken;
}


