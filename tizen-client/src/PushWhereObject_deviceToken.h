/*
 * PushWhereObject_deviceToken.h
 *
 * $in
 */

#ifndef _PushWhereObject_deviceToken_H_
#define _PushWhereObject_deviceToken_H_


#include <string>
#include <list>
#include "Object.h"

/** \defgroup Models Data Structures for API
 *  Classes containing all the Data Structures needed for calling/returned by API endpoints
 *
 */

namespace Tizen {
namespace ArtikCloud {


/*! \brief $in
 *
 *  \ingroup Models
 *
 */

class PushWhereObject_deviceToken : public Object {
public:
	/*! \brief Constructor.
	 */
	PushWhereObject_deviceToken();
	PushWhereObject_deviceToken(char* str);

	/*! \brief Destructor.
	 */
	virtual ~PushWhereObject_deviceToken();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	std::list<std::string> getIn();

	/*! \brief Set 
	 */
	void setIn(std::list <std::string> in);

private:
	std::list <std::string>in;
	void __init();
	void __cleanup();

};
}
}

#endif /* _PushWhereObject_deviceToken_H_ */
