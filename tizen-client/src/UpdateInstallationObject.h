/*
 * UpdateInstallationObject.h
 *
 * 
 */

#ifndef _UpdateInstallationObject_H_
#define _UpdateInstallationObject_H_


#include <string>
#include <list>
#include <map>
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

class UpdateInstallationObject : public Object {
public:
	/*! \brief Constructor.
	 */
	UpdateInstallationObject();
	UpdateInstallationObject(char* str);

	/*! \brief Destructor.
	 */
	virtual ~UpdateInstallationObject();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	std::list<std::string> getChannels();

	/*! \brief Set 
	 */
	void setChannels(std::list <std::string> channels);

private:
	std::list <std::string>channels;
	void __init();
	void __cleanup();

};
}
}

#endif /* _UpdateInstallationObject_H_ */
