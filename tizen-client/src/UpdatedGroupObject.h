/*
 * UpdatedGroupObject.h
 *
 * 
 */

#ifndef _UpdatedGroupObject_H_
#define _UpdatedGroupObject_H_


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

class UpdatedGroupObject : public Object {
public:
	/*! \brief Constructor.
	 */
	UpdatedGroupObject();
	UpdatedGroupObject(char* str);

	/*! \brief Destructor.
	 */
	virtual ~UpdatedGroupObject();

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

#endif /* _UpdatedGroupObject_H_ */
