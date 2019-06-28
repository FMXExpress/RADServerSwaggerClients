/*
 * UserSignUpResponseObject.h
 *
 * 
 */

#ifndef _UserSignUpResponseObject_H_
#define _UserSignUpResponseObject_H_


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

class UserSignUpResponseObject : public Object {
public:
	/*! \brief Constructor.
	 */
	UserSignUpResponseObject();
	UserSignUpResponseObject(char* str);

	/*! \brief Destructor.
	 */
	virtual ~UserSignUpResponseObject();

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
	void setId(std::string  _id);
	/*! \brief Get 
	 */
	std::string getSessionToken();

	/*! \brief Set 
	 */
	void setSessionToken(std::string  sessionToken);

private:
	std::string _id;
	std::string sessionToken;
	void __init();
	void __cleanup();

};
}
}

#endif /* _UserSignUpResponseObject_H_ */
