#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "PushDataObject_gcm.h"

using namespace std;
using namespace Tizen::ArtikCloud;

PushDataObject_gcm::PushDataObject_gcm()
{
	//__init();
}

PushDataObject_gcm::~PushDataObject_gcm()
{
	//__cleanup();
}

void
PushDataObject_gcm::__init()
{
	//
	//
	//message = std::string();
	//
	//
	//title = std::string();
	//
}

void
PushDataObject_gcm::__cleanup()
{
	//if(message != NULL) {
	//
	//delete message;
	//message = NULL;
	//}
	//if(title != NULL) {
	//
	//delete title;
	//title = NULL;
	//}
	//
}

void
PushDataObject_gcm::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *messageKey = "message";
	node = json_object_get_member(pJsonObject, messageKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&message, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *titleKey = "title";
	node = json_object_get_member(pJsonObject, titleKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&title, node, "std::string", "");
		} else {
			
		}
	}
}

PushDataObject_gcm::PushDataObject_gcm(char* json)
{
	this->fromJson(json);
}

char*
PushDataObject_gcm::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("std::string")) {
		std::string obj = getMessage();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *messageKey = "message";
	json_object_set_member(pJsonObject, messageKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getTitle();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *titleKey = "title";
	json_object_set_member(pJsonObject, titleKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
PushDataObject_gcm::getMessage()
{
	return message;
}

void
PushDataObject_gcm::setMessage(std::string  message)
{
	this->message = message;
}

std::string
PushDataObject_gcm::getTitle()
{
	return title;
}

void
PushDataObject_gcm::setTitle(std::string  title)
{
	this->title = title;
}


