#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "UseridObject.h"

using namespace std;
using namespace Tizen::ArtikCloud;

UseridObject::UseridObject()
{
	//__init();
}

UseridObject::~UseridObject()
{
	//__cleanup();
}

void
UseridObject::__init()
{
	//
	//
	//_id = std::string();
	//
}

void
UseridObject::__cleanup()
{
	//if(_id != NULL) {
	//
	//delete _id;
	//_id = NULL;
	//}
	//
}

void
UseridObject::fromJson(char* jsonStr)
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
}

UseridObject::UseridObject(char* json)
{
	this->fromJson(json);
}

char*
UseridObject::toJson()
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
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
UseridObject::getId()
{
	return _id;
}

void
UseridObject::setId(std::string  _id)
{
	this->_id = _id;
}


