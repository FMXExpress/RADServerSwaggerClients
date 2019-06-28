/*
 * PushWhereObject.h
 *
 * 
 */

#ifndef _PushWhereObject_H_
#define _PushWhereObject_H_


#include <string>
#include "PushWhereObject_deviceToken.h"
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

class PushWhereObject : public Object {
public:
	/*! \brief Constructor.
	 */
	PushWhereObject();
	PushWhereObject(char* str);

	/*! \brief Destructor.
	 */
	virtual ~PushWhereObject();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	std::string getDeviceType();

	/*! \brief Set 
	 */
	void setDeviceType(std::string  deviceType);
	/*! \brief Get 
	 */
	PushWhereObject_deviceToken getDeviceToken();

	/*! \brief Set 
	 */
	void setDeviceToken(PushWhereObject_deviceToken  deviceToken);

private:
	std::string deviceType;
	PushWhereObject_deviceToken deviceToken;
	void __init();
	void __cleanup();

};
}
}

#endif /* _PushWhereObject_H_ */
