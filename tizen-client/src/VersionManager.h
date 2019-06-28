#ifndef _VersionManager_H_
#define _VersionManager_H_

#include <string>
#include <cstring>
#include <list>
#include <glib.h>
#include "VersionObject.h"
#include "Error.h"

/** \defgroup Operations API Endpoints
 *  Classes containing all the functions for calling API endpoints
 *
 */

namespace Tizen{
namespace ArtikCloud {
/** \addtogroup Version Version
 * \ingroup Operations
 *  @{
 */
class VersionManager {
public:
	VersionManager();
	virtual ~VersionManager();

/*! \brief Get version. *Synchronous*
 *
 *  |      Used to retrieve the `Version` of the EMS Server.
 * \param xEmbarcaderoApplicationId 
 * \param xEmbarcaderoAppSecret 
 * \param xEmbarcaderoMasterSecret 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getVersionSync(char * accessToken,
	std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	void(* handler)(VersionObject, Error, void* )
	, void* userData);

/*! \brief Get version. *Asynchronous*
 *
 *  |      Used to retrieve the `Version` of the EMS Server.
 * \param xEmbarcaderoApplicationId 
 * \param xEmbarcaderoAppSecret 
 * \param xEmbarcaderoMasterSecret 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getVersionAsync(char * accessToken,
	std::string xEmbarcaderoApplicationId, std::string xEmbarcaderoAppSecret, std::string xEmbarcaderoMasterSecret, 
	void(* handler)(VersionObject, Error, void* )
	, void* userData);



	static std::string getBasePath()
	{
		return "http://localhost:8080";
	}
};
/** @}*/

}
}
#endif /* VersionManager_H_ */
