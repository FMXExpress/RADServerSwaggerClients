/*
 * GroupObject.h
 *
 * 
 */

#ifndef _GroupObject_H_
#define _GroupObject_H_


#include <string>
#include "_metaGroupObject.h"
#include <list>
#include <map>
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

class GroupObject : public Object {
public:
	/*! \brief Constructor.
	 */
	GroupObject();
	GroupObject(char* str);

	/*! \brief Destructor.
	 */
	virtual ~GroupObject();

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
	_metaGroupObject getMeta();

	/*! \brief Set 
	 */
	void setMeta(_metaGroupObject  _meta);
	/*! \brief Get 
	 */
	std::list<std::string> getUsers();

	/*! \brief Set 
	 */
	void setUsers(std::list <std::string> users);

private:
	std::string name;
	_metaGroupObject _meta;
	std::list <std::string>users;
	void __init();
	void __cleanup();

};
}
}

#endif /* _GroupObject_H_ */
