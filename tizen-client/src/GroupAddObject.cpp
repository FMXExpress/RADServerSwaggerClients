#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "GroupAddObject.h"

using namespace std;
using namespace Tizen::ArtikCloud;

GroupAddObject::GroupAddObject()
{
	//__init();
}

GroupAddObject::~GroupAddObject()
{
	//__cleanup();
}

void
GroupAddObject::__init()
{
	//
	//
	//groupname = std::string();
	//
}

void
GroupAddObject::__cleanup()
{
	//if(groupname != NULL) {
	//
	//delete groupname;
	//groupname = NULL;
	//}
	//
}

void
GroupAddObject::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *groupnameKey = "groupname";
	node = json_object_get_member(pJsonObject, groupnameKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&groupname, node, "std::string", "");
		} else {
			
		}
	}
}

GroupAddObject::GroupAddObject(char* json)
{
	this->fromJson(json);
}

char*
GroupAddObject::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("std::string")) {
		std::string obj = getGroupname();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *groupnameKey = "groupname";
	json_object_set_member(pJsonObject, groupnameKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
GroupAddObject::getGroupname()
{
	return groupname;
}

void
GroupAddObject::setGroupname(std::string  groupname)
{
	this->groupname = groupname;
}


