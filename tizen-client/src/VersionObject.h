/*
 * VersionObject.h
 *
 * 
 */

#ifndef _VersionObject_H_
#define _VersionObject_H_


#include <string>
#include "Object.h"

/** \defgroup Models Data Structures for API
 *  Classes containing all the Data Structures needed for calling/returned by API endpoints
 *
 */

namespace Tizen {
namespace ArtikCloud {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class VersionObject : public Object {
public:
	/*! \brief Constructor.
	 */
	VersionObject();
	VersionObject(char* str);

	/*! \brief Destructor.
	 */
	virtual ~VersionObject();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	std::string getVersion();

	/*! \brief Set 
	 */
	void setVersion(std::string  version);
	/*! \brief Get 
	 */
	std::string getServer();

	/*! \brief Set 
	 */
	void setServer(std::string  server);

private:
	std::string version;
	std::string server;
	void __init();
	void __cleanup();

};
}
}

#endif /* _VersionObject_H_ */
