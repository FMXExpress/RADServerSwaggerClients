#ifndef _ApiDocManager_H_
#define _ApiDocManager_H_

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
/** \addtogroup ApiDoc ApiDoc
 * \ingroup Operations
 *  @{
 */
class ApiDocManager {
public:
	ApiDocManager();
	virtual ~ApiDocManager();

/*! \brief Get API EndPoints. *Synchronous*
 *
 *  |      Used to retrieve all the API EndPoints.
 * \param xEmbarcaderoApplicationId 
 * \param xEmbarcaderoAppSecret 
 * \param xEmbarcaderoMasterSecret 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool aPISync(char * accessToken,
	std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	
	void(* handler)(Error, void* ) , void* userData);

/*! \brief Get API EndPoints. *Asynchronous*
 *
 *  |      Used to retrieve all the API EndPoints.
 * \param xEmbarcaderoApplicationId 
 * \param xEmbarcaderoAppSecret 
 * \param xEmbarcaderoMasterSecret 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool aPIAsync(char * accessToken,
	std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	
	void(* handler)(Error, void* ) , void* userData);


/*! \brief Get JSON. *Synchronous*
 *
 * Get API in JSON format
 * \param xEmbarcaderoApplicationId 
 * \param xEmbarcaderoAppSecret 
 * \param xEmbarcaderoMasterSecret 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getAPIJSONFormatSync(char * accessToken,
	std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	
	void(* handler)(Error, void* ) , void* userData);

/*! \brief Get JSON. *Asynchronous*
 *
 * Get API in JSON format
 * \param xEmbarcaderoApplicationId 
 * \param xEmbarcaderoAppSecret 
 * \param xEmbarcaderoMasterSecret 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getAPIJSONFormatAsync(char * accessToken,
	std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	
	void(* handler)(Error, void* ) , void* userData);


/*! \brief Get YAML. *Synchronous*
 *
 * Get API in YAML format
 * \param xEmbarcaderoApplicationId 
 * \param xEmbarcaderoAppSecret 
 * \param xEmbarcaderoMasterSecret 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getAPIYAMLFormatSync(char * accessToken,
	std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	
	void(* handler)(Error, void* ) , void* userData);

/*! \brief Get YAML. *Asynchronous*
 *
 * Get API in YAML format
 * \param xEmbarcaderoApplicationId 
 * \param xEmbarcaderoAppSecret 
 * \param xEmbarcaderoMasterSecret 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getAPIYAMLFormatAsync(char * accessToken,
	std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	
	void(* handler)(Error, void* ) , void* userData);


/*! \brief Get API EndPoint. *Synchronous*
 *
 *  |      Used to retrieve an EndPoint for the API EndPoints.
 * \param item Path Segment to an EndPoint *Required*
 * \param xEmbarcaderoApplicationId 
 * \param xEmbarcaderoAppSecret 
 * \param xEmbarcaderoMasterSecret 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getAPIYAMLFormat EndPointSync(char * accessToken,
	std::string item, std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	
	void(* handler)(Error, void* ) , void* userData);

/*! \brief Get API EndPoint. *Asynchronous*
 *
 *  |      Used to retrieve an EndPoint for the API EndPoints.
 * \param item Path Segment to an EndPoint *Required*
 * \param xEmbarcaderoApplicationId 
 * \param xEmbarcaderoAppSecret 
 * \param xEmbarcaderoMasterSecret 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getAPIYAMLFormat EndPointAsync(char * accessToken,
	std::string item, std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	
	void(* handler)(Error, void* ) , void* userData);



	static std::string getBasePath()
	{
		return "http://localhost:8080";
	}
};
/** @}*/

}
}
#endif /* ApiDocManager_H_ */
