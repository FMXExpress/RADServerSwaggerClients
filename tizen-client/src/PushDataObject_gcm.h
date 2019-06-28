/*
 * PushDataObject_gcm.h
 *
 * 
 */

#ifndef _PushDataObject_gcm_H_
#define _PushDataObject_gcm_H_


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

class PushDataObject_gcm : public Object {
public:
	/*! \brief Constructor.
	 */
	PushDataObject_gcm();
	PushDataObject_gcm(char* str);

	/*! \brief Destructor.
	 */
	virtual ~PushDataObject_gcm();

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
	/*! \brief Get 
	 */
	std::string getTitle();

	/*! \brief Set 
	 */
	void setTitle(std::string  title);

private:
	std::string message;
	std::string title;
	void __init();
	void __cleanup();

};
}
}

#endif /* _PushDataObject_gcm_H_ */
