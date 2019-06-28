/*
 * UpdateObject.h
 *
 * 
 */

#ifndef _UpdateObject_H_
#define _UpdateObject_H_


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

class UpdateObject : public Object {
public:
	/*! \brief Constructor.
	 */
	UpdateObject();
	UpdateObject(char* str);

	/*! \brief Destructor.
	 */
	virtual ~UpdateObject();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	std::string getFieldName();

	/*! \brief Set 
	 */
	void setFieldName(std::string  fieldName);

private:
	std::string fieldName;
	void __init();
	void __cleanup();

};
}
}

#endif /* _UpdateObject_H_ */
