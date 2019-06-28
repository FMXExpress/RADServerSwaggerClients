#ifndef _EdgeModulesManager_H_
#define _EdgeModulesManager_H_

#include <string>
#include <cstring>
#include <list>
#include <glib.h>
#include "EdgeModuleAddObject.h"
#include "EdgeModuleAddedObject.h"
#include "EdgeModuleObject.h"
#include "EdgeModuleResourceAddObject.h"
#include "EdgeModuleResourceAddedObject.h"
#include "EdgeModuleResourceObject.h"
#include "EdgeModuleResourceUpdateObject.h"
#include "EdgeModuleResourceUpdatedObject.h"
#include "EdgeModuleUpdateObject.h"
#include "EdgeModuleUpdatedObject.h"
#include "FieldsEdgeModuleObject.h"
#include "Error.h"

/** \defgroup Operations API Endpoints
 *  Classes containing all the functions for calling API endpoints
 *
 */

namespace Tizen{
namespace ArtikCloud {
/** \addtogroup EdgeModules EdgeModules
 * \ingroup Operations
 *  @{
 */
class EdgeModulesManager {
public:
	EdgeModulesManager();
	virtual ~EdgeModulesManager();

/*! \brief Get Module. *Synchronous*
 *
 *  |      Used to retrieve all data from `EdgeModule`.      Optional query param of **skip, limit, order, where** determines       size of returned array, filtered and order by.
 * \param mname Is the unique EMS EdgeModule identifier *Required*
 * \param xEmbarcaderoApplicationId 
 * \param xEmbarcaderoAppSecret 
 * \param xEmbarcaderoMasterSecret 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getModuleSync(char * accessToken,
	std::string mname, std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	void(* handler)(EdgeModuleObject, Error, void* )
	, void* userData);

/*! \brief Get Module. *Asynchronous*
 *
 *  |      Used to retrieve all data from `EdgeModule`.      Optional query param of **skip, limit, order, where** determines       size of returned array, filtered and order by.
 * \param mname Is the unique EMS EdgeModule identifier *Required*
 * \param xEmbarcaderoApplicationId 
 * \param xEmbarcaderoAppSecret 
 * \param xEmbarcaderoMasterSecret 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getModuleAsync(char * accessToken,
	std::string mname, std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	void(* handler)(EdgeModuleObject, Error, void* )
	, void* userData);


/*! \brief Get EdgeModule Resource. *Synchronous*
 *
 *  |      Used to retrieve all data from a resource of an EdgeModule. **mname** is the unique EMS EdgeModule identifier in the EMS database. **resourcename** is the name of the resource.
 * \param mname Is the unique EMS EdgeModule identifier *Required*
 * \param name Is the unique EMS EdgeModule Resource name *Required*
 * \param xEmbarcaderoApplicationId 
 * \param xEmbarcaderoAppSecret 
 * \param xEmbarcaderoMasterSecret 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getModuleResourceSync(char * accessToken,
	std::string mname, std::string name, std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	void(* handler)(EdgeModuleResourceObject, Error, void* )
	, void* userData);

/*! \brief Get EdgeModule Resource. *Asynchronous*
 *
 *  |      Used to retrieve all data from a resource of an EdgeModule. **mname** is the unique EMS EdgeModule identifier in the EMS database. **resourcename** is the name of the resource.
 * \param mname Is the unique EMS EdgeModule identifier *Required*
 * \param name Is the unique EMS EdgeModule Resource name *Required*
 * \param xEmbarcaderoApplicationId 
 * \param xEmbarcaderoAppSecret 
 * \param xEmbarcaderoMasterSecret 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getModuleResourceAsync(char * accessToken,
	std::string mname, std::string name, std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	void(* handler)(EdgeModuleResourceObject, Error, void* )
	, void* userData);


/*! \brief Get EdgeModule Resources. *Synchronous*
 *
 *  |      Used to retrieve all data from the resources of an EdgeModule.
 * \param mname Is the unique EMS EdgeModule identifier *Required*
 * \param xEmbarcaderoApplicationId 
 * \param xEmbarcaderoAppSecret 
 * \param xEmbarcaderoMasterSecret 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getModuleResourcesSync(char * accessToken,
	std::string mname, std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	void(* handler)(std::list<EdgeModuleResourceObject>, Error, void* )
	, void* userData);

/*! \brief Get EdgeModule Resources. *Asynchronous*
 *
 *  |      Used to retrieve all data from the resources of an EdgeModule.
 * \param mname Is the unique EMS EdgeModule identifier *Required*
 * \param xEmbarcaderoApplicationId 
 * \param xEmbarcaderoAppSecret 
 * \param xEmbarcaderoMasterSecret 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getModuleResourcesAsync(char * accessToken,
	std::string mname, std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	void(* handler)(std::list<EdgeModuleResourceObject>, Error, void* )
	, void* userData);


/*! \brief Get Module. *Synchronous*
 *
 *  |      Used to retrieve all data from `EdgeModule`.      Optional query param of **skip, limit, order, where** determines       size of returned array, filtered and order by.
 * \param xEmbarcaderoApplicationId 
 * \param xEmbarcaderoAppSecret 
 * \param xEmbarcaderoMasterSecret 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getModulesSync(char * accessToken,
	std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	void(* handler)(std::list<EdgeModuleObject>, Error, void* )
	, void* userData);

/*! \brief Get Module. *Asynchronous*
 *
 *  |      Used to retrieve all data from `EdgeModule`.      Optional query param of **skip, limit, order, where** determines       size of returned array, filtered and order by.
 * \param xEmbarcaderoApplicationId 
 * \param xEmbarcaderoAppSecret 
 * \param xEmbarcaderoMasterSecret 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getModulesAsync(char * accessToken,
	std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	void(* handler)(std::list<EdgeModuleObject>, Error, void* )
	, void* userData);


/*! \brief Get Fields. *Synchronous*
 *
 *  |      Used to retrieve all the `field names` of the EMS EdgeModule (including the custom fields).
 * \param xEmbarcaderoApplicationId 
 * \param xEmbarcaderoAppSecret 
 * \param xEmbarcaderoMasterSecret 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getModulesFieldsSync(char * accessToken,
	std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	void(* handler)(FieldsEdgeModuleObject, Error, void* )
	, void* userData);

/*! \brief Get Fields. *Asynchronous*
 *
 *  |      Used to retrieve all the `field names` of the EMS EdgeModule (including the custom fields).
 * \param xEmbarcaderoApplicationId 
 * \param xEmbarcaderoAppSecret 
 * \param xEmbarcaderoMasterSecret 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getModulesFieldsAsync(char * accessToken,
	std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	void(* handler)(FieldsEdgeModuleObject, Error, void* )
	, void* userData);


/*! \brief Get EdgeModules Resources. *Synchronous*
 *
 *  |      Used to retrieve all data from the resources of all EdgeModules.
 * \param xEmbarcaderoApplicationId 
 * \param xEmbarcaderoAppSecret 
 * \param xEmbarcaderoMasterSecret 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getResourcesSync(char * accessToken,
	std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	void(* handler)(std::list<EdgeModuleResourceObject>, Error, void* )
	, void* userData);

/*! \brief Get EdgeModules Resources. *Asynchronous*
 *
 *  |      Used to retrieve all data from the resources of all EdgeModules.
 * \param xEmbarcaderoApplicationId 
 * \param xEmbarcaderoAppSecret 
 * \param xEmbarcaderoMasterSecret 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getResourcesAsync(char * accessToken,
	std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	void(* handler)(std::list<EdgeModuleResourceObject>, Error, void* )
	, void* userData);


/*! \brief Get Resource Fields. *Synchronous*
 *
 *  |      Used to retrieve the `field names` of all the resources of the EMS EdgeModule (including the custom fields).
 * \param xEmbarcaderoApplicationId 
 * \param xEmbarcaderoAppSecret 
 * \param xEmbarcaderoMasterSecret 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getResourcesFieldsSync(char * accessToken,
	std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	void(* handler)(FieldsEdgeModuleObject, Error, void* )
	, void* userData);

/*! \brief Get Resource Fields. *Asynchronous*
 *
 *  |      Used to retrieve the `field names` of all the resources of the EMS EdgeModule (including the custom fields).
 * \param xEmbarcaderoApplicationId 
 * \param xEmbarcaderoAppSecret 
 * \param xEmbarcaderoMasterSecret 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getResourcesFieldsAsync(char * accessToken,
	std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	void(* handler)(FieldsEdgeModuleObject, Error, void* )
	, void* userData);


/*! \brief Add Module. *Synchronous*
 *
 *  |      Used to add a new `EdgeModule` object to the EMS database.
 * \param body EdgeModule object to add. protocolprops example string {\\\"port\\\":8082,\\\"host\\\":\\\"10.150.40.52\\\"} *Required*
 * \param xEmbarcaderoApplicationId 
 * \param xEmbarcaderoAppSecret 
 * \param xEmbarcaderoMasterSecret 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool registerModuleSync(char * accessToken,
	EdgeModuleAddObject body, std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	void(* handler)(EdgeModuleAddedObject, Error, void* )
	, void* userData);

/*! \brief Add Module. *Asynchronous*
 *
 *  |      Used to add a new `EdgeModule` object to the EMS database.
 * \param body EdgeModule object to add. protocolprops example string {\\\"port\\\":8082,\\\"host\\\":\\\"10.150.40.52\\\"} *Required*
 * \param xEmbarcaderoApplicationId 
 * \param xEmbarcaderoAppSecret 
 * \param xEmbarcaderoMasterSecret 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool registerModuleAsync(char * accessToken,
	EdgeModuleAddObject body, std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	void(* handler)(EdgeModuleAddedObject, Error, void* )
	, void* userData);


/*! \brief Add Module Resource. *Synchronous*
 *
 *  |      Used to register a new resource from an EMS EdgeModule. **mname** is the unique EMS EdgeModule identifier in the EMS database.
 * \param mname Is the unique EMS EdgeModule identifier *Required*
 * \param body EdgModule Resource add object. protocolprops string example {\\\"port\\\":8082,\\\"host\\\":\\\"10.150.40.52\\\"} *Required*
 * \param xEmbarcaderoApplicationId 
 * \param xEmbarcaderoAppSecret 
 * \param xEmbarcaderoMasterSecret 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool registerModuleResourceSync(char * accessToken,
	std::string mname, EdgeModuleResourceAddObject body, std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	void(* handler)(EdgeModuleResourceAddedObject, Error, void* )
	, void* userData);

/*! \brief Add Module Resource. *Asynchronous*
 *
 *  |      Used to register a new resource from an EMS EdgeModule. **mname** is the unique EMS EdgeModule identifier in the EMS database.
 * \param mname Is the unique EMS EdgeModule identifier *Required*
 * \param body EdgModule Resource add object. protocolprops string example {\\\"port\\\":8082,\\\"host\\\":\\\"10.150.40.52\\\"} *Required*
 * \param xEmbarcaderoApplicationId 
 * \param xEmbarcaderoAppSecret 
 * \param xEmbarcaderoMasterSecret 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool registerModuleResourceAsync(char * accessToken,
	std::string mname, EdgeModuleResourceAddObject body, std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	void(* handler)(EdgeModuleResourceAddedObject, Error, void* )
	, void* userData);


/*! \brief Delete Module. *Synchronous*
 *
 *  |      Used to delete an `EdgeModule Resource`. **mname** is the unique EMS EdgeModule identifier (MID) in the EMS database. **resourcename** is the name of the resource.
 * \param mname Is the unique EMS EdgeModule identifier *Required*
 * \param xEmbarcaderoApplicationId 
 * \param xEmbarcaderoAppSecret 
 * \param xEmbarcaderoMasterSecret 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool unregisterModuleSync(char * accessToken,
	std::string mname, std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	
	void(* handler)(Error, void* ) , void* userData);

/*! \brief Delete Module. *Asynchronous*
 *
 *  |      Used to delete an `EdgeModule Resource`. **mname** is the unique EMS EdgeModule identifier (MID) in the EMS database. **resourcename** is the name of the resource.
 * \param mname Is the unique EMS EdgeModule identifier *Required*
 * \param xEmbarcaderoApplicationId 
 * \param xEmbarcaderoAppSecret 
 * \param xEmbarcaderoMasterSecret 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool unregisterModuleAsync(char * accessToken,
	std::string mname, std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	
	void(* handler)(Error, void* ) , void* userData);


/*! \brief Delete Module Resource. *Synchronous*
 *
 *  |      Used to delete an `EdgeModule Resource`. **mname** is the unique EMS EdgeModule identifier (MID) in the EMS database. **resourcename** is the name of the resource.
 * \param mname Is the unique EMS EdgeModule identifier *Required*
 * \param name Is the unique EMS EdgeModule Resource name *Required*
 * \param xEmbarcaderoApplicationId 
 * \param xEmbarcaderoAppSecret 
 * \param xEmbarcaderoMasterSecret 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool unregisterModuleResourceSync(char * accessToken,
	std::string mname, std::string name, std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	
	void(* handler)(Error, void* ) , void* userData);

/*! \brief Delete Module Resource. *Asynchronous*
 *
 *  |      Used to delete an `EdgeModule Resource`. **mname** is the unique EMS EdgeModule identifier (MID) in the EMS database. **resourcename** is the name of the resource.
 * \param mname Is the unique EMS EdgeModule identifier *Required*
 * \param name Is the unique EMS EdgeModule Resource name *Required*
 * \param xEmbarcaderoApplicationId 
 * \param xEmbarcaderoAppSecret 
 * \param xEmbarcaderoMasterSecret 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool unregisterModuleResourceAsync(char * accessToken,
	std::string mname, std::string name, std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	
	void(* handler)(Error, void* ) , void* userData);


/*! \brief Update Module. *Synchronous*
 *
 *  |      Used to update an `EdgeModule`. **mname** is the unique EMS EdgeModule identifier (MID) in the EMS database.
 * \param mname Is the unique EMS EdgeModule identifier *Required*
 * \param body EdgModule Resource add object. protocolprops string example {\\\"port\\\":8082,\\\"host\\\":\\\"10.150.40.52\\\"} *Required*
 * \param xEmbarcaderoApplicationId 
 * \param xEmbarcaderoAppSecret 
 * \param xEmbarcaderoMasterSecret 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool updateModuleSync(char * accessToken,
	std::string mname, EdgeModuleUpdateObject body, std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	void(* handler)(EdgeModuleUpdatedObject, Error, void* )
	, void* userData);

/*! \brief Update Module. *Asynchronous*
 *
 *  |      Used to update an `EdgeModule`. **mname** is the unique EMS EdgeModule identifier (MID) in the EMS database.
 * \param mname Is the unique EMS EdgeModule identifier *Required*
 * \param body EdgModule Resource add object. protocolprops string example {\\\"port\\\":8082,\\\"host\\\":\\\"10.150.40.52\\\"} *Required*
 * \param xEmbarcaderoApplicationId 
 * \param xEmbarcaderoAppSecret 
 * \param xEmbarcaderoMasterSecret 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool updateModuleAsync(char * accessToken,
	std::string mname, EdgeModuleUpdateObject body, std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	void(* handler)(EdgeModuleUpdatedObject, Error, void* )
	, void* userData);


/*! \brief Update Module Resource. *Synchronous*
 *
 *  |      Used to update an `EdgeModule`. **mname** is the unique EMS EdgeModule identifier (MID) in the EMS database.
 * \param mname Is the unique EMS EdgeModule identifier *Required*
 * \param name Is the unique EMS EdgeModule Resource name *Required*
 * \param body EdgModule Resource add object. protocolprops string example {\\\"port\\\":8082,\\\"host\\\":\\\"10.150.40.52\\\"} *Required*
 * \param xEmbarcaderoApplicationId 
 * \param xEmbarcaderoAppSecret 
 * \param xEmbarcaderoMasterSecret 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool updateModuleResourceSync(char * accessToken,
	std::string mname, std::string name, EdgeModuleResourceUpdateObject body, std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	void(* handler)(EdgeModuleResourceUpdatedObject, Error, void* )
	, void* userData);

/*! \brief Update Module Resource. *Asynchronous*
 *
 *  |      Used to update an `EdgeModule`. **mname** is the unique EMS EdgeModule identifier (MID) in the EMS database.
 * \param mname Is the unique EMS EdgeModule identifier *Required*
 * \param name Is the unique EMS EdgeModule Resource name *Required*
 * \param body EdgModule Resource add object. protocolprops string example {\\\"port\\\":8082,\\\"host\\\":\\\"10.150.40.52\\\"} *Required*
 * \param xEmbarcaderoApplicationId 
 * \param xEmbarcaderoAppSecret 
 * \param xEmbarcaderoMasterSecret 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool updateModuleResourceAsync(char * accessToken,
	std::string mname, std::string name, EdgeModuleResourceUpdateObject body, std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	void(* handler)(EdgeModuleResourceUpdatedObject, Error, void* )
	, void* userData);



	static std::string getBasePath()
	{
		return "http://localhost:8080";
	}
};
/** @}*/

}
}
#endif /* EdgeModulesManager_H_ */
