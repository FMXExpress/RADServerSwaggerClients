#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "PushDataObject_extras.h"

using namespace std;
using namespace Tizen::ArtikCloud;

PushDataObject_extras::PushDataObject_extras()
{
	//__init();
}

PushDataObject_extras::~PushDataObject_extras()
{
	//__cleanup();
}

void
PushDataObject_extras::__init()
{
	//
	//
	//message = std::string();
	//
}

void
PushDataObject_extras::__cleanup()
{
	//if(message != NULL) {
	//
	//delete message;
	//message = NULL;
	//}
	//
}

void
PushDataObject_extras::fromJson(char* jsonStr)
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
}

PushDataObject_extras::PushDataObject_extras(char* json)
{
	this->fromJson(json);
}

char*
PushDataObject_extras::toJson()
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
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
PushDataObject_extras::getMessage()
{
	return message;
}

void
PushDataObject_extras::setMessage(std::string  message)
{
	this->message = message;
}


