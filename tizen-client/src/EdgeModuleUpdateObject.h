/*
 * EdgeModuleUpdateObject.h
 *
 * 
 */

#ifndef _EdgeModuleUpdateObject_H_
#define _EdgeModuleUpdateObject_H_


#include <string>
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

class EdgeModuleUpdateObject : public Object {
public:
	/*! \brief Constructor.
	 */
	EdgeModuleUpdateObject();
	EdgeModuleUpdateObject(char* str);

	/*! \brief Destructor.
	 */
	virtual ~EdgeModuleUpdateObject();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	std::string getModulename();

	/*! \brief Set 
	 */
	void setModulename(std::string  modulename);
	/*! \brief Get 
	 */
	std::string getProtocol();

	/*! \brief Set 
	 */
	void setProtocol(std::string  protocol);
	/*! \brief Get 
	 */
	std::string getProtocolprops();

	/*! \brief Set 
	 */
	void setProtocolprops(std::string  protocolprops);

private:
	std::string modulename;
	std::string protocol;
	std::string protocolprops;
	void __init();
	void __cleanup();

};
}
}

#endif /* _EdgeModuleUpdateObject_H_ */
