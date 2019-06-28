/*
 * PushObject.h
 *
 * 
 */

#ifndef _PushObject_H_
#define _PushObject_H_


#include <string>
#include "PushDataObject.h"
#include "PushWhereObject.h"
#include <list>
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

class PushObject : public Object {
public:
	/*! \brief Constructor.
	 */
	PushObject();
	PushObject(char* str);

	/*! \brief Destructor.
	 */
	virtual ~PushObject();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	PushDataObject getData();

	/*! \brief Set 
	 */
	void setData(PushDataObject  data);
	/*! \brief Get 
	 */
	std::list<std::string> getChannels();

	/*! \brief Set 
	 */
	void setChannels(std::list <std::string> channels);
	/*! \brief Get 
	 */
	PushWhereObject getWhere();

	/*! \brief Set 
	 */
	void setWhere(PushWhereObject  where);

private:
	PushDataObject data;
	std::list <std::string>channels;
	PushWhereObject where;
	void __init();
	void __cleanup();

};
}
}

#endif /* _PushObject_H_ */
