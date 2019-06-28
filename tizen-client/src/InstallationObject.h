/*
 * InstallationObject.h
 *
 * 
 */

#ifndef _InstallationObject_H_
#define _InstallationObject_H_


#include <string>
#include "_metaInstallationObject.h"
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

class InstallationObject : public Object {
public:
	/*! \brief Constructor.
	 */
	InstallationObject();
	InstallationObject(char* str);

	/*! \brief Destructor.
	 */
	virtual ~InstallationObject();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	std::string getId();

	/*! \brief Set 
	 */
	void setId(std::string  _id);
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
	_metaInstallationObject getMeta();

	/*! \brief Set 
	 */
	void setMeta(_metaInstallationObject  _meta);
	/*! \brief Get 
	 */
	std::list<std::string> getChannels();

	/*! \brief Set 
	 */
	void setChannels(std::list <std::string> channels);

private:
	std::string _id;
	std::string deviceToken;
	std::string deviceType;
	_metaInstallationObject _meta;
	std::list <std::string>channels;
	void __init();
	void __cleanup();

};
}
}

#endif /* _InstallationObject_H_ */
