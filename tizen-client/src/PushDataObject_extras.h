/*
 * PushDataObject_extras.h
 *
 * 
 */

#ifndef _PushDataObject_extras_H_
#define _PushDataObject_extras_H_


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

class PushDataObject_extras : public Object {
public:
	/*! \brief Constructor.
	 */
	PushDataObject_extras();
	PushDataObject_extras(char* str);

	/*! \brief Destructor.
	 */
	virtual ~PushDataObject_extras();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	std::string getMessage();

	/*! \brief Set 
	 */
	void setMessage(std::string  message);

private:
	std::string message;
	void __init();
	void __cleanup();

};
}
}

#endif /* _PushDataObject_extras_H_ */
