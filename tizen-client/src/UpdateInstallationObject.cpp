#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "UpdateInstallationObject.h"

using namespace std;
using namespace Tizen::ArtikCloud;

UpdateInstallationObject::UpdateInstallationObject()
{
	//__init();
}

UpdateInstallationObject::~UpdateInstallationObject()
{
	//__cleanup();
}

void
UpdateInstallationObject::__init()
{
	//
	//new std::list()std::list> channels;
	//
	//
}

void
UpdateInstallationObject::__cleanup()
{
	//if(channels != NULL) {
	//channels.RemoveAll(true);
	//delete channels;
	//channels = NULL;
	//}
	//
}

void
UpdateInstallationObject::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
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

UpdateInstallationObject::UpdateInstallationObject(char* json)
{
	this->fromJson(json);
}

char*
UpdateInstallationObject::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
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

std::list<std::string>
UpdateInstallationObject::getChannels()
{
	return channels;
}

void
UpdateInstallationObject::setChannels(std::list <std::string> channels)
{
	this->channels = channels;
}


