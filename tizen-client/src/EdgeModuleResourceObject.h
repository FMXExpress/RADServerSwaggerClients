/*
 * EdgeModuleResourceObject.h
 *
 * 
 */

#ifndef _EdgeModuleResourceObject_H_
#define _EdgeModuleResourceObject_H_


#include <string>
#include "_metaEdgeModuleObject.h"
#include <map>
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

class EdgeModuleResourceObject : public Object {
public:
	/*! \brief Constructor.
	 */
	EdgeModuleResourceObject();
	EdgeModuleResourceObject(char* str);

	/*! \brief Destructor.
	 */
	virtual ~EdgeModuleResourceObject();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	std::string getResourcename();

	/*! \brief Set 
	 */
	void setResourcename(std::string  resourcename);
	/*! \brief Get 
	 */
	std::string getModulename();

	/*! \brief Set 
	 */
	void setModulename(std::string  modulename);
	/*! \brief Get 
	 */
	std::string getModuleid();

	/*! \brief Set 
	 */
	void setModuleid(std::string  moduleid);
	/*! \brief Get 
	 */
	_metaEdgeModuleObject getMeta();

	/*! \brief Set 
	 */
	void setMeta(_metaEdgeModuleObject  _meta);

private:
	std::string resourcename;
	std::string modulename;
	std::string moduleid;
	_metaEdgeModuleObject _meta;
	void __init();
	void __cleanup();

};
}
}

#endif /* _EdgeModuleResourceObject_H_ */
