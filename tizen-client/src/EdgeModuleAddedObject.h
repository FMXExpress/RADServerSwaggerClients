/*
 * EdgeModuleAddedObject.h
 *
 * 
 */

#ifndef _EdgeModuleAddedObject_H_
#define _EdgeModuleAddedObject_H_


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

class EdgeModuleAddedObject : public Object {
public:
	/*! \brief Constructor.
	 */
	EdgeModuleAddedObject();
	EdgeModuleAddedObject(char* str);

	/*! \brief Destructor.
	 */
	virtual ~EdgeModuleAddedObject();

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
	std::string getModulename();

	/*! \brief Set 
	 */
	void setModulename(std::string  modulename);

private:
	std::string _id;
	std::string modulename;
	void __init();
	void __cleanup();

};
}
}

#endif /* _EdgeModuleAddedObject_H_ */
