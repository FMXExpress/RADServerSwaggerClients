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


#include "SWGGroupObject.h"

#include "SWGHelpers.h"

#include <QJsonDocument>
#include <QJsonArray>
#include <QObject>
#include <QDebug>

namespace Swagger {

SWGGroupObject::SWGGroupObject(QString json) {
    init();
    this->fromJson(json);
}

SWGGroupObject::SWGGroupObject() {
    init();
}

SWGGroupObject::~SWGGroupObject() {
    this->cleanup();
}

void
SWGGroupObject::init() {
    name = new QString("");
    m_name_isSet = false;
    _meta = new SWG_metaGroupObject();
    m__meta_isSet = false;
    users = new QList<QString*>();
    m_users_isSet = false;
}

void
SWGGroupObject::cleanup() {
    if(name != nullptr) { 
        delete name;
    }
    if(_meta != nullptr) { 
        delete _meta;
    }
    if(users != nullptr) { 
        auto arr = users;
        for(auto o: *arr) { 
            delete o;
        }
        delete users;
    }
}

SWGGroupObject*
SWGGroupObject::fromJson(QString json) {
    QByteArray array (json.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
    return this;
}

void
SWGGroupObject::fromJsonObject(QJsonObject pJson) {
    ::Swagger::setValue(&name, pJson["name"], "QString", "QString");
    
    ::Swagger::setValue(&_meta, pJson["_meta"], "SWG_metaGroupObject", "SWG_metaGroupObject");
    
    
    ::Swagger::setValue(&users, pJson["users"], "QList", "QString");
}

QString
SWGGroupObject::asJson ()
{
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject
SWGGroupObject::asJsonObject() {
    QJsonObject obj;
    if(name != nullptr && *name != QString("")){
        toJsonValue(QString("name"), name, obj, QString("QString"));
    }
    if((_meta != nullptr) && (_meta->isSet())){
        toJsonValue(QString("_meta"), _meta, obj, QString("SWG_metaGroupObject"));
    }
    if(users->size() > 0){
        toJsonArray((QList<void*>*)users, obj, "users", "QString");
    }

    return obj;
}

QString*
SWGGroupObject::getName() {
    return name;
}
void
SWGGroupObject::setName(QString* name) {
    this->name = name;
    this->m_name_isSet = true;
}

SWG_metaGroupObject*
SWGGroupObject::getMeta() {
    return _meta;
}
void
SWGGroupObject::setMeta(SWG_metaGroupObject* _meta) {
    this->_meta = _meta;
    this->m__meta_isSet = true;
}

QList<QString*>*
SWGGroupObject::getUsers() {
    return users;
}
void
SWGGroupObject::setUsers(QList<QString*>* users) {
    this->users = users;
    this->m_users_isSet = true;
}


bool
SWGGroupObject::isSet(){
    bool isObjectUpdated = false;
    do{
        if(name != nullptr && *name != QString("")){ isObjectUpdated = true; break;}
        if(_meta != nullptr && _meta->isSet()){ isObjectUpdated = true; break;}
        if(users->size() > 0){ isObjectUpdated = true; break;}
    }while(false);
    return isObjectUpdated;
}
}
