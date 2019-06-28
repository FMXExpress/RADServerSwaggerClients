/*
 * EdgeModuleResourceUpdateObject.h
 *
 * 
 */

#ifndef _EdgeModuleResourceUpdateObject_H_
#define _EdgeModuleResourceUpdateObject_H_


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

class EdgeModuleResourceUpdateObject : public Object {
public:
	/*! \brief Constructor.
	 */
	EdgeModuleResourceUpdateObject();
	EdgeModuleResourceUpdateObject(char* str);

	/*! \brief Destructor.
	 */
	virtual ~EdgeModuleResourceUpdateObject();

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

#endif /* _EdgeModuleResourceUpdateObject_H_ */
