#ifndef _GroupsManager_H_
#define _GroupsManager_H_

#include <string>
#include <cstring>
#include <list>
#include <glib.h>
#include "FieldGroupObject.h"
#include "GroupAddObject.h"
#include "GroupObject.h"
#include "UpdateGroupObject.h"
#include "UpdatedGroupObject.h"
#include "Error.h"

/** \defgroup Operations API Endpoints
 *  Classes containing all the functions for calling API endpoints
 *
 */

namespace Tizen{
namespace ArtikCloud {
/** \addtogroup Groups Groups
 * \ingroup Operations
 *  @{
 */
class GroupsManager {
public:
	GroupsManager();
	virtual ~GroupsManager();

/*! \brief Add Group. *Synchronous*
 *
 *  |      Used to add a new `Group` object to the EMS database.
 * \param body Object to sign up a new EMS User in the EMS Server *Required*
 * \param xEmbarcaderoApplicationId 
 * \param xEmbarcaderoAppSecret 
 * \param xEmbarcaderoMasterSecret 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool addGroupSync(char * accessToken,
	GroupAddObject body, std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	
	void(* handler)(Error, void* ) , void* userData);

/*! \brief Add Group. *Asynchronous*
 *
 *  |      Used to add a new `Group` object to the EMS database.
 * \param body Object to sign up a new EMS User in the EMS Server *Required*
 * \param xEmbarcaderoApplicationId 
 * \param xEmbarcaderoAppSecret 
 * \param xEmbarcaderoMasterSecret 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool addGroupAsync(char * accessToken,
	GroupAddObject body, std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	
	void(* handler)(Error, void* ) , void* userData);


/*! \brief Delete Group. *Synchronous*
 *
 *  |      Used to delete a `Group`. **item** is the unique EMS Group name in the EMS database.
 * \param item A group name *Required*
 * \param xEmbarcaderoApplicationId 
 * \param xEmbarcaderoAppSecret 
 * \param xEmbarcaderoMasterSecret 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool deleteGroupSync(char * accessToken,
	std::string item, std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	
	void(* handler)(Error, void* ) , void* userData);

/*! \brief Delete Group. *Asynchronous*
 *
 *  |      Used to delete a `Group`. **item** is the unique EMS Group name in the EMS database.
 * \param item A group name *Required*
 * \param xEmbarcaderoApplicationId 
 * \param xEmbarcaderoAppSecret 
 * \param xEmbarcaderoMasterSecret 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool deleteGroupAsync(char * accessToken,
	std::string item, std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	
	void(* handler)(Error, void* ) , void* userData);


/*! \brief Get Group. *Synchronous*
 *
 *  |      Used to retrieve all data from a `Group`. **item** is the unique EMS Group name in the EMS database.
 * \param item A group name *Required*
 * \param xEmbarcaderoApplicationId 
 * \param xEmbarcaderoAppSecret 
 * \param xEmbarcaderoMasterSecret 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getGroupSync(char * accessToken,
	std::string item, std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	void(* handler)(GroupObject, Error, void* )
	, void* userData);

/*! \brief Get Group. *Asynchronous*
 *
 *  |      Used to retrieve all data from a `Group`. **item** is the unique EMS Group name in the EMS database.
 * \param item A group name *Required*
 * \param xEmbarcaderoApplicationId 
 * \param xEmbarcaderoAppSecret 
 * \param xEmbarcaderoMasterSecret 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getGroupAsync(char * accessToken,
	std::string item, std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	void(* handler)(GroupObject, Error, void* )
	, void* userData);


/*! \brief Get Fields. *Synchronous*
 *
 *  |      Used to retrieve all the `field names` of the EMS Group (including the custom fields).
 * \param xEmbarcaderoApplicationId 
 * \param xEmbarcaderoAppSecret 
 * \param xEmbarcaderoMasterSecret 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getGroupFieldsSync(char * accessToken,
	std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	void(* handler)(std::list<FieldGroupObject>, Error, void* )
	, void* userData);

/*! \brief Get Fields. *Asynchronous*
 *
 *  |      Used to retrieve all the `field names` of the EMS Group (including the custom fields).
 * \param xEmbarcaderoApplicationId 
 * \param xEmbarcaderoAppSecret 
 * \param xEmbarcaderoMasterSecret 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getGroupFieldsAsync(char * accessToken,
	std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	void(* handler)(std::list<FieldGroupObject>, Error, void* )
	, void* userData);


/*! \brief Get Groups. *Synchronous*
 *
 *  |      Used to retrieve all data from `Groups`.      Optional query param of **skip, limit, order, where** determines       size of returned array, filtered and order by.
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
bool getGroupsSync(char * accessToken,
	std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, long long skip, long long limit, long long order, std::string where, 
	void(* handler)(std::list<GroupObject>, Error, void* )
	, void* userData);

/*! \brief Get Groups. *Asynchronous*
 *
 *  |      Used to retrieve all data from `Groups`.      Optional query param of **skip, limit, order, where** determines       size of returned array, filtered and order by.
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
bool getGroupsAsync(char * accessToken,
	std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, long long skip, long long limit, long long order, std::string where, 
	void(* handler)(std::list<GroupObject>, Error, void* )
	, void* userData);


/*! \brief Update Group. *Synchronous*
 *
 *  |      Used to update a `Group`. **item** is the unique EMS Group name in the EMS database.
 * \param item A group name *Required*
 * \param body Object to sign up a new EMS User in the EMS Server *Required*
 * \param xEmbarcaderoApplicationId 
 * \param xEmbarcaderoAppSecret 
 * \param xEmbarcaderoMasterSecret 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool updateGroupSync(char * accessToken,
	std::string item, UpdateGroupObject body, std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	void(* handler)(UpdatedGroupObject, Error, void* )
	, void* userData);

/*! \brief Update Group. *Asynchronous*
 *
 *  |      Used to update a `Group`. **item** is the unique EMS Group name in the EMS database.
 * \param item A group name *Required*
 * \param body Object to sign up a new EMS User in the EMS Server *Required*
 * \param xEmbarcaderoApplicationId 
 * \param xEmbarcaderoAppSecret 
 * \param xEmbarcaderoMasterSecret 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool updateGroupAsync(char * accessToken,
	std::string item, UpdateGroupObject body, std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	void(* handler)(UpdatedGroupObject, Error, void* )
	, void* userData);



	static std::string getBasePath()
	{
		return "http://localhost:8080";
	}
};
/** @}*/

}
}
#endif /* GroupsManager_H_ */
