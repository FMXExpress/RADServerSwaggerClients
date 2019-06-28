/*
 * _metaObject.h
 *
 * 
 */

#ifndef __metaObject_H_
#define __metaObject_H_


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

class _metaObject : public Object {
public:
	/*! \brief Constructor.
	 */
	_metaObject();
	_metaObject(char* str);

	/*! \brief Destructor.
	 */
	virtual ~_metaObject();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	std::string getCreator();

	/*! \brief Set 
	 */
	void setCreator(std::string  creator);
	/*! \brief Get 
	 */
	std::string getCreated();

	/*! \brief Set 
	 */
	void setCreated(std::string  created);
	/*! \brief Get 
	 */
	std::string getUpdated();

	/*! \brief Set 
	 */
	void setUpdated(std::string  updated);

private:
	std::string creator;
	std::string created;
	std::string updated;
	void __init();
	void __cleanup();

};
}
}

#endif /* __metaObject_H_ */
