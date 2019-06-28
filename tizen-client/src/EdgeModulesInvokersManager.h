#ifndef _EdgeModulesInvokersManager_H_
#define _EdgeModulesInvokersManager_H_

#include <string>
#include <cstring>
#include <list>
#include <glib.h>
#include "Error.h"

/** \defgroup Operations API Endpoints
 *  Classes containing all the functions for calling API endpoints
 *
 */

namespace Tizen{
namespace ArtikCloud {
/** \addtogroup EdgeModulesInvokers EdgeModulesInvokers
 * \ingroup Operations
 *  @{
 */
class EdgeModulesInvokersManager {
public:
	EdgeModulesInvokersManager();
	virtual ~EdgeModulesInvokersManager();

/*! \brief Invoke Resource Delete Method. *Synchronous*
 *
 * Used to invoke the DELETE method of the resource from an existing EMS EdgeModule.
 * \param mname Is the EMS EdgeModule name *Required*
 * \param rname Is the unique EMS EdgeModule Resource name *Required*
 * \param xEmbarcaderoApplicationId 
 * \param xEmbarcaderoAppSecret 
 * \param xEmbarcaderoMasterSecret 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool deleteResourceEndpointSync(char * accessToken,
	std::string mname, std::string rname, std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	
	void(* handler)(Error, void* ) , void* userData);

/*! \brief Invoke Resource Delete Method. *Asynchronous*
 *
 * Used to invoke the DELETE method of the resource from an existing EMS EdgeModule.
 * \param mname Is the EMS EdgeModule name *Required*
 * \param rname Is the unique EMS EdgeModule Resource name *Required*
 * \param xEmbarcaderoApplicationId 
 * \param xEmbarcaderoAppSecret 
 * \param xEmbarcaderoMasterSecret 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool deleteResourceEndpointAsync(char * accessToken,
	std::string mname, std::string rname, std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	
	void(* handler)(Error, void* ) , void* userData);


/*! \brief Invoke Resource/* Delete Method. *Synchronous*
 *
 * Used to invoke the DELETE method of the resource from an existing EMS EdgeModule.
 * \param mname Is the EMS EdgeModule name *Required*
 * \param rname Is the unique EMS EdgeModule Resource name *Required*
 * \param wildcard Is the Wild card part of the URL *Required*
 * \param xEmbarcaderoApplicationId 
 * \param xEmbarcaderoAppSecret 
 * \param xEmbarcaderoMasterSecret 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool deleteResourceEndpointItemSync(char * accessToken,
	std::string mname, std::string rname, std::string wildcard, std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	
	void(* handler)(Error, void* ) , void* userData);

/*! \brief Invoke Resource/* Delete Method. *Asynchronous*
 *
 * Used to invoke the DELETE method of the resource from an existing EMS EdgeModule.
 * \param mname Is the EMS EdgeModule name *Required*
 * \param rname Is the unique EMS EdgeModule Resource name *Required*
 * \param wildcard Is the Wild card part of the URL *Required*
 * \param xEmbarcaderoApplicationId 
 * \param xEmbarcaderoAppSecret 
 * \param xEmbarcaderoMasterSecret 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool deleteResourceEndpointItemAsync(char * accessToken,
	std::string mname, std::string rname, std::string wildcard, std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	
	void(* handler)(Error, void* ) , void* userData);


/*! \brief Invoke Resource Get Method. *Synchronous*
 *
 * Used to invoke the GET method of the resource from an existing EMS EdgeModule.
 * \param mname Is the EMS EdgeModule name *Required*
 * \param rname Is the unique EMS EdgeModule Resource name *Required*
 * \param xEmbarcaderoApplicationId 
 * \param xEmbarcaderoAppSecret 
 * \param xEmbarcaderoMasterSecret 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getResourceEndpointSync(char * accessToken,
	std::string mname, std::string rname, std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	
	void(* handler)(Error, void* ) , void* userData);

/*! \brief Invoke Resource Get Method. *Asynchronous*
 *
 * Used to invoke the GET method of the resource from an existing EMS EdgeModule.
 * \param mname Is the EMS EdgeModule name *Required*
 * \param rname Is the unique EMS EdgeModule Resource name *Required*
 * \param xEmbarcaderoApplicationId 
 * \param xEmbarcaderoAppSecret 
 * \param xEmbarcaderoMasterSecret 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getResourceEndpointAsync(char * accessToken,
	std::string mname, std::string rname, std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	
	void(* handler)(Error, void* ) , void* userData);


/*! \brief Invoke Resource/* Get Method. *Synchronous*
 *
 * Used to invoke the GET method of the resource from an existing EMS EdgeModule.
 * \param mname Is the EMS EdgeModule name *Required*
 * \param rname Is the unique EMS EdgeModule Resource name *Required*
 * \param wildcard Is the Wild card part of the URL *Required*
 * \param xEmbarcaderoApplicationId 
 * \param xEmbarcaderoAppSecret 
 * \param xEmbarcaderoMasterSecret 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getResourceEndpointItemSync(char * accessToken,
	std::string mname, std::string rname, std::string wildcard, std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	
	void(* handler)(Error, void* ) , void* userData);

/*! \brief Invoke Resource/* Get Method. *Asynchronous*
 *
 * Used to invoke the GET method of the resource from an existing EMS EdgeModule.
 * \param mname Is the EMS EdgeModule name *Required*
 * \param rname Is the unique EMS EdgeModule Resource name *Required*
 * \param wildcard Is the Wild card part of the URL *Required*
 * \param xEmbarcaderoApplicationId 
 * \param xEmbarcaderoAppSecret 
 * \param xEmbarcaderoMasterSecret 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getResourceEndpointItemAsync(char * accessToken,
	std::string mname, std::string rname, std::string wildcard, std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	
	void(* handler)(Error, void* ) , void* userData);


/*! \brief Invoke Resource Patch Method. *Synchronous*
 *
 * Used to invoke the PATCH method of the resource from an existing EMS EdgeModule.
 * \param mname Is the EMS EdgeModule name *Required*
 * \param rname Is the unique EMS EdgeModule Resource name *Required*
 * \param body Body Object *Required*
 * \param xEmbarcaderoApplicationId 
 * \param xEmbarcaderoAppSecret 
 * \param xEmbarcaderoMasterSecret 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool patchResourceEndpointSync(char * accessToken,
	std::string mname, std::string rname, std::string body, std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	
	void(* handler)(Error, void* ) , void* userData);

/*! \brief Invoke Resource Patch Method. *Asynchronous*
 *
 * Used to invoke the PATCH method of the resource from an existing EMS EdgeModule.
 * \param mname Is the EMS EdgeModule name *Required*
 * \param rname Is the unique EMS EdgeModule Resource name *Required*
 * \param body Body Object *Required*
 * \param xEmbarcaderoApplicationId 
 * \param xEmbarcaderoAppSecret 
 * \param xEmbarcaderoMasterSecret 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool patchResourceEndpointAsync(char * accessToken,
	std::string mname, std::string rname, std::string body, std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	
	void(* handler)(Error, void* ) , void* userData);


/*! \brief Invoke Resource/* Patch Method. *Synchronous*
 *
 * Used to invoke the PATCH method of the resource from an existing EMS EdgeModule.
 * \param mname Is the EMS EdgeModule name *Required*
 * \param rname Is the unique EMS EdgeModule Resource name *Required*
 * \param wildcard Is the Wild card part of the URL *Required*
 * \param body Body Object *Required*
 * \param xEmbarcaderoApplicationId 
 * \param xEmbarcaderoAppSecret 
 * \param xEmbarcaderoMasterSecret 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool patchResourceEndpointItemSync(char * accessToken,
	std::string mname, std::string rname, std::string wildcard, std::string body, std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	
	void(* handler)(Error, void* ) , void* userData);

/*! \brief Invoke Resource/* Patch Method. *Asynchronous*
 *
 * Used to invoke the PATCH method of the resource from an existing EMS EdgeModule.
 * \param mname Is the EMS EdgeModule name *Required*
 * \param rname Is the unique EMS EdgeModule Resource name *Required*
 * \param wildcard Is the Wild card part of the URL *Required*
 * \param body Body Object *Required*
 * \param xEmbarcaderoApplicationId 
 * \param xEmbarcaderoAppSecret 
 * \param xEmbarcaderoMasterSecret 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool patchResourceEndpointItemAsync(char * accessToken,
	std::string mname, std::string rname, std::string wildcard, std::string body, std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	
	void(* handler)(Error, void* ) , void* userData);


/*! \brief Invoke Resource Post Method. *Synchronous*
 *
 * Used to invoke the POST method of the resource from an existing EMS EdgeModule.
 * \param mname Is the EMS EdgeModule name *Required*
 * \param rname Is the unique EMS EdgeModule Resource name *Required*
 * \param body Body Object *Required*
 * \param xEmbarcaderoApplicationId 
 * \param xEmbarcaderoAppSecret 
 * \param xEmbarcaderoMasterSecret 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool postResourceEndpointSync(char * accessToken,
	std::string mname, std::string rname, std::string body, std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	
	void(* handler)(Error, void* ) , void* userData);

/*! \brief Invoke Resource Post Method. *Asynchronous*
 *
 * Used to invoke the POST method of the resource from an existing EMS EdgeModule.
 * \param mname Is the EMS EdgeModule name *Required*
 * \param rname Is the unique EMS EdgeModule Resource name *Required*
 * \param body Body Object *Required*
 * \param xEmbarcaderoApplicationId 
 * \param xEmbarcaderoAppSecret 
 * \param xEmbarcaderoMasterSecret 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool postResourceEndpointAsync(char * accessToken,
	std::string mname, std::string rname, std::string body, std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	
	void(* handler)(Error, void* ) , void* userData);


/*! \brief Invoke Resource/* Post Method. *Synchronous*
 *
 * Used to invoke the POST method of the resource from an existing EMS EdgeModule.
 * \param mname Is the EMS EdgeModule name *Required*
 * \param rname Is the unique EMS EdgeModule Resource name *Required*
 * \param wildcard Is the Wild card part of the URL *Required*
 * \param body Body Object *Required*
 * \param xEmbarcaderoApplicationId 
 * \param xEmbarcaderoAppSecret 
 * \param xEmbarcaderoMasterSecret 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool postResourceEndpointItemSync(char * accessToken,
	std::string mname, std::string rname, std::string wildcard, std::string body, std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	
	void(* handler)(Error, void* ) , void* userData);

/*! \brief Invoke Resource/* Post Method. *Asynchronous*
 *
 * Used to invoke the POST method of the resource from an existing EMS EdgeModule.
 * \param mname Is the EMS EdgeModule name *Required*
 * \param rname Is the unique EMS EdgeModule Resource name *Required*
 * \param wildcard Is the Wild card part of the URL *Required*
 * \param body Body Object *Required*
 * \param xEmbarcaderoApplicationId 
 * \param xEmbarcaderoAppSecret 
 * \param xEmbarcaderoMasterSecret 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool postResourceEndpointItemAsync(char * accessToken,
	std::string mname, std::string rname, std::string wildcard, std::string body, std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	
	void(* handler)(Error, void* ) , void* userData);


/*! \brief Invoke Resource Put Method. *Synchronous*
 *
 * Used to invoke the PUT method of the resource from an existing EMS EdgeModule.
 * \param mname Is the EMS EdgeModule name *Required*
 * \param rname Is the unique EMS EdgeModule Resource name *Required*
 * \param body Body Object *Required*
 * \param xEmbarcaderoApplicationId 
 * \param xEmbarcaderoAppSecret 
 * \param xEmbarcaderoMasterSecret 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool putResourceEndpointSync(char * accessToken,
	std::string mname, std::string rname, std::string body, std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	
	void(* handler)(Error, void* ) , void* userData);

/*! \brief Invoke Resource Put Method. *Asynchronous*
 *
 * Used to invoke the PUT method of the resource from an existing EMS EdgeModule.
 * \param mname Is the EMS EdgeModule name *Required*
 * \param rname Is the unique EMS EdgeModule Resource name *Required*
 * \param body Body Object *Required*
 * \param xEmbarcaderoApplicationId 
 * \param xEmbarcaderoAppSecret 
 * \param xEmbarcaderoMasterSecret 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool putResourceEndpointAsync(char * accessToken,
	std::string mname, std::string rname, std::string body, std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	
	void(* handler)(Error, void* ) , void* userData);


/*! \brief Invoke Resource/* Put Method. *Synchronous*
 *
 * Used to invoke the PUT method of the resource from an existing EMS EdgeModule.
 * \param mname Is the EMS EdgeModule name *Required*
 * \param rname Is the unique EMS EdgeModule Resource name *Required*
 * \param wildcard Is the Wild card part of the URL *Required*
 * \param body Body Object *Required*
 * \param xEmbarcaderoApplicationId 
 * \param xEmbarcaderoAppSecret 
 * \param xEmbarcaderoMasterSecret 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool putResourceEndpointItemSync(char * accessToken,
	std::string mname, std::string rname, std::string wildcard, std::string body, std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	
	void(* handler)(Error, void* ) , void* userData);

/*! \brief Invoke Resource/* Put Method. *Asynchronous*
 *
 * Used to invoke the PUT method of the resource from an existing EMS EdgeModule.
 * \param mname Is the EMS EdgeModule name *Required*
 * \param rname Is the unique EMS EdgeModule Resource name *Required*
 * \param wildcard Is the Wild card part of the URL *Required*
 * \param body Body Object *Required*
 * \param xEmbarcaderoApplicationId 
 * \param xEmbarcaderoAppSecret 
 * \param xEmbarcaderoMasterSecret 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool putResourceEndpointItemAsync(char * accessToken,
	std::string mname, std::string rname, std::string wildcard, std::string body, std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	
	void(* handler)(Error, void* ) , void* userData);



	static std::string getBasePath()
	{
		return "http://localhost:8080";
	}
};
/** @}*/

}
}
#endif /* EdgeModulesInvokersManager_H_ */
