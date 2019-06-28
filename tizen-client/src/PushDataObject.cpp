#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "PushDataObject.h"

using namespace std;
using namespace Tizen::ArtikCloud;

PushDataObject::PushDataObject()
{
	//__init();
}

PushDataObject::~PushDataObject()
{
	//__cleanup();
}

void
PushDataObject::__init()
{
	//
	//
	//gcm = new PushDataObject_gcm();
	//
	//
	//aps = new PushDataObject_aps();
	//
	//
	//extras = new PushDataObject_extras();
	//
}

void
PushDataObject::__cleanup()
{
	//if(gcm != NULL) {
	//
	//delete gcm;
	//gcm = NULL;
	//}
	//if(aps != NULL) {
	//
	//delete aps;
	//aps = NULL;
	//}
	//if(extras != NULL) {
	//
	//delete extras;
	//extras = NULL;
	//}
	//
}

void
PushDataObject::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *gcmKey = "gcm";
	node = json_object_get_member(pJsonObject, gcmKey);
	if (node !=NULL) {
	

		if (isprimitive("PushDataObject_gcm")) {
			jsonToValue(&gcm, node, "PushDataObject_gcm", "PushDataObject_gcm");
		} else {
			
			PushDataObject_gcm* obj = static_cast<PushDataObject_gcm*> (&gcm);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *apsKey = "aps";
	node = json_object_get_member(pJsonObject, apsKey);
	if (node !=NULL) {
	

		if (isprimitive("PushDataObject_aps")) {
			jsonToValue(&aps, node, "PushDataObject_aps", "PushDataObject_aps");
		} else {
			
			PushDataObject_aps* obj = static_cast<PushDataObject_aps*> (&aps);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *extrasKey = "extras";
	node = json_object_get_member(pJsonObject, extrasKey);
	if (node !=NULL) {
	

		if (isprimitive("PushDataObject_extras")) {
			jsonToValue(&extras, node, "PushDataObject_extras", "PushDataObject_extras");
		} else {
			
			PushDataObject_extras* obj = static_cast<PushDataObject_extras*> (&extras);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

PushDataObject::PushDataObject(char* json)
{
	this->fromJson(json);
}

char*
PushDataObject::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("PushDataObject_gcm")) {
		PushDataObject_gcm obj = getGcm();
		node = converttoJson(&obj, "PushDataObject_gcm", "");
	}
	else {
		
		PushDataObject_gcm obj = static_cast<PushDataObject_gcm> (getGcm());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *gcmKey = "gcm";
	json_object_set_member(pJsonObject, gcmKey, node);
	if (isprimitive("PushDataObject_aps")) {
		PushDataObject_aps obj = getAps();
		node = converttoJson(&obj, "PushDataObject_aps", "");
	}
	else {
		
		PushDataObject_aps obj = static_cast<PushDataObject_aps> (getAps());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *apsKey = "aps";
	json_object_set_member(pJsonObject, apsKey, node);
	if (isprimitive("PushDataObject_extras")) {
		PushDataObject_extras obj = getExtras();
		node = converttoJson(&obj, "PushDataObject_extras", "");
	}
	else {
		
		PushDataObject_extras obj = static_cast<PushDataObject_extras> (getExtras());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *extrasKey = "extras";
	json_object_set_member(pJsonObject, extrasKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

PushDataObject_gcm
PushDataObject::getGcm()
{
	return gcm;
}

void
PushDataObject::setGcm(PushDataObject_gcm  gcm)
{
	this->gcm = gcm;
}

PushDataObject_aps
PushDataObject::getAps()
{
	return aps;
}

void
PushDataObject::setAps(PushDataObject_aps  aps)
{
	this->aps = aps;
}

PushDataObject_extras
PushDataObject::getExtras()
{
	return extras;
}

void
PushDataObject::setExtras(PushDataObject_extras  extras)
{
	this->extras = extras;
}


