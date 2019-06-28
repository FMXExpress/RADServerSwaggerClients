/*
 * InstallationAddedObject.h
 *
 * 
 */

#ifndef _InstallationAddedObject_H_
#define _InstallationAddedObject_H_


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

class InstallationAddedObject : public Object {
public:
	/*! \brief Constructor.
	 */
	InstallationAddedObject();
	InstallationAddedObject(char* str);

	/*! \brief Destructor.
	 */
	virtual ~InstallationAddedObject();

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

private:
	std::string _id;
	void __init();
	void __cleanup();

};
}
}

#endif /* _InstallationAddedObject_H_ */
