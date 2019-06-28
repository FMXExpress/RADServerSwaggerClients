/*
 * UserObject.h
 *
 * 
 */

#ifndef _UserObject_H_
#define _UserObject_H_


#include <string>
#include "_metaObject.h"
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

class UserObject : public Object {
public:
	/*! \brief Constructor.
	 */
	UserObject();
	UserObject(char* str);

	/*! \brief Destructor.
	 */
	virtual ~UserObject();

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
	void setId(std::string  id);
	/*! \brief Get 
	 */
	std::string getUsername();

	/*! \brief Set 
	 */
	void setUsername(std::string  username);
	/*! \brief Get 
	 */
	_metaObject getMeta();

	/*! \brief Set 
	 */
	void setMeta(_metaObject  _meta);

private:
	std::string id;
	std::string username;
	_metaObject _meta;
	void __init();
	void __cleanup();

};
}
}

#endif /* _UserObject_H_ */
