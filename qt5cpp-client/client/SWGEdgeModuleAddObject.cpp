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


#include "SWGEdgeModuleAddObject.h"

#include "SWGHelpers.h"

#include <QJsonDocument>
#include <QJsonArray>
#include <QObject>
#include <QDebug>

namespace Swagger {

SWGEdgeModuleAddObject::SWGEdgeModuleAddObject(QString json) {
    init();
    this->fromJson(json);
}

SWGEdgeModuleAddObject::SWGEdgeModuleAddObject() {
    init();
}

SWGEdgeModuleAddObject::~SWGEdgeModuleAddObject() {
    this->cleanup();
}

void
SWGEdgeModuleAddObject::init() {
    modulename = new QString("");
    m_modulename_isSet = false;
    protocol = new QString("");
    m_protocol_isSet = false;
    protocolprops = new QString("");
    m_protocolprops_isSet = false;
}

void
SWGEdgeModuleAddObject::cleanup() {
    if(modulename != nullptr) { 
        delete modulename;
    }
    if(protocol != nullptr) { 
        delete protocol;
    }
    if(protocolprops != nullptr) { 
        delete protocolprops;
    }
}

SWGEdgeModuleAddObject*
SWGEdgeModuleAddObject::fromJson(QString json) {
    QByteArray array (json.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
    return this;
}

void
SWGEdgeModuleAddObject::fromJsonObject(QJsonObject pJson) {
    ::Swagger::setValue(&modulename, pJson["modulename"], "QString", "QString");
    
    ::Swagger::setValue(&protocol, pJson["protocol"], "QString", "QString");
    
    ::Swagger::setValue(&protocolprops, pJson["protocolprops"], "QString", "QString");
    
}

QString
SWGEdgeModuleAddObject::asJson ()
{
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject
SWGEdgeModuleAddObject::asJsonObject() {
    QJsonObject obj;
    if(modulename != nullptr && *modulename != QString("")){
        toJsonValue(QString("modulename"), modulename, obj, QString("QString"));
    }
    if(protocol != nullptr && *protocol != QString("")){
        toJsonValue(QString("protocol"), protocol, obj, QString("QString"));
    }
    if(protocolprops != nullptr && *protocolprops != QString("")){
        toJsonValue(QString("protocolprops"), protocolprops, obj, QString("QString"));
    }

    return obj;
}

QString*
SWGEdgeModuleAddObject::getModulename() {
    return modulename;
}
void
SWGEdgeModuleAddObject::setModulename(QString* modulename) {
    this->modulename = modulename;
    this->m_modulename_isSet = true;
}

QString*
SWGEdgeModuleAddObject::getProtocol() {
    return protocol;
}
void
SWGEdgeModuleAddObject::setProtocol(QString* protocol) {
    this->protocol = protocol;
    this->m_protocol_isSet = true;
}

QString*
SWGEdgeModuleAddObject::getProtocolprops() {
    return protocolprops;
}
void
SWGEdgeModuleAddObject::setProtocolprops(QString* protocolprops) {
    this->protocolprops = protocolprops;
    this->m_protocolprops_isSet = true;
}


bool
SWGEdgeModuleAddObject::isSet(){
    bool isObjectUpdated = false;
    do{
        if(modulename != nullptr && *modulename != QString("")){ isObjectUpdated = true; break;}
        if(protocol != nullptr && *protocol != QString("")){ isObjectUpdated = true; break;}
        if(protocolprops != nullptr && *protocolprops != QString("")){ isObjectUpdated = true; break;}
    }while(false);
    return isObjectUpdated;
}
}

