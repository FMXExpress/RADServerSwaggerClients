# io.swagger.client - Kotlin client library for EMS API Documentation

## Requires

* Kotlin 1.1.2
* Gradle 3.3

## Build

First, create the gradle wrapper script:

```
gradle wrapper
```

Then, run:

```
./gradlew check assemble
```

This runs all tests and packages the library.

## Features/Implementation Notes

* Supports JSON inputs/outputs, File inputs, and Form inputs.
* Supports collection formats for query parameters: csv, tsv, ssv, pipes.
* Some Kotlin and Java types are fully qualified to avoid conflicts with types defined in Swagger definitions.
* Implementation of ApiClient is intended to reduce method counts, specifically to benefit Android targets.

<a name="documentation-for-api-endpoints"></a>
## Documentation for API Endpoints

All URIs are relative to *http://localhost:8080*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*ApiDocApi* | [**aPI**](docs/ApiDocApi.md#api) | **GET** /api | Get API EndPoints
*ApiDocApi* | [**getAPIJSONFormat**](docs/ApiDocApi.md#getapijsonformat) | **GET** /api/apidoc.json | Get JSON
*ApiDocApi* | [**getAPIYAMLFormat**](docs/ApiDocApi.md#getapiyamlformat) | **GET** /api/apidoc.yaml | Get YAML
*ApiDocApi* | [**getAPIYAMLFormat EndPoint**](docs/ApiDocApi.md#getapiyamlformat endpoint) | **GET** /api/{item}/apidoc.yaml | Get API EndPoint
*EdgeModulesApi* | [**getModule**](docs/EdgeModulesApi.md#getmodule) | **GET** /edgemodules/{mname} | Get Module
*EdgeModulesApi* | [**getModuleResource**](docs/EdgeModulesApi.md#getmoduleresource) | **GET** /edgemodules/{mname}/resources/{name} | Get EdgeModule Resource
*EdgeModulesApi* | [**getModuleResources**](docs/EdgeModulesApi.md#getmoduleresources) | **GET** /edgemodules/{mname}/resources | Get EdgeModule Resources
*EdgeModulesApi* | [**getModules**](docs/EdgeModulesApi.md#getmodules) | **GET** /edgemodules | Get Module
*EdgeModulesApi* | [**getModulesFields**](docs/EdgeModulesApi.md#getmodulesfields) | **GET** /edgemodules/fields | Get Fields
*EdgeModulesApi* | [**getResources**](docs/EdgeModulesApi.md#getresources) | **GET** /edgemodules/resources | Get EdgeModules Resources
*EdgeModulesApi* | [**getResourcesFields**](docs/EdgeModulesApi.md#getresourcesfields) | **GET** /edgemodules/resources/fields | Get Resource Fields
*EdgeModulesApi* | [**registerModule**](docs/EdgeModulesApi.md#registermodule) | **POST** /edgemodules | Add Module
*EdgeModulesApi* | [**registerModuleResource**](docs/EdgeModulesApi.md#registermoduleresource) | **POST** /edgemodules/{mname}/resources | Add Module Resource
*EdgeModulesApi* | [**unregisterModule**](docs/EdgeModulesApi.md#unregistermodule) | **DELETE** /edgemodules/{mname} | Delete Module
*EdgeModulesApi* | [**unregisterModuleResource**](docs/EdgeModulesApi.md#unregistermoduleresource) | **DELETE** /edgemodules/{mname}/resources/{name} | Delete Module Resource
*EdgeModulesApi* | [**updateModule**](docs/EdgeModulesApi.md#updatemodule) | **PUT** /edgemodules/{mname} | Update Module
*EdgeModulesApi* | [**updateModuleResource**](docs/EdgeModulesApi.md#updatemoduleresource) | **PUT** /edgemodules/{mname}/resources/{name} | Update Module Resource
*EdgeModulesInvokersApi* | [**deleteResourceEndpoint**](docs/EdgeModulesInvokersApi.md#deleteresourceendpoint) | **DELETE** /edgemodules/{mname}/{rname} | Invoke Resource Delete Method
*EdgeModulesInvokersApi* | [**deleteResourceEndpointItem**](docs/EdgeModulesInvokersApi.md#deleteresourceendpointitem) | **DELETE** /edgemodules/{mname}/{rname}/{wildcard} | Invoke Resource/_* Delete Method
*EdgeModulesInvokersApi* | [**getResourceEndpoint**](docs/EdgeModulesInvokersApi.md#getresourceendpoint) | **GET** /edgemodules/{mname}/{rname} | Invoke Resource Get Method
*EdgeModulesInvokersApi* | [**getResourceEndpointItem**](docs/EdgeModulesInvokersApi.md#getresourceendpointitem) | **GET** /edgemodules/{mname}/{rname}/{wildcard} | Invoke Resource/_* Get Method
*EdgeModulesInvokersApi* | [**patchResourceEndpoint**](docs/EdgeModulesInvokersApi.md#patchresourceendpoint) | **PATCH** /edgemodules/{mname}/{rname} | Invoke Resource Patch Method
*EdgeModulesInvokersApi* | [**patchResourceEndpointItem**](docs/EdgeModulesInvokersApi.md#patchresourceendpointitem) | **PATCH** /edgemodules/{mname}/{rname}/{wildcard} | Invoke Resource/_* Patch Method
*EdgeModulesInvokersApi* | [**postResourceEndpoint**](docs/EdgeModulesInvokersApi.md#postresourceendpoint) | **POST** /edgemodules/{mname}/{rname} | Invoke Resource Post Method
*EdgeModulesInvokersApi* | [**postResourceEndpointItem**](docs/EdgeModulesInvokersApi.md#postresourceendpointitem) | **POST** /edgemodules/{mname}/{rname}/{wildcard} | Invoke Resource/_* Post Method
*EdgeModulesInvokersApi* | [**putResourceEndpoint**](docs/EdgeModulesInvokersApi.md#putresourceendpoint) | **PUT** /edgemodules/{mname}/{rname} | Invoke Resource Put Method
*EdgeModulesInvokersApi* | [**putResourceEndpointItem**](docs/EdgeModulesInvokersApi.md#putresourceendpointitem) | **PUT** /edgemodules/{mname}/{rname}/{wildcard} | Invoke Resource/_* Put Method
*GroupsApi* | [**addGroup**](docs/GroupsApi.md#addgroup) | **POST** /groups | Add Group
*GroupsApi* | [**deleteGroup**](docs/GroupsApi.md#deletegroup) | **DELETE** /groups/{item} | Delete Group
*GroupsApi* | [**getGroup**](docs/GroupsApi.md#getgroup) | **GET** /groups/{item} | Get Group
*GroupsApi* | [**getGroupFields**](docs/GroupsApi.md#getgroupfields) | **GET** /groups/fields | Get Fields
*GroupsApi* | [**getGroups**](docs/GroupsApi.md#getgroups) | **GET** /groups | Get Groups
*GroupsApi* | [**updateGroup**](docs/GroupsApi.md#updategroup) | **PUT** /groups/{item} | Update Group
*InstallationsApi* | [**addInstallation**](docs/InstallationsApi.md#addinstallation) | **POST** /installations | Add Installation
*InstallationsApi* | [**deleteInstallation**](docs/InstallationsApi.md#deleteinstallation) | **DELETE** /installations/{id} | Delete Installation
*InstallationsApi* | [**getChannels**](docs/InstallationsApi.md#getchannels) | **GET** /installations/channels | Get Installation Channels
*InstallationsApi* | [**getInstallation**](docs/InstallationsApi.md#getinstallation) | **GET** /installations/{id} | Get Installation
*InstallationsApi* | [**getInstallationFields**](docs/InstallationsApi.md#getinstallationfields) | **GET** /installations/fields | Get Fields
*InstallationsApi* | [**getInstallations**](docs/InstallationsApi.md#getinstallations) | **GET** /installations | Get Installations
*InstallationsApi* | [**updateInstallation**](docs/InstallationsApi.md#updateinstallation) | **PUT** /installations/{id} | Update Installation
*PushApi* | [**send**](docs/PushApi.md#send) | **POST** /push | Send Push
*UsersApi* | [**addUser**](docs/UsersApi.md#adduser) | **POST** /users | Add User
*UsersApi* | [**deleteUser**](docs/UsersApi.md#deleteuser) | **DELETE** /users/{id} | Delete User
*UsersApi* | [**getUser**](docs/UsersApi.md#getuser) | **GET** /users/{id} | Get User
*UsersApi* | [**getUserFields**](docs/UsersApi.md#getuserfields) | **GET** /users/fields | Get Fields
*UsersApi* | [**getUserGroups**](docs/UsersApi.md#getusergroups) | **GET** /users/{id}/groups | Get User Groups
*UsersApi* | [**getUsers**](docs/UsersApi.md#getusers) | **GET** /users | Get Users
*UsersApi* | [**loginUser**](docs/UsersApi.md#loginuser) | **POST** /users/login | Log In
*UsersApi* | [**logoutUser**](docs/UsersApi.md#logoutuser) | **POST** /users/logout | sPostLogoutSummaryTitle
*UsersApi* | [**signupUser**](docs/UsersApi.md#signupuser) | **POST** /users/signup | Sign Up  User
*UsersApi* | [**updateUser**](docs/UsersApi.md#updateuser) | **PUT** /users/{id} | Update User
*VersionApi* | [**getVersion**](docs/VersionApi.md#getversion) | **GET** /version | Get version


<a name="documentation-for-models"></a>
## Documentation for Models

 - [io.swagger.client.models.ChannelName](docs/ChannelName.md)
 - [io.swagger.client.models.EdgeModuleAddObject](docs/EdgeModuleAddObject.md)
 - [io.swagger.client.models.EdgeModuleAddedObject](docs/EdgeModuleAddedObject.md)
 - [io.swagger.client.models.EdgeModuleObject](docs/EdgeModuleObject.md)
 - [io.swagger.client.models.EdgeModuleResourceAddObject](docs/EdgeModuleResourceAddObject.md)
 - [io.swagger.client.models.EdgeModuleResourceAddedObject](docs/EdgeModuleResourceAddedObject.md)
 - [io.swagger.client.models.EdgeModuleResourceObject](docs/EdgeModuleResourceObject.md)
 - [io.swagger.client.models.EdgeModuleResourceUpdateObject](docs/EdgeModuleResourceUpdateObject.md)
 - [io.swagger.client.models.EdgeModuleResourceUpdatedObject](docs/EdgeModuleResourceUpdatedObject.md)
 - [io.swagger.client.models.EdgeModuleUpdateObject](docs/EdgeModuleUpdateObject.md)
 - [io.swagger.client.models.EdgeModuleUpdatedObject](docs/EdgeModuleUpdatedObject.md)
 - [io.swagger.client.models.FieldGroupObject](docs/FieldGroupObject.md)
 - [io.swagger.client.models.FieldInstallationObject](docs/FieldInstallationObject.md)
 - [io.swagger.client.models.FieldObject](docs/FieldObject.md)
 - [io.swagger.client.models.FieldObjectFields](docs/FieldObjectFields.md)
 - [io.swagger.client.models.FieldsEdgeModuleObject](docs/FieldsEdgeModuleObject.md)
 - [io.swagger.client.models.GroupAddObject](docs/GroupAddObject.md)
 - [io.swagger.client.models.GroupName](docs/GroupName.md)
 - [io.swagger.client.models.GroupObject](docs/GroupObject.md)
 - [io.swagger.client.models.InstallationAddObject](docs/InstallationAddObject.md)
 - [io.swagger.client.models.InstallationAddedObject](docs/InstallationAddedObject.md)
 - [io.swagger.client.models.InstallationObject](docs/InstallationObject.md)
 - [io.swagger.client.models.MetaEdgeModuleObject](docs/MetaEdgeModuleObject.md)
 - [io.swagger.client.models.MetaGroupObject](docs/MetaGroupObject.md)
 - [io.swagger.client.models.MetaInstallationObject](docs/MetaInstallationObject.md)
 - [io.swagger.client.models.MetaObject](docs/MetaObject.md)
 - [io.swagger.client.models.PushDataObject](docs/PushDataObject.md)
 - [io.swagger.client.models.PushDataObjectAps](docs/PushDataObjectAps.md)
 - [io.swagger.client.models.PushDataObjectExtras](docs/PushDataObjectExtras.md)
 - [io.swagger.client.models.PushDataObjectGcm](docs/PushDataObjectGcm.md)
 - [io.swagger.client.models.PushObject](docs/PushObject.md)
 - [io.swagger.client.models.PushWhereObject](docs/PushWhereObject.md)
 - [io.swagger.client.models.PushWhereObjectDeviceToken](docs/PushWhereObjectDeviceToken.md)
 - [io.swagger.client.models.UpdateGroupObject](docs/UpdateGroupObject.md)
 - [io.swagger.client.models.UpdateInstallationObject](docs/UpdateInstallationObject.md)
 - [io.swagger.client.models.UpdateObject](docs/UpdateObject.md)
 - [io.swagger.client.models.UpdatedGroupObject](docs/UpdatedGroupObject.md)
 - [io.swagger.client.models.UpdatedInstallationObject](docs/UpdatedInstallationObject.md)
 - [io.swagger.client.models.UpdatedObject](docs/UpdatedObject.md)
 - [io.swagger.client.models.UserCredentialsObject](docs/UserCredentialsObject.md)
 - [io.swagger.client.models.UserObject](docs/UserObject.md)
 - [io.swagger.client.models.UserSignUpResponseObject](docs/UserSignUpResponseObject.md)
 - [io.swagger.client.models.UserTokenObject](docs/UserTokenObject.md)
 - [io.swagger.client.models.UseridObject](docs/UseridObject.md)
 - [io.swagger.client.models.VersionObject](docs/VersionObject.md)


<a name="documentation-for-authorization"></a>
## Documentation for Authorization

All endpoints do not require authorization.
