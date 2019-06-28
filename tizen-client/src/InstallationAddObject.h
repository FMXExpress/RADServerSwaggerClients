/*
 * InstallationAddObject.h
 *
 * 
 */

#ifndef _InstallationAddObject_H_
#define _InstallationAddObject_H_


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

class InstallationAddObject : public Object {
public:
	/*! \brief Constructor.
	 */
	InstallationAddObject();
	InstallationAddObject(char* str);

	/*! \brief Destructor.
	 */
	virtual ~InstallationAddObject();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	std::string getDeviceToken();

	/*! \brief Set 
	 */
	void setDeviceToken(std::string  deviceToken);
	/*! \brief Get 
	 */
	std::string getDeviceType();

	/*! \brief Set 
	 */
	void setDeviceType(std::string  deviceType);
	/*! \brief Get 
	 */
	std::list<std::string> getChannels();

	/*! \brief Set 
	 */
	void setChannels(std::list <std::string> channels);

private:
	std::string deviceToken;
	std::string deviceType;
	std::list <std::string>channels;
	void __init();
	void __cleanup();

};
}
}

#endif /* _InstallationAddObject_H_ */
