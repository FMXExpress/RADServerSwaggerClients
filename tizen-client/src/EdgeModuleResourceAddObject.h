/*
 * EdgeModuleResourceAddObject.h
 *
 * 
 */

#ifndef _EdgeModuleResourceAddObject_H_
#define _EdgeModuleResourceAddObject_H_


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

class EdgeModuleResourceAddObject : public Object {
public:
	/*! \brief Constructor.
	 */
	EdgeModuleResourceAddObject();
	EdgeModuleResourceAddObject(char* str);

	/*! \brief Destructor.
	 */
	virtual ~EdgeModuleResourceAddObject();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	std::string getResourcename();

	/*! \brief Set 
	 */
	void setResourcename(std::string  resourcename);

private:
	std::string resourcename;
	void __init();
	void __cleanup();

};
}
}

#endif /* _EdgeModuleResourceAddObject_H_ */
