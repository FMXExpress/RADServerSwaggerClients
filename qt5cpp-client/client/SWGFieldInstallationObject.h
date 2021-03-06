/**
 * EMS API Documentation
 * Enterprise Mobility Services API      [Learn about EMS](https://www.embarcadero.com/products/rad-studio/enterprise-mobility-services)      EMS (Enterprise Mobility Services) offers a Mobile Enterprise Application Platform (MEAP)      TurnKey Middleware for Interconnected Distributed Apps
 *
 * OpenAPI spec version: 0.0.0
 * 
 *
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen.git
 * Do not edit the class manually.
 */

/*
 * SWGFieldInstallationObject.h
 *
 * 
 */

#ifndef SWGFieldInstallationObject_H_
#define SWGFieldInstallationObject_H_

#include <QJsonObject>


#include "SWGFieldObject_fields.h"
#include <QList>
#include <QString>

#include "SWGObject.h"

namespace Swagger {

class SWGFieldInstallationObject: public SWGObject {
public:
    SWGFieldInstallationObject();
    SWGFieldInstallationObject(QString json);
    ~SWGFieldInstallationObject();
    void init();
    void cleanup();

    QString asJson () override;
    QJsonObject asJsonObject() override;
    void fromJsonObject(QJsonObject json) override;
    SWGFieldInstallationObject* fromJson(QString jsonString) override;

    QString* getName();
    void setName(QString* name);

    QList<SWGFieldObject_fields*>* getFields();
    void setFields(QList<SWGFieldObject_fields*>* fields);

    bool isCustom();
    void setCustom(bool custom);


    virtual bool isSet() override;

private:
    QString* name;
    bool m_name_isSet;

    QList<SWGFieldObject_fields*>* fields;
    bool m_fields_isSet;

    bool custom;
    bool m_custom_isSet;

};

}

#endif /* SWGFieldInstallationObject_H_ */
