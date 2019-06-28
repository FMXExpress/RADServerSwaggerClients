/*
 * EdgeModuleObject.h
 *
 * 
 */

#ifndef _EdgeModuleObject_H_
#define _EdgeModuleObject_H_


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

class EdgeModuleObject : public Object {
public:
	/*! \brief Constructor.
	 */
	EdgeModuleObject();
	EdgeModuleObject(char* str);

	/*! \brief Destructor.
	 */
	virtual ~EdgeModuleObject();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	std::string getModulename();

	/*! \brief Set 
	 */
	void setModulename(std::string  modulename);
	/*! \brief Get 
	 */
	std::string getId();

	/*! \brief Set 
	 */
	void setId(std::string  _id);
	/*! \brief Get 
	 */
	std::string getProtocol();

	/*! \brief Set 
	 */
	void setProtocol(std::string  protocol);
	/*! \brief Get 
	 */
	std::string getProtocolprops();

	/*! \brief Set 
	 */
	void setProtocolprops(std::string  protocolprops);
	/*! \brief Get 
	 */
	_metaEdgeModuleObject getMeta();

	/*! \brief Set 
	 */
	void setMeta(_metaEdgeModuleObject  _meta);

private:
	std::string modulename;
	std::string _id;
	std::string protocol;
	std::string protocolprops;
	_metaEdgeModuleObject _meta;
	void __init();
	void __cleanup();

};
}
}

#endif /* _EdgeModuleObject_H_ */
