#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "PushWhereObject_deviceToken.h"

using namespace std;
using namespace Tizen::ArtikCloud;

PushWhereObject_deviceToken::PushWhereObject_deviceToken()
{
	//__init();
}

PushWhereObject_deviceToken::~PushWhereObject_deviceToken()
{
	//__cleanup();
}

void
PushWhereObject_deviceToken::__init()
{
	//
	//new std::list()std::list> in;
	//
	//
}

void
PushWhereObject_deviceToken::__cleanup()
{
	//if(in != NULL) {
	//in.RemoveAll(true);
	//delete in;
	//in = NULL;
	//}
	//
}

void
PushWhereObject_deviceToken::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *inKey = "$in";
	node = json_object_get_member(pJsonObject, inKey);
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
			in = new_list;
		}
		
	}
}

PushWhereObject_deviceToken::PushWhereObject_deviceToken(char* json)
{
	this->fromJson(json);
}

char*
PushWhereObject_deviceToken::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("std::string")) {
		list<std::string> new_list = static_cast<list <std::string> > (getIn());
		node = converttoJson(&new_list, "std::string", "array");
	} else {
		node = json_node_alloc();
		list<std::string> new_list = static_cast<list <std::string> > (getIn());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
	}


	
	const gchar *inKey = "$in";
	json_object_set_member(pJsonObject, inKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::list<std::string>
PushWhereObject_deviceToken::getIn()
{
	return in;
}

void
PushWhereObject_deviceToken::setIn(std::list <std::string> in)
{
	this->in = in;
}


