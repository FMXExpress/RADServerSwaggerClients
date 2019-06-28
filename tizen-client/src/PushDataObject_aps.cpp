#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "PushDataObject_aps.h"

using namespace std;
using namespace Tizen::ArtikCloud;

PushDataObject_aps::PushDataObject_aps()
{
	//__init();
}

PushDataObject_aps::~PushDataObject_aps()
{
	//__cleanup();
}

void
PushDataObject_aps::__init()
{
	//
	//
	//alert = std::string();
	//
	//
	//badge = std::string();
	//
	//
	//sound = std::string();
	//
}

void
PushDataObject_aps::__cleanup()
{
	//if(alert != NULL) {
	//
	//delete alert;
	//alert = NULL;
	//}
	//if(badge != NULL) {
	//
	//delete badge;
	//badge = NULL;
	//}
	//if(sound != NULL) {
	//
	//delete sound;
	//sound = NULL;
	//}
	//
}

void
PushDataObject_aps::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *alertKey = "alert";
	node = json_object_get_member(pJsonObject, alertKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&alert, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *badgeKey = "badge";
	node = json_object_get_member(pJsonObject, badgeKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&badge, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *soundKey = "sound";
	node = json_object_get_member(pJsonObject, soundKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&sound, node, "std::string", "");
		} else {
			
		}
	}
}

PushDataObject_aps::PushDataObject_aps(char* json)
{
	this->fromJson(json);
}

char*
PushDataObject_aps::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("std::string")) {
		std::string obj = getAlert();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *alertKey = "alert";
	json_object_set_member(pJsonObject, alertKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getBadge();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *badgeKey = "badge";
	json_object_set_member(pJsonObject, badgeKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getSound();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *soundKey = "sound";
	json_object_set_member(pJsonObject, soundKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
PushDataObject_aps::getAlert()
{
	return alert;
}

void
PushDataObject_aps::setAlert(std::string  alert)
{
	this->alert = alert;
}

std::string
PushDataObject_aps::getBadge()
{
	return badge;
}

void
PushDataObject_aps::setBadge(std::string  badge)
{
	this->badge = badge;
}

std::string
PushDataObject_aps::getSound()
{
	return sound;
}

void
PushDataObject_aps::setSound(std::string  sound)
{
	this->sound = sound;
}


