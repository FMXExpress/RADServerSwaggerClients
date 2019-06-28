/*
 * UpdatedObject.h
 *
 * 
 */

#ifndef _UpdatedObject_H_
#define _UpdatedObject_H_


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

class UpdatedObject : public Object {
public:
	/*! \brief Constructor.
	 */
	UpdatedObject();
	UpdatedObject(char* str);

	/*! \brief Destructor.
	 */
	virtual ~UpdatedObject();

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

#endif /* _UpdatedObject_H_ */
