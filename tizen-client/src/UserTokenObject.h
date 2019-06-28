/*
 * UserTokenObject.h
 *
 * 
 */

#ifndef _UserTokenObject_H_
#define _UserTokenObject_H_


#include <string>
#include "_metaObject.h"
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

class UserTokenObject : public Object {
public:
	/*! \brief Constructor.
	 */
	UserTokenObject();
	UserTokenObject(char* str);

	/*! \brief Destructor.
	 */
	virtual ~UserTokenObject();

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
	/*! \brief Get 
	 */
	std::string getSessiontoken();

	/*! \brief Set 
	 */
	void setSessiontoken(std::string  sessiontoken);

private:
	std::string id;
	std::string username;
	_metaObject _meta;
	std::string sessiontoken;
	void __init();
	void __cleanup();

};
}
}

#endif /* _UserTokenObject_H_ */
