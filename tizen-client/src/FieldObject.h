/*
 * FieldObject.h
 *
 * 
 */

#ifndef _FieldObject_H_
#define _FieldObject_H_


#include <string>
#include "FieldObject_fields.h"
#include <list>
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

class FieldObject : public Object {
public:
	/*! \brief Constructor.
	 */
	FieldObject();
	FieldObject(char* str);

	/*! \brief Destructor.
	 */
	virtual ~FieldObject();

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
	/*! \brief Get 
	 */
	std::list<FieldObject_fields> getFields();

	/*! \brief Set 
	 */
	void setFields(std::list <FieldObject_fields> fields);
	/*! \brief Get 
	 */
	bool getCustom();

	/*! \brief Set 
	 */
	void setCustom(bool  custom);

private:
	std::string name;
	std::list <FieldObject_fields>fields;
	bool custom;
	void __init();
	void __cleanup();

};
}
}

#endif /* _FieldObject_H_ */
