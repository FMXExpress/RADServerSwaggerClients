/*
 * FieldObject_fields.h
 *
 * 
 */

#ifndef _FieldObject_fields_H_
#define _FieldObject_fields_H_


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

class FieldObject_fields : public Object {
public:
	/*! \brief Constructor.
	 */
	FieldObject_fields();
	FieldObject_fields(char* str);

	/*! \brief Destructor.
	 */
	virtual ~FieldObject_fields();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	std::string getName();

	/*! \brief Set 
	 */
	void setName(std::string  name);

private:
	std::string name;
	void __init();
	void __cleanup();

};
}
}

#endif /* _FieldObject_fields_H_ */
