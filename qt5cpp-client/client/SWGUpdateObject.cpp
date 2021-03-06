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


#include "SWGUpdateObject.h"

#include "SWGHelpers.h"

#include <QJsonDocument>
#include <QJsonArray>
#include <QObject>
#include <QDebug>

namespace Swagger {

SWGUpdateObject::SWGUpdateObject(QString json) {
    init();
    this->fromJson(json);
}

SWGUpdateObject::SWGUpdateObject() {
    init();
}

SWGUpdateObject::~SWGUpdateObject() {
    this->cleanup();
}

void
SWGUpdateObject::init() {
    field_name = new QString("");
    m_field_name_isSet = false;
}

void
SWGUpdateObject::cleanup() {
    if(field_name != nullptr) { 
        delete field_name;
    }
}

SWGUpdateObject*
SWGUpdateObject::fromJson(QString json) {
    QByteArray array (json.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
    return this;
}

void
SWGUpdateObject::fromJsonObject(QJsonObject pJson) {
    ::Swagger::setValue(&field_name, pJson["fieldName"], "QString", "QString");
    
}

QString
SWGUpdateObject::asJson ()
{
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject
SWGUpdateObject::asJsonObject() {
    QJsonObject obj;
    if(field_name != nullptr && *field_name != QString("")){
        toJsonValue(QString("fieldName"), field_name, obj, QString("QString"));
    }

    return obj;
}

QString*
SWGUpdateObject::getFieldName() {
    return field_name;
}
void
SWGUpdateObject::setFieldName(QString* field_name) {
    this->field_name = field_name;
    this->m_field_name_isSet = true;
}


bool
SWGUpdateObject::isSet(){
    bool isObjectUpdated = false;
    do{
        if(field_name != nullptr && *field_name != QString("")){ isObjectUpdated = true; break;}
    }while(false);
    return isObjectUpdated;
}
}

