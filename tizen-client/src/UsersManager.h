#ifndef _UsersManager_H_
#define _UsersManager_H_

#include <string>
#include <cstring>
#include <list>
#include <glib.h>
#include "FieldObject.h"
#include "GroupName.h"
#include "UpdateObject.h"
#include "UpdatedObject.h"
#include "UserCredentialsObject.h"
#include "UserObject.h"
#include "UserSignUpResponseObject.h"
#include "UserTokenObject.h"
#include "UseridObject.h"
#include "Error.h"

/** \defgroup Operations API Endpoints
 *  Classes containing all the functions for calling API endpoints
 *
 */

namespace Tizen{
namespace ArtikCloud {
/** \addtogroup Users Users
 * \ingroup Operations
 *  @{
 */
class UsersManager {
public:
	UsersManager();
	virtual ~UsersManager();

/*! \brief Add User. *Synchronous*
 *
 *  |      Used to add a new `User` object to the EMS database.
 * \param body Object to add a new EMS User in the EMS Server *Required*
 * \param xEmbarcaderoApplicationId 
 * \param xEmbarcaderoAppSecret 
 * \param xEmbarcaderoMasterSecret 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool addUserSync(char * accessToken,
	UserCredentialsObject body, std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	void(* handler)(UseridObject, Error, void* )
	, void* userData);

/*! \brief Add User. *Asynchronous*
 *
 *  |      Used to add a new `User` object to the EMS database.
 * \param body Object to add a new EMS User in the EMS Server *Required*
 * \param xEmbarcaderoApplicationId 
 * \param xEmbarcaderoAppSecret 
 * \param xEmbarcaderoMasterSecret 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool addUserAsync(char * accessToken,
	UserCredentialsObject body, std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	void(* handler)(UseridObject, Error, void* )
	, void* userData);


/*! \brief Delete User. *Synchronous*
 *
 *  |      Used to delete a `User`. **id** is the unique EMS User identifier (UID) in the EMS database.
 * \param id A user ID *Required*
 * \param xEmbarcaderoApplicationId 
 * \param xEmbarcaderoAppSecret 
 * \param xEmbarcaderoMasterSecret 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool deleteUserSync(char * accessToken,
	std::string id, std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	
	void(* handler)(Error, void* ) , void* userData);

/*! \brief Delete User. *Asynchronous*
 *
 *  |      Used to delete a `User`. **id** is the unique EMS User identifier (UID) in the EMS database.
 * \param id A user ID *Required*
 * \param xEmbarcaderoApplicationId 
 * \param xEmbarcaderoAppSecret 
 * \param xEmbarcaderoMasterSecret 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool deleteUserAsync(char * accessToken,
	std::string id, std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	
	void(* handler)(Error, void* ) , void* userData);


/*! \brief Get User. *Synchronous*
 *
 *  |      Used to retrieve all data from a `User`. **id** is the unique EMS User identifier (UID) in the EMS database.
 * \param id A user ID *Required*
 * \param xEmbarcaderoApplicationId 
 * \param xEmbarcaderoAppSecret 
 * \param xEmbarcaderoMasterSecret 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getUserSync(char * accessToken,
	std::string id, std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	void(* handler)(UserObject, Error, void* )
	, void* userData);

/*! \brief Get User. *Asynchronous*
 *
 *  |      Used to retrieve all data from a `User`. **id** is the unique EMS User identifier (UID) in the EMS database.
 * \param id A user ID *Required*
 * \param xEmbarcaderoApplicationId 
 * \param xEmbarcaderoAppSecret 
 * \param xEmbarcaderoMasterSecret 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getUserAsync(char * accessToken,
	std::string id, std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	void(* handler)(UserObject, Error, void* )
	, void* userData);


/*! \brief Get Fields. *Synchronous*
 *
 *  |      Used to retrieve all the `field names` of the EMS Users (including the custom fields).
 * \param xEmbarcaderoApplicationId 
 * \param xEmbarcaderoAppSecret 
 * \param xEmbarcaderoMasterSecret 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getUserFieldsSync(char * accessToken,
	std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	void(* handler)(std::list<FieldObject>, Error, void* )
	, void* userData);

/*! \brief Get Fields. *Asynchronous*
 *
 *  |      Used to retrieve all the `field names` of the EMS Users (including the custom fields).
 * \param xEmbarcaderoApplicationId 
 * \param xEmbarcaderoAppSecret 
 * \param xEmbarcaderoMasterSecret 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getUserFieldsAsync(char * accessToken,
	std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	void(* handler)(std::list<FieldObject>, Error, void* )
	, void* userData);


/*! \brief Get User Groups. *Synchronous*
 *
 *  |      Used to retrieve the EMS Groups the EMS User belongs to. **id** is the unique EMS User identifier (UID) in the EMS database.
 * \param id A user ID *Required*
 * \param xEmbarcaderoApplicationId 
 * \param xEmbarcaderoAppSecret 
 * \param xEmbarcaderoMasterSecret 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getUserGroupsSync(char * accessToken,
	std::string id, std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	void(* handler)(std::list<GroupName>, Error, void* )
	, void* userData);

/*! \brief Get User Groups. *Asynchronous*
 *
 *  |      Used to retrieve the EMS Groups the EMS User belongs to. **id** is the unique EMS User identifier (UID) in the EMS database.
 * \param id A user ID *Required*
 * \param xEmbarcaderoApplicationId 
 * \param xEmbarcaderoAppSecret 
 * \param xEmbarcaderoMasterSecret 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getUserGroupsAsync(char * accessToken,
	std::string id, std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	void(* handler)(std::list<GroupName>, Error, void* )
	, void* userData);


/*! \brief Get Users. *Synchronous*
 *
 *  |      Used to retrieve all data from `Users`.      Optional query param of **skip, limit, order, where** determines       size of returned array, filtered and order by.
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
bool getUsersSync(char * accessToken,
	std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, long long skip, long long limit, long long order, std::string where, 
	void(* handler)(std::list<UserObject>, Error, void* )
	, void* userData);

/*! \brief Get Users. *Asynchronous*
 *
 *  |      Used to retrieve all data from `Users`.      Optional query param of **skip, limit, order, where** determines       size of returned array, filtered and order by.
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
bool getUsersAsync(char * accessToken,
	std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, long long skip, long long limit, long long order, std::string where, 
	void(* handler)(std::list<UserObject>, Error, void* )
	, void* userData);


/*! \brief Log In. *Synchronous*
 *
 *  |      Logs in to the EMS Server with a specific EMS User.
 * \param body A user object *Required*
 * \param xEmbarcaderoApplicationId 
 * \param xEmbarcaderoAppSecret 
 * \param xEmbarcaderoMasterSecret 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool loginUserSync(char * accessToken,
	UserCredentialsObject body, std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	void(* handler)(UserTokenObject, Error, void* )
	, void* userData);

/*! \brief Log In. *Asynchronous*
 *
 *  |      Logs in to the EMS Server with a specific EMS User.
 * \param body A user object *Required*
 * \param xEmbarcaderoApplicationId 
 * \param xEmbarcaderoAppSecret 
 * \param xEmbarcaderoMasterSecret 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool loginUserAsync(char * accessToken,
	UserCredentialsObject body, std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	void(* handler)(UserTokenObject, Error, void* )
	, void* userData);


/*! \brief sPostLogoutSummaryTitle. *Synchronous*
 *
 * sPostLogoutSummaryDesc
 * \param xEmbarcaderoApplicationId 
 * \param xEmbarcaderoAppSecret 
 * \param xEmbarcaderoMasterSecret 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool logoutUserSync(char * accessToken,
	std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	
	void(* handler)(Error, void* ) , void* userData);

/*! \brief sPostLogoutSummaryTitle. *Asynchronous*
 *
 * sPostLogoutSummaryDesc
 * \param xEmbarcaderoApplicationId 
 * \param xEmbarcaderoAppSecret 
 * \param xEmbarcaderoMasterSecret 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool logoutUserAsync(char * accessToken,
	std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	
	void(* handler)(Error, void* ) , void* userData);


/*! \brief Sign Up  User. *Synchronous*
 *
 *  |      Signs up to the EMS Server with an appropriate EMS User.
 * \param body Object to sign up a new EMS User in the EMS Server *Required*
 * \param xEmbarcaderoApplicationId 
 * \param xEmbarcaderoAppSecret 
 * \param xEmbarcaderoMasterSecret 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool signupUserSync(char * accessToken,
	UserCredentialsObject body, std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	void(* handler)(UserSignUpResponseObject, Error, void* )
	, void* userData);

/*! \brief Sign Up  User. *Asynchronous*
 *
 *  |      Signs up to the EMS Server with an appropriate EMS User.
 * \param body Object to sign up a new EMS User in the EMS Server *Required*
 * \param xEmbarcaderoApplicationId 
 * \param xEmbarcaderoAppSecret 
 * \param xEmbarcaderoMasterSecret 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool signupUserAsync(char * accessToken,
	UserCredentialsObject body, std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	void(* handler)(UserSignUpResponseObject, Error, void* )
	, void* userData);


/*! \brief Update User. *Synchronous*
 *
 *  |      Used to update a `User`. **id** is the unique EMS User identifier (UID) in the EMS database.
 * \param id A user ID *Required*
 * \param body Add any fieldName *Required*
 * \param xEmbarcaderoApplicationId 
 * \param xEmbarcaderoAppSecret 
 * \param xEmbarcaderoMasterSecret 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool updateUserSync(char * accessToken,
	std::string id, UpdateObject body, std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	void(* handler)(UpdatedObject, Error, void* )
	, void* userData);

/*! \brief Update User. *Asynchronous*
 *
 *  |      Used to update a `User`. **id** is the unique EMS User identifier (UID) in the EMS database.
 * \param id A user ID *Required*
 * \param body Add any fieldName *Required*
 * \param xEmbarcaderoApplicationId 
 * \param xEmbarcaderoAppSecret 
 * \param xEmbarcaderoMasterSecret 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool updateUserAsync(char * accessToken,
	std::string id, UpdateObject body, std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	void(* handler)(UpdatedObject, Error, void* )
	, void* userData);



	static std::string getBasePath()
	{
		return "http://localhost:8080";
	}
};
/** @}*/

}
}
#endif /* UsersManager_H_ */
