/*
 * UserCredentialsObject.h
 *
 * 
 */

#ifndef _UserCredentialsObject_H_
#define _UserCredentialsObject_H_


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

class UserCredentialsObject : public Object {
public:
	/*! \brief Constructor.
	 */
	UserCredentialsObject();
	UserCredentialsObject(char* str);

	/*! \brief Destructor.
	 */
	virtual ~UserCredentialsObject();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	std::string getUsername();

	/*! \brief Set 
	 */
	void setUsername(std::string  username);
	/*! \brief Get 
	 */
	std::string getPassword();

	/*! \brief Set 
	 */
	void setPassword(std::string  password);

private:
	std::string username;
	std::string password;
	void __init();
	void __cleanup();

};
}
}

#endif /* _UserCredentialsObject_H_ */
