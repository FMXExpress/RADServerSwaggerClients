/*
 * PushDataObject_aps.h
 *
 * 
 */

#ifndef _PushDataObject_aps_H_
#define _PushDataObject_aps_H_


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

class PushDataObject_aps : public Object {
public:
	/*! \brief Constructor.
	 */
	PushDataObject_aps();
	PushDataObject_aps(char* str);

	/*! \brief Destructor.
	 */
	virtual ~PushDataObject_aps();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	std::string getAlert();

	/*! \brief Set 
	 */
	void setAlert(std::string  alert);
	/*! \brief Get 
	 */
	std::string getBadge();

	/*! \brief Set 
	 */
	void setBadge(std::string  badge);
	/*! \brief Get 
	 */
	std::string getSound();

	/*! \brief Set 
	 */
	void setSound(std::string  sound);

private:
	std::string alert;
	std::string badge;
	std::string sound;
	void __init();
	void __cleanup();

};
}
}

#endif /* _PushDataObject_aps_H_ */
