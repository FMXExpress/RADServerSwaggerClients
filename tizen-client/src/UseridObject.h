/*
 * UseridObject.h
 *
 * 
 */

#ifndef _UseridObject_H_
#define _UseridObject_H_


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

class UseridObject : public Object {
public:
	/*! \brief Constructor.
	 */
	UseridObject();
	UseridObject(char* str);

	/*! \brief Destructor.
	 */
	virtual ~UseridObject();

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

private:
	std::string _id;
	void __init();
	void __cleanup();

};
}
}

#endif /* _UseridObject_H_ */
