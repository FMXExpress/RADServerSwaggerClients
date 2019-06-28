# swagger-android-client

## Requirements

Building the API client library requires [Maven](https://maven.apache.org/) to be installed.

## Installation

To install the API client library to your local Maven repository, simply execute:

```shell
mvn install
```

To deploy it to a remote Maven repository instead, configure the settings of the repository and execute:

```shell
mvn deploy
```

Refer to the [official documentation](https://maven.apache.org/plugins/maven-deploy-plugin/usage.html) for more information.

### Maven users

Add this dependency to your project's POM:

```xml
<dependency>
    <groupId>io.swagger</groupId>
    <artifactId>swagger-android-client</artifactId>
    <version>1.0.0</version>
    <scope>compile</scope>
</dependency>
```

### Gradle users

Add this dependency to your project's build file:

```groovy
compile "io.swagger:swagger-android-client:1.0.0"
```

### Others

At first generate the JAR by executing:

    mvn package

Then manually install the following JARs:

* target/swagger-android-client-1.0.0.jar
* target/lib/*.jar

## Getting Started

Please follow the [installation](#installation) instruction and execute the following Java code:

```java

import io.swagger.client.api.ApiDocApi;

public class ApiDocApiExample {

    public static void main(String[] args) {
        ApiDocApi apiInstance = new ApiDocApi();
        String xEmbarcaderoApplicationId = "xEmbarcaderoApplicationId_example"; // String | 
        String xEmbarcaderoAppSecret = "xEmbarcaderoAppSecret_example"; // String | 
        String xEmbarcaderoMasterSecret = "xEmbarcaderoMasterSecret_example"; // String | 
        try {
            apiInstance.aPI(xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
        } catch (ApiException e) {
            System.err.println("Exception when calling ApiDocApi#aPI");
            e.printStackTrace();
        }
    }
}

```

## Documentation for API Endpoints

All URIs are relative to *http://localhost:8080*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*ApiDocApi* | [**aPI**](docs/ApiDocApi.md#aPI) | **GET** /api | Get API EndPoints
*ApiDocApi* | [**getAPIJSONFormat**](docs/ApiDocApi.md#getAPIJSONFormat) | **GET** /api/apidoc.json | Get JSON
*ApiDocApi* | [**getAPIYAMLFormat**](docs/ApiDocApi.md#getAPIYAMLFormat) | **GET** /api/apidoc.yaml | Get YAML
*ApiDocApi* | [**getAPIYAMLFormatEndPoint**](docs/ApiDocApi.md#getAPIYAMLFormatEndPoint) | **GET** /api/{item}/apidoc.yaml | Get API EndPoint
*EdgeModulesApi* | [**getModule**](docs/EdgeModulesApi.md#getModule) | **GET** /edgemodules/{mname} | Get Module
*EdgeModulesApi* | [**getModuleResource**](docs/EdgeModulesApi.md#getModuleResource) | **GET** /edgemodules/{mname}/resources/{name} | Get EdgeModule Resource
*EdgeModulesApi* | [**getModuleResources**](docs/EdgeModulesApi.md#getModuleResources) | **GET** /edgemodules/{mname}/resources | Get EdgeModule Resources
*EdgeModulesApi* | [**getModules**](docs/EdgeModulesApi.md#getModules) | **GET** /edgemodules | Get Module
*EdgeModulesApi* | [**getModulesFields**](docs/EdgeModulesApi.md#getModulesFields) | **GET** /edgemodules/fields | Get Fields
*EdgeModulesApi* | [**getResources**](docs/EdgeModulesApi.md#getResources) | **GET** /edgemodules/resources | Get EdgeModules Resources
*EdgeModulesApi* | [**getResourcesFields**](docs/EdgeModulesApi.md#getResourcesFields) | **GET** /edgemodules/resources/fields | Get Resource Fields
*EdgeModulesApi* | [**registerModule**](docs/EdgeModulesApi.md#registerModule) | **POST** /edgemodules | Add Module
*EdgeModulesApi* | [**registerModuleResource**](docs/EdgeModulesApi.md#registerModuleResource) | **POST** /edgemodules/{mname}/resources | Add Module Resource
*EdgeModulesApi* | [**unregisterModule**](docs/EdgeModulesApi.md#unregisterModule) | **DELETE** /edgemodules/{mname} | Delete Module
*EdgeModulesApi* | [**unregisterModuleResource**](docs/EdgeModulesApi.md#unregisterModuleResource) | **DELETE** /edgemodules/{mname}/resources/{name} | Delete Module Resource
*EdgeModulesApi* | [**updateModule**](docs/EdgeModulesApi.md#updateModule) | **PUT** /edgemodules/{mname} | Update Module
*EdgeModulesApi* | [**updateModuleResource**](docs/EdgeModulesApi.md#updateModuleResource) | **PUT** /edgemodules/{mname}/resources/{name} | Update Module Resource
*EdgeModulesInvokersApi* | [**deleteResourceEndpoint**](docs/EdgeModulesInvokersApi.md#deleteResourceEndpoint) | **DELETE** /edgemodules/{mname}/{rname} | Invoke Resource Delete Method
*EdgeModulesInvokersApi* | [**deleteResourceEndpointItem**](docs/EdgeModulesInvokersApi.md#deleteResourceEndpointItem) | **DELETE** /edgemodules/{mname}/{rname}/{wildcard} | Invoke Resource/_* Delete Method
*EdgeModulesInvokersApi* | [**getResourceEndpoint**](docs/EdgeModulesInvokersApi.md#getResourceEndpoint) | **GET** /edgemodules/{mname}/{rname} | Invoke Resource Get Method
*EdgeModulesInvokersApi* | [**getResourceEndpointItem**](docs/EdgeModulesInvokersApi.md#getResourceEndpointItem) | **GET** /edgemodules/{mname}/{rname}/{wildcard} | Invoke Resource/_* Get Method
*EdgeModulesInvokersApi* | [**patchResourceEndpoint**](docs/EdgeModulesInvokersApi.md#patchResourceEndpoint) | **PATCH** /edgemodules/{mname}/{rname} | Invoke Resource Patch Method
*EdgeModulesInvokersApi* | [**patchResourceEndpointItem**](docs/EdgeModulesInvokersApi.md#patchResourceEndpointItem) | **PATCH** /edgemodules/{mname}/{rname}/{wildcard} | Invoke Resource/_* Patch Method
*EdgeModulesInvokersApi* | [**postResourceEndpoint**](docs/EdgeModulesInvokersApi.md#postResourceEndpoint) | **POST** /edgemodules/{mname}/{rname} | Invoke Resource Post Method
*EdgeModulesInvokersApi* | [**postResourceEndpointItem**](docs/EdgeModulesInvokersApi.md#postResourceEndpointItem) | **POST** /edgemodules/{mname}/{rname}/{wildcard} | Invoke Resource/_* Post Method
*EdgeModulesInvokersApi* | [**putResourceEndpoint**](docs/EdgeModulesInvokersApi.md#putResourceEndpoint) | **PUT** /edgemodules/{mname}/{rname} | Invoke Resource Put Method
*EdgeModulesInvokersApi* | [**putResourceEndpointItem**](docs/EdgeModulesInvokersApi.md#putResourceEndpointItem) | **PUT** /edgemodules/{mname}/{rname}/{wildcard} | Invoke Resource/_* Put Method
*GroupsApi* | [**addGroup**](docs/GroupsApi.md#addGroup) | **POST** /groups | Add Group
*GroupsApi* | [**deleteGroup**](docs/GroupsApi.md#deleteGroup) | **DELETE** /groups/{item} | Delete Group
*GroupsApi* | [**getGroup**](docs/GroupsApi.md#getGroup) | **GET** /groups/{item} | Get Group
*GroupsApi* | [**getGroupFields**](docs/GroupsApi.md#getGroupFields) | **GET** /groups/fields | Get Fields
*GroupsApi* | [**getGroups**](docs/GroupsApi.md#getGroups) | **GET** /groups | Get Groups
*GroupsApi* | [**updateGroup**](docs/GroupsApi.md#updateGroup) | **PUT** /groups/{item} | Update Group
*InstallationsApi* | [**addInstallation**](docs/InstallationsApi.md#addInstallation) | **POST** /installations | Add Installation
*InstallationsApi* | [**deleteInstallation**](docs/InstallationsApi.md#deleteInstallation) | **DELETE** /installations/{id} | Delete Installation
*InstallationsApi* | [**getChannels**](docs/InstallationsApi.md#getChannels) | **GET** /installations/channels | Get Installation Channels
*InstallationsApi* | [**getInstallation**](docs/InstallationsApi.md#getInstallation) | **GET** /installations/{id} | Get Installation
*InstallationsApi* | [**getInstallationFields**](docs/InstallationsApi.md#getInstallationFields) | **GET** /installations/fields | Get Fields
*InstallationsApi* | [**getInstallations**](docs/InstallationsApi.md#getInstallations) | **GET** /installations | Get Installations
*InstallationsApi* | [**updateInstallation**](docs/InstallationsApi.md#updateInstallation) | **PUT** /installations/{id} | Update Installation
*PushApi* | [**send**](docs/PushApi.md#send) | **POST** /push | Send Push
*UsersApi* | [**addUser**](docs/UsersApi.md#addUser) | **POST** /users | Add User
*UsersApi* | [**deleteUser**](docs/UsersApi.md#deleteUser) | **DELETE** /users/{id} | Delete User
*UsersApi* | [**getUser**](docs/UsersApi.md#getUser) | **GET** /users/{id} | Get User
*UsersApi* | [**getUserFields**](docs/UsersApi.md#getUserFields) | **GET** /users/fields | Get Fields
*UsersApi* | [**getUserGroups**](docs/UsersApi.md#getUserGroups) | **GET** /users/{id}/groups | Get User Groups
*UsersApi* | [**getUsers**](docs/UsersApi.md#getUsers) | **GET** /users | Get Users
*UsersApi* | [**loginUser**](docs/UsersApi.md#loginUser) | **POST** /users/login | Log In
*UsersApi* | [**logoutUser**](docs/UsersApi.md#logoutUser) | **POST** /users/logout | sPostLogoutSummaryTitle
*UsersApi* | [**signupUser**](docs/UsersApi.md#signupUser) | **POST** /users/signup | Sign Up  User
*UsersApi* | [**updateUser**](docs/UsersApi.md#updateUser) | **PUT** /users/{id} | Update User
*VersionApi* | [**getVersion**](docs/VersionApi.md#getVersion) | **GET** /version | Get version


## Documentation for Models

 - [ChannelName](docs/ChannelName.md)
 - [EdgeModuleAddObject](docs/EdgeModuleAddObject.md)
 - [EdgeModuleAddedObject](docs/EdgeModuleAddedObject.md)
 - [EdgeModuleObject](docs/EdgeModuleObject.md)
 - [EdgeModuleResourceAddObject](docs/EdgeModuleResourceAddObject.md)
 - [EdgeModuleResourceAddedObject](docs/EdgeModuleResourceAddedObject.md)
 - [EdgeModuleResourceObject](docs/EdgeModuleResourceObject.md)
 - [EdgeModuleResourceUpdateObject](docs/EdgeModuleResourceUpdateObject.md)
 - [EdgeModuleResourceUpdatedObject](docs/EdgeModuleResourceUpdatedObject.md)
 - [EdgeModuleUpdateObject](docs/EdgeModuleUpdateObject.md)
 - [EdgeModuleUpdatedObject](docs/EdgeModuleUpdatedObject.md)
 - [FieldGroupObject](docs/FieldGroupObject.md)
 - [FieldInstallationObject](docs/FieldInstallationObject.md)
 - [FieldObject](docs/FieldObject.md)
 - [FieldObjectFields](docs/FieldObjectFields.md)
 - [FieldsEdgeModuleObject](docs/FieldsEdgeModuleObject.md)
 - [GroupAddObject](docs/GroupAddObject.md)
 - [GroupName](docs/GroupName.md)
 - [GroupObject](docs/GroupObject.md)
 - [InstallationAddObject](docs/InstallationAddObject.md)
 - [InstallationAddedObject](docs/InstallationAddedObject.md)
 - [InstallationObject](docs/InstallationObject.md)
 - [MetaEdgeModuleObject](docs/MetaEdgeModuleObject.md)
 - [MetaGroupObject](docs/MetaGroupObject.md)
 - [MetaInstallationObject](docs/MetaInstallationObject.md)
 - [MetaObject](docs/MetaObject.md)
 - [PushDataObject](docs/PushDataObject.md)
 - [PushDataObjectAps](docs/PushDataObjectAps.md)
 - [PushDataObjectExtras](docs/PushDataObjectExtras.md)
 - [PushDataObjectGcm](docs/PushDataObjectGcm.md)
 - [PushObject](docs/PushObject.md)
 - [PushWhereObject](docs/PushWhereObject.md)
 - [PushWhereObjectDeviceToken](docs/PushWhereObjectDeviceToken.md)
 - [UpdateGroupObject](docs/UpdateGroupObject.md)
 - [UpdateInstallationObject](docs/UpdateInstallationObject.md)
 - [UpdateObject](docs/UpdateObject.md)
 - [UpdatedGroupObject](docs/UpdatedGroupObject.md)
 - [UpdatedInstallationObject](docs/UpdatedInstallationObject.md)
 - [UpdatedObject](docs/UpdatedObject.md)
 - [UserCredentialsObject](docs/UserCredentialsObject.md)
 - [UserObject](docs/UserObject.md)
 - [UserSignUpResponseObject](docs/UserSignUpResponseObject.md)
 - [UserTokenObject](docs/UserTokenObject.md)
 - [UseridObject](docs/UseridObject.md)
 - [VersionObject](docs/VersionObject.md)


## Documentation for Authorization

All endpoints do not require authorization.
Authentication schemes defined for the API:

## Recommendation

It's recommended to create an instance of `ApiClient` per thread in a multithreaded environment to avoid any potential issues.

## Author



