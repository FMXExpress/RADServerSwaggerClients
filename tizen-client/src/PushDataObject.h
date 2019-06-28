/*
 * PushDataObject.h
 *
 * 
 */

#ifndef _PushDataObject_H_
#define _PushDataObject_H_


#include <string>
#include "PushDataObject_aps.h"
#include "PushDataObject_extras.h"
#include "PushDataObject_gcm.h"
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

class PushDataObject : public Object {
public:
	/*! \brief Constructor.
	 */
	PushDataObject();
	PushDataObject(char* str);

	/*! \brief Destructor.
	 */
	virtual ~PushDataObject();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	PushDataObject_gcm getGcm();

	/*! \brief Set 
	 */
	void setGcm(PushDataObject_gcm  gcm);
	/*! \brief Get 
	 */
	PushDataObject_aps getAps();

	/*! \brief Set 
	 */
	void setAps(PushDataObject_aps  aps);
	/*! \brief Get 
	 */
	PushDataObject_extras getExtras();

	/*! \brief Set 
	 */
	void setExtras(PushDataObject_extras  extras);

private:
	PushDataObject_gcm gcm;
	PushDataObject_aps aps;
	PushDataObject_extras extras;
	void __init();
	void __cleanup();

};
}
}

#endif /* _PushDataObject_H_ */
