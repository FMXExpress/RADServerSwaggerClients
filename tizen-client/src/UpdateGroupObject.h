/*
 * UpdateGroupObject.h
 *
 * 
 */

#ifndef _UpdateGroupObject_H_
#define _UpdateGroupObject_H_


#include <string>
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

class UpdateGroupObject : public Object {
public:
	/*! \brief Constructor.
	 */
	UpdateGroupObject();
	UpdateGroupObject(char* str);

	/*! \brief Destructor.
	 */
	virtual ~UpdateGroupObject();

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
	/*! \brief Get 
	 */
	std::list<std::string> getUsers();

	/*! \brief Set 
	 */
	void setUsers(std::list <std::string> users);

private:
	std::string fieldName;
	std::list <std::string>users;
	void __init();
	void __cleanup();

};
}
}

#endif /* _UpdateGroupObject_H_ */
