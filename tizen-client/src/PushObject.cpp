#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "PushObject.h"

using namespace std;
using namespace Tizen::ArtikCloud;

PushObject::PushObject()
{
	//__init();
}

PushObject::~PushObject()
{
	//__cleanup();
}

void
PushObject::__init()
{
	//
	//
	//data = new PushDataObject();
	//
	//new std::list()std::list> channels;
	//
	//
	//
	//where = new PushWhereObject();
	//
}

void
PushObject::__cleanup()
{
	//if(data != NULL) {
	//
	//delete data;
	//data = NULL;
	//}
	//if(channels != NULL) {
	//channels.RemoveAll(true);
	//delete channels;
	//channels = NULL;
	//}
	//if(where != NULL) {
	//
	//delete where;
	//where = NULL;
	//}
	//
}

void
PushObject::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *dataKey = "data";
	node = json_object_get_member(pJsonObject, dataKey);
	if (node !=NULL) {
	

		if (isprimitive("PushDataObject")) {
			jsonToValue(&data, node, "PushDataObject", "PushDataObject");
		} else {
			
			PushDataObject* obj = static_cast<PushDataObject*> (&data);
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
	const gchar *whereKey = "where";
	node = json_object_get_member(pJsonObject, whereKey);
	if (node !=NULL) {
	

		if (isprimitive("PushWhereObject")) {
			jsonToValue(&where, node, "PushWhereObject", "PushWhereObject");
		} else {
			
			PushWhereObject* obj = static_cast<PushWhereObject*> (&where);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

PushObject::PushObject(char* json)
{
	this->fromJson(json);
}

char*
PushObject::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("PushDataObject")) {
		PushDataObject obj = getData();
		node = converttoJson(&obj, "PushDataObject", "");
	}
	else {
		
		PushDataObject obj = static_cast<PushDataObject> (getData());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *dataKey = "data";
	json_object_set_member(pJsonObject, dataKey, node);
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
	if (isprimitive("PushWhereObject")) {
		PushWhereObject obj = getWhere();
		node = converttoJson(&obj, "PushWhereObject", "");
	}
	else {
		
		PushWhereObject obj = static_cast<PushWhereObject> (getWhere());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *whereKey = "where";
	json_object_set_member(pJsonObject, whereKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

PushDataObject
PushObject::getData()
{
	return data;
}

void
PushObject::setData(PushDataObject  data)
{
	this->data = data;
}

std::list<std::string>
PushObject::getChannels()
{
	return channels;
}

void
PushObject::setChannels(std::list <std::string> channels)
{
	this->channels = channels;
}

PushWhereObject
PushObject::getWhere()
{
	return where;
}

void
PushObject::setWhere(PushWhereObject  where)
{
	this->where = where;
}


