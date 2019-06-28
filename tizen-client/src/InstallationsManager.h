#ifndef _InstallationsManager_H_
#define _InstallationsManager_H_

#include <string>
#include <cstring>
#include <list>
#include <glib.h>
#include "ChannelName.h"
#include "FieldInstallationObject.h"
#include "InstallationAddObject.h"
#include "InstallationAddedObject.h"
#include "InstallationObject.h"
#include "UpdateInstallationObject.h"
#include "UpdatedInstallationObject.h"
#include "Error.h"

/** \defgroup Operations API Endpoints
 *  Classes containing all the functions for calling API endpoints
 *
 */

namespace Tizen{
namespace ArtikCloud {
/** \addtogroup Installations Installations
 * \ingroup Operations
 *  @{
 */
class InstallationsManager {
public:
	InstallationsManager();
	virtual ~InstallationsManager();

/*! \brief Add Installation. *Synchronous*
 *
 *  |      Used to add a new `Installation` object to the EMS database.
 * \param body Object to sign up a new EMS User in the EMS Server *Required*
 * \param xEmbarcaderoApplicationId 
 * \param xEmbarcaderoAppSecret 
 * \param xEmbarcaderoMasterSecret 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool addInstallationSync(char * accessToken,
	InstallationAddObject body, std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	void(* handler)(InstallationAddedObject, Error, void* )
	, void* userData);

/*! \brief Add Installation. *Asynchronous*
 *
 *  |      Used to add a new `Installation` object to the EMS database.
 * \param body Object to sign up a new EMS User in the EMS Server *Required*
 * \param xEmbarcaderoApplicationId 
 * \param xEmbarcaderoAppSecret 
 * \param xEmbarcaderoMasterSecret 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool addInstallationAsync(char * accessToken,
	InstallationAddObject body, std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	void(* handler)(InstallationAddedObject, Error, void* )
	, void* userData);


/*! \brief Delete Installation. *Synchronous*
 *
 *  |      Used to delete an `Installation`. **id** is the unique EMS Installation identifier (IID) in the EMS database.
 * \param id A Installation ID *Required*
 * \param xEmbarcaderoApplicationId 
 * \param xEmbarcaderoAppSecret 
 * \param xEmbarcaderoMasterSecret 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool deleteInstallationSync(char * accessToken,
	std::string id, std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	
	void(* handler)(Error, void* ) , void* userData);

/*! \brief Delete Installation. *Asynchronous*
 *
 *  |      Used to delete an `Installation`. **id** is the unique EMS Installation identifier (IID) in the EMS database.
 * \param id A Installation ID *Required*
 * \param xEmbarcaderoApplicationId 
 * \param xEmbarcaderoAppSecret 
 * \param xEmbarcaderoMasterSecret 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool deleteInstallationAsync(char * accessToken,
	std::string id, std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	
	void(* handler)(Error, void* ) , void* userData);


/*! \brief Get Installation Channels. *Synchronous*
 *
 *  |       Used to retrieve the available channels to which the device has subscribed. **id** is the unique EMS Installation identifier (InstallationID) in the EMS database.
 * \param xEmbarcaderoApplicationId 
 * \param xEmbarcaderoAppSecret 
 * \param xEmbarcaderoMasterSecret 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getChannelsSync(char * accessToken,
	std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	void(* handler)(std::list<ChannelName>, Error, void* )
	, void* userData);

/*! \brief Get Installation Channels. *Asynchronous*
 *
 *  |       Used to retrieve the available channels to which the device has subscribed. **id** is the unique EMS Installation identifier (InstallationID) in the EMS database.
 * \param xEmbarcaderoApplicationId 
 * \param xEmbarcaderoAppSecret 
 * \param xEmbarcaderoMasterSecret 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getChannelsAsync(char * accessToken,
	std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	void(* handler)(std::list<ChannelName>, Error, void* )
	, void* userData);


/*! \brief Get Installation. *Synchronous*
 *
 *  |      Used to retrieve all data from a specific `Installation` (registered device). **id** is the unique EMS Installation identifier (InstallationID) in the EMS database.
 * \param id A Installation ID *Required*
 * \param xEmbarcaderoApplicationId 
 * \param xEmbarcaderoAppSecret 
 * \param xEmbarcaderoMasterSecret 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getInstallationSync(char * accessToken,
	std::string id, std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	void(* handler)(InstallationObject, Error, void* )
	, void* userData);

/*! \brief Get Installation. *Asynchronous*
 *
 *  |      Used to retrieve all data from a specific `Installation` (registered device). **id** is the unique EMS Installation identifier (InstallationID) in the EMS database.
 * \param id A Installation ID *Required*
 * \param xEmbarcaderoApplicationId 
 * \param xEmbarcaderoAppSecret 
 * \param xEmbarcaderoMasterSecret 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getInstallationAsync(char * accessToken,
	std::string id, std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	void(* handler)(InstallationObject, Error, void* )
	, void* userData);


/*! \brief Get Fields. *Synchronous*
 *
 *  |      Used to retrieve all the `field names` of the EMS Installation (including the custom fields).
 * \param xEmbarcaderoApplicationId 
 * \param xEmbarcaderoAppSecret 
 * \param xEmbarcaderoMasterSecret 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getInstallationFieldsSync(char * accessToken,
	std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	void(* handler)(std::list<FieldInstallationObject>, Error, void* )
	, void* userData);

/*! \brief Get Fields. *Asynchronous*
 *
 *  |      Used to retrieve all the `field names` of the EMS Installation (including the custom fields).
 * \param xEmbarcaderoApplicationId 
 * \param xEmbarcaderoAppSecret 
 * \param xEmbarcaderoMasterSecret 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getInstallationFieldsAsync(char * accessToken,
	std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	void(* handler)(std::list<FieldInstallationObject>, Error, void* )
	, void* userData);


/*! \brief Get Installations. *Synchronous*
 *
 *  |      Used to retrieve all data from `Installation`.      Optional query param of **skip, limit, order, where** determines       size of returned array, filtered and order by.
 * \param xEmbarcaderoApplicationId 
 * \param xEmbarcaderoAppSecret 
 * \param xEmbarcaderoMasterSecret 
 * \param skip users skipped
 * \param limit maximum number of results to return
 * \param order order ascending or descending (asc, desc)
 * \param where filter operators (lt, lte, gt, gte, eq, neq, like, nlike)
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getInstallationsSync(char * accessToken,
	std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, long long skip, long long limit, long long order, std::string where, 
	void(* handler)(std::list<InstallationObject>, Error, void* )
	, void* userData);

/*! \brief Get Installations. *Asynchronous*
 *
 *  |      Used to retrieve all data from `Installation`.      Optional query param of **skip, limit, order, where** determines       size of returned array, filtered and order by.
 * \param xEmbarcaderoApplicationId 
 * \param xEmbarcaderoAppSecret 
 * \param xEmbarcaderoMasterSecret 
 * \param skip users skipped
 * \param limit maximum number of results to return
 * \param order order ascending or descending (asc, desc)
 * \param where filter operators (lt, lte, gt, gte, eq, neq, like, nlike)
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getInstallationsAsync(char * accessToken,
	std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, long long skip, long long limit, long long order, std::string where, 
	void(* handler)(std::list<InstallationObject>, Error, void* )
	, void* userData);


/*! \brief Update Installation. *Synchronous*
 *
 *  |      Used to update an `Installation`. **id** is the unique EMS Installation identifier (IID) in the EMS database.
 * \param id A Installation ID *Required*
 * \param body Installation fields to update *Required*
 * \param xEmbarcaderoApplicationId 
 * \param xEmbarcaderoAppSecret 
 * \param xEmbarcaderoMasterSecret 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool updateInstallationSync(char * accessToken,
	std::string id, UpdateInstallationObject body, std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	void(* handler)(UpdatedInstallationObject, Error, void* )
	, void* userData);

/*! \brief Update Installation. *Asynchronous*
 *
 *  |      Used to update an `Installation`. **id** is the unique EMS Installation identifier (IID) in the EMS database.
 * \param id A Installation ID *Required*
 * \param body Installation fields to update *Required*
 * \param xEmbarcaderoApplicationId 
 * \param xEmbarcaderoAppSecret 
 * \param xEmbarcaderoMasterSecret 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool updateInstallationAsync(char * accessToken,
	std::string id, UpdateInstallationObject body, std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	void(* handler)(UpdatedInstallationObject, Error, void* )
	, void* userData);



	static std::string getBasePath()
	{
		return "http://localhost:8080";
	}
};
/** @}*/

}
}
#endif /* InstallationsManager_H_ */
