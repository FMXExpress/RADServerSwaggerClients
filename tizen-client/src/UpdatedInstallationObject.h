/*
 * UpdatedInstallationObject.h
 *
 * 
 */

#ifndef _UpdatedInstallationObject_H_
#define _UpdatedInstallationObject_H_


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

class UpdatedInstallationObject : public Object {
public:
	/*! \brief Constructor.
	 */
	UpdatedInstallationObject();
	UpdatedInstallationObject(char* str);

	/*! \brief Destructor.
	 */
	virtual ~UpdatedInstallationObject();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	std::string getUpdated();

	/*! \brief Set 
	 */
	void setUpdated(std::string  updated);

private:
	std::string updated;
	void __init();
	void __cleanup();

};
}
}

#endif /* _UpdatedInstallationObject_H_ */
