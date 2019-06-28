#ifndef _PushManager_H_
#define _PushManager_H_

#include <string>
#include <cstring>
#include <list>
#include <glib.h>
#include "PushObject.h"
#include "Error.h"

/** \defgroup Operations API Endpoints
 *  Classes containing all the functions for calling API endpoints
 *
 */

namespace Tizen{
namespace ArtikCloud {
/** \addtogroup Push Push
 * \ingroup Operations
 *  @{
 */
class PushManager {
public:
	PushManager();
	virtual ~PushManager();

/*! \brief Send Push. *Synchronous*
 *
 * Used to send a push notification message to a registered device
 * \param body Object containing the Push Message data structure *Required*
 * \param xEmbarcaderoApplicationId 
 * \param xEmbarcaderoAppSecret 
 * \param xEmbarcaderoMasterSecret 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool sendSync(char * accessToken,
	PushObject body, std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	
	void(* handler)(Error, void* ) , void* userData);

/*! \brief Send Push. *Asynchronous*
 *
 * Used to send a push notification message to a registered device
 * \param body Object containing the Push Message data structure *Required*
 * \param xEmbarcaderoApplicationId 
 * \param xEmbarcaderoAppSecret 
 * \param xEmbarcaderoMasterSecret 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool sendAsync(char * accessToken,
	PushObject body, std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	
	void(* handler)(Error, void* ) , void* userData);



	static std::string getBasePath()
	{
		return "http://localhost:8080";
	}
};
/** @}*/

}
}
#endif /* PushManager_H_ */
