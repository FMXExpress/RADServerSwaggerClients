/*
 * GroupAddObject.h
 *
 * 
 */

#ifndef _GroupAddObject_H_
#define _GroupAddObject_H_


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

class GroupAddObject : public Object {
public:
	/*! \brief Constructor.
	 */
	GroupAddObject();
	GroupAddObject(char* str);

	/*! \brief Destructor.
	 */
	virtual ~GroupAddObject();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	std::string getGroupname();

	/*! \brief Set 
	 */
	void setGroupname(std::string  groupname);

private:
	std::string groupname;
	void __init();
	void __cleanup();

};
}
}

#endif /* _GroupAddObject_H_ */
