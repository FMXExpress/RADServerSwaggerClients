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
 * SWGGroupObject.h
 *
 * 
 */

#ifndef SWGGroupObject_H_
#define SWGGroupObject_H_

#include <QJsonObject>


#include "SWG_metaGroupObject.h"
#include <QList>
#include <QMap>
#include <QString>

#include "SWGObject.h"

namespace Swagger {

class SWGGroupObject: public SWGObject {
public:
    SWGGroupObject();
    SWGGroupObject(QString json);
    ~SWGGroupObject();
    void init();
    void cleanup();

    QString asJson () override;
    QJsonObject asJsonObject() override;
    void fromJsonObject(QJsonObject json) override;
    SWGGroupObject* fromJson(QString jsonString) override;

    QString* getName();
    void setName(QString* name);

    SWG_metaGroupObject* getMeta();
    void setMeta(SWG_metaGroupObject* _meta);

    QList<QString*>* getUsers();
    void setUsers(QList<QString*>* users);


    virtual bool isSet() override;

private:
    QString* name;
    bool m_name_isSet;

    SWG_metaGroupObject* _meta;
    bool m__meta_isSet;

    QList<QString*>* users;
    bool m_users_isSet;

};

}

#endif /* SWGGroupObject_H_ */
