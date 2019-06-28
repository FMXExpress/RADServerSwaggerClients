# EMS API Documentation API Client

Enterprise Mobility Services API\r\n\r\n  [Learn about EMS](https://www.embarcadero.com/products/rad-studio/enterprise-mobility-services)\r\n\r\n  EMS (Enterprise Mobility Services) offers a Mobile Enterprise Application Platform (MEAP)\r\n\r\n  TurnKey Middleware for Interconnected Distributed Apps

## Requirements

- [Salesforce DX](https://www.salesforce.com/products/platform/products/salesforce-dx/)


If everything is set correctly:

- Running `sfdx version` in a command prompt should output something like:

  ```bash
  sfdx-cli/5.7.5-05549de (darwin-amd64) go1.7.5 sfdxstable
  ```


## Installation

1. Copy the output into your Salesforce DX folder - or alternatively deploy the output directly into the workspace.
2. Deploy the code via Salesforce DX to your Scratch Org

   ```bash
   $ sfdx force:source:push
   ```
3. If the API needs authentication update the Named Credential in Setup.
4. Run your Apex tests using

    ```bash
    $ sfdx sfdx force:apex:test:run
    ```
5. Retrieve the job id from the console and check the test results.

  ```bash
  $ sfdx force:apex:test:report -i theJobId
  ```


## Getting Started

Please follow the [installation](#installation) instruction and execute the following Apex code:

```java
SwagApiDocApi api = new SwagApiDocApi();

Map<String, Object> params = new Map<String, Object>{
    'xEmbarcaderoApplicationId' => 'xEmbarcaderoApplicationId_example',
    'xEmbarcaderoAppSecret' => 'xEmbarcaderoAppSecret_example',
    'xEmbarcaderoMasterSecret' => 'xEmbarcaderoMasterSecret_example'
};

try {
    // cross your fingers
    api.aPI(params);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

## Documentation for API Endpoints

All URIs are relative to *http://localhost:8080*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*SwagApiDocApi* | [**aPI**](docs/SwagApiDocApi.md#aPI) | **GET** /api | Get API EndPoints
*SwagApiDocApi* | [**getAPIJSONFormat**](docs/SwagApiDocApi.md#getAPIJSONFormat) | **GET** /api/apidoc.json | Get JSON
*SwagApiDocApi* | [**getAPIYAMLFormat**](docs/SwagApiDocApi.md#getAPIYAMLFormat) | **GET** /api/apidoc.yaml | Get YAML
*SwagApiDocApi* | [**getAPIYAMLFormatEndPoint**](docs/SwagApiDocApi.md#getAPIYAMLFormatEndPoint) | **GET** /api/{item}/apidoc.yaml | Get API EndPoint
*SwagEdgeModulesApi* | [**getModule**](docs/SwagEdgeModulesApi.md#getModule) | **GET** /edgemodules/{mname} | Get Module
*SwagEdgeModulesApi* | [**getModuleResource**](docs/SwagEdgeModulesApi.md#getModuleResource) | **GET** /edgemodules/{mname}/resources/{name} | Get EdgeModule Resource
*SwagEdgeModulesApi* | [**getModuleResources**](docs/SwagEdgeModulesApi.md#getModuleResources) | **GET** /edgemodules/{mname}/resources | Get EdgeModule Resources
*SwagEdgeModulesApi* | [**getModules**](docs/SwagEdgeModulesApi.md#getModules) | **GET** /edgemodules | Get Module
*SwagEdgeModulesApi* | [**getModulesFields**](docs/SwagEdgeModulesApi.md#getModulesFields) | **GET** /edgemodules/fields | Get Fields
*SwagEdgeModulesApi* | [**getResources**](docs/SwagEdgeModulesApi.md#getResources) | **GET** /edgemodules/resources | Get EdgeModules Resources
*SwagEdgeModulesApi* | [**getResourcesFields**](docs/SwagEdgeModulesApi.md#getResourcesFields) | **GET** /edgemodules/resources/fields | Get Resource Fields
*SwagEdgeModulesApi* | [**registerModule**](docs/SwagEdgeModulesApi.md#registerModule) | **POST** /edgemodules | Add Module
*SwagEdgeModulesApi* | [**registerModuleResource**](docs/SwagEdgeModulesApi.md#registerModuleResource) | **POST** /edgemodules/{mname}/resources | Add Module Resource
*SwagEdgeModulesApi* | [**unregisterModule**](docs/SwagEdgeModulesApi.md#unregisterModule) | **DELETE** /edgemodules/{mname} | Delete Module
*SwagEdgeModulesApi* | [**unregisterModuleResource**](docs/SwagEdgeModulesApi.md#unregisterModuleResource) | **DELETE** /edgemodules/{mname}/resources/{name} | Delete Module Resource
*SwagEdgeModulesApi* | [**updateModule**](docs/SwagEdgeModulesApi.md#updateModule) | **PUT** /edgemodules/{mname} | Update Module
*SwagEdgeModulesApi* | [**updateModuleResource**](docs/SwagEdgeModulesApi.md#updateModuleResource) | **PUT** /edgemodules/{mname}/resources/{name} | Update Module Resource
*SwagEdgeModulesInvokersApi* | [**deleteResourceEndpoint**](docs/SwagEdgeModulesInvokersApi.md#deleteResourceEndpoint) | **DELETE** /edgemodules/{mname}/{rname} | Invoke Resource Delete Method
*SwagEdgeModulesInvokersApi* | [**deleteResourceEndpointItem**](docs/SwagEdgeModulesInvokersApi.md#deleteResourceEndpointItem) | **DELETE** /edgemodules/{mname}/{rname}/{wildcard} | Invoke Resource/* Delete Method
*SwagEdgeModulesInvokersApi* | [**getResourceEndpoint**](docs/SwagEdgeModulesInvokersApi.md#getResourceEndpoint) | **GET** /edgemodules/{mname}/{rname} | Invoke Resource Get Method
*SwagEdgeModulesInvokersApi* | [**getResourceEndpointItem**](docs/SwagEdgeModulesInvokersApi.md#getResourceEndpointItem) | **GET** /edgemodules/{mname}/{rname}/{wildcard} | Invoke Resource/* Get Method
*SwagEdgeModulesInvokersApi* | [**patchResourceEndpoint**](docs/SwagEdgeModulesInvokersApi.md#patchResourceEndpoint) | **PATCH** /edgemodules/{mname}/{rname} | Invoke Resource Patch Method
*SwagEdgeModulesInvokersApi* | [**patchResourceEndpointItem**](docs/SwagEdgeModulesInvokersApi.md#patchResourceEndpointItem) | **PATCH** /edgemodules/{mname}/{rname}/{wildcard} | Invoke Resource/* Patch Method
*SwagEdgeModulesInvokersApi* | [**postResourceEndpoint**](docs/SwagEdgeModulesInvokersApi.md#postResourceEndpoint) | **POST** /edgemodules/{mname}/{rname} | Invoke Resource Post Method
*SwagEdgeModulesInvokersApi* | [**postResourceEndpointItem**](docs/SwagEdgeModulesInvokersApi.md#postResourceEndpointItem) | **POST** /edgemodules/{mname}/{rname}/{wildcard} | Invoke Resource/* Post Method
*SwagEdgeModulesInvokersApi* | [**putResourceEndpoint**](docs/SwagEdgeModulesInvokersApi.md#putResourceEndpoint) | **PUT** /edgemodules/{mname}/{rname} | Invoke Resource Put Method
*SwagEdgeModulesInvokersApi* | [**putResourceEndpointItem**](docs/SwagEdgeModulesInvokersApi.md#putResourceEndpointItem) | **PUT** /edgemodules/{mname}/{rname}/{wildcard} | Invoke Resource/* Put Method
*SwagGroupsApi* | [**addGroup**](docs/SwagGroupsApi.md#addGroup) | **POST** /groups | Add Group
*SwagGroupsApi* | [**deleteGroup**](docs/SwagGroupsApi.md#deleteGroup) | **DELETE** /groups/{item} | Delete Group
*SwagGroupsApi* | [**getGroup**](docs/SwagGroupsApi.md#getGroup) | **GET** /groups/{item} | Get Group
*SwagGroupsApi* | [**getGroupFields**](docs/SwagGroupsApi.md#getGroupFields) | **GET** /groups/fields | Get Fields
*SwagGroupsApi* | [**getGroups**](docs/SwagGroupsApi.md#getGroups) | **GET** /groups | Get Groups
*SwagGroupsApi* | [**updateGroup**](docs/SwagGroupsApi.md#updateGroup) | **PUT** /groups/{item} | Update Group
*SwagInstallationsApi* | [**addInstallation**](docs/SwagInstallationsApi.md#addInstallation) | **POST** /installations | Add Installation
*SwagInstallationsApi* | [**deleteInstallation**](docs/SwagInstallationsApi.md#deleteInstallation) | **DELETE** /installations/{id} | Delete Installation
*SwagInstallationsApi* | [**getChannels**](docs/SwagInstallationsApi.md#getChannels) | **GET** /installations/channels | Get Installation Channels
*SwagInstallationsApi* | [**getInstallation**](docs/SwagInstallationsApi.md#getInstallation) | **GET** /installations/{id} | Get Installation
*SwagInstallationsApi* | [**getInstallationFields**](docs/SwagInstallationsApi.md#getInstallationFields) | **GET** /installations/fields | Get Fields
*SwagInstallationsApi* | [**getInstallations**](docs/SwagInstallationsApi.md#getInstallations) | **GET** /installations | Get Installations
*SwagInstallationsApi* | [**updateInstallation**](docs/SwagInstallationsApi.md#updateInstallation) | **PUT** /installations/{id} | Update Installation
*SwagPushApi* | [**send**](docs/SwagPushApi.md#send) | **POST** /push | Send Push
*SwagUsersApi* | [**addUser**](docs/SwagUsersApi.md#addUser) | **POST** /users | Add User
*SwagUsersApi* | [**deleteUser**](docs/SwagUsersApi.md#deleteUser) | **DELETE** /users/{id} | Delete User
*SwagUsersApi* | [**getUser**](docs/SwagUsersApi.md#getUser) | **GET** /users/{id} | Get User
*SwagUsersApi* | [**getUserFields**](docs/SwagUsersApi.md#getUserFields) | **GET** /users/fields | Get Fields
*SwagUsersApi* | [**getUserGroups**](docs/SwagUsersApi.md#getUserGroups) | **GET** /users/{id}/groups | Get User Groups
*SwagUsersApi* | [**getUsers**](docs/SwagUsersApi.md#getUsers) | **GET** /users | Get Users
*SwagUsersApi* | [**loginUser**](docs/SwagUsersApi.md#loginUser) | **POST** /users/login | Log In
*SwagUsersApi* | [**logoutUser**](docs/SwagUsersApi.md#logoutUser) | **POST** /users/logout | sPostLogoutSummaryTitle
*SwagUsersApi* | [**signupUser**](docs/SwagUsersApi.md#signupUser) | **POST** /users/signup | Sign Up  User
*SwagUsersApi* | [**updateUser**](docs/SwagUsersApi.md#updateUser) | **PUT** /users/{id} | Update User
*SwagVersionApi* | [**getVersion**](docs/SwagVersionApi.md#getVersion) | **GET** /version | Get version


## Documentation for Models

 - [SwagEdgeModuleAddObject](docs/SwagEdgeModuleAddObject.md)
 - [SwagEdgeModuleAddedObject](docs/SwagEdgeModuleAddedObject.md)
 - [SwagEdgeModuleObject](docs/SwagEdgeModuleObject.md)
 - [SwagEdgeModuleResourceAddObject](docs/SwagEdgeModuleResourceAddObject.md)
 - [SwagEdgeModuleResourceAddedObject](docs/SwagEdgeModuleResourceAddedObject.md)
 - [SwagEdgeModuleResourceObject](docs/SwagEdgeModuleResourceObject.md)
 - [SwagEdgeModuleResourceUpdateObject](docs/SwagEdgeModuleResourceUpdateObject.md)
 - [SwagEdgeModuleResourceUpdatedObject](docs/SwagEdgeModuleResourceUpdatedObject.md)
 - [SwagEdgeModuleUpdateObject](docs/SwagEdgeModuleUpdateObject.md)
 - [SwagEdgeModuleUpdatedObject](docs/SwagEdgeModuleUpdatedObject.md)
 - [SwagFieldGroupObject](docs/SwagFieldGroupObject.md)
 - [SwagFieldInstallationObject](docs/SwagFieldInstallationObject.md)
 - [SwagFieldObject](docs/SwagFieldObject.md)
 - [SwagFieldObjectFields](docs/SwagFieldObjectFields.md)
 - [SwagFieldsEdgeModuleObject](docs/SwagFieldsEdgeModuleObject.md)
 - [SwagGroupAddObject](docs/SwagGroupAddObject.md)
 - [SwagGroupObject](docs/SwagGroupObject.md)
 - [SwagInstallationAddObject](docs/SwagInstallationAddObject.md)
 - [SwagInstallationAddedObject](docs/SwagInstallationAddedObject.md)
 - [SwagInstallationObject](docs/SwagInstallationObject.md)
 - [SwagMetaEdgeModuleObject](docs/SwagMetaEdgeModuleObject.md)
 - [SwagMetaGroupObject](docs/SwagMetaGroupObject.md)
 - [SwagMetaInstallationObject](docs/SwagMetaInstallationObject.md)
 - [SwagMetaObject](docs/SwagMetaObject.md)
 - [SwagPushDataObject](docs/SwagPushDataObject.md)
 - [SwagPushDataObjectAps](docs/SwagPushDataObjectAps.md)
 - [SwagPushDataObjectExtras](docs/SwagPushDataObjectExtras.md)
 - [SwagPushDataObjectGcm](docs/SwagPushDataObjectGcm.md)
 - [SwagPushObject](docs/SwagPushObject.md)
 - [SwagPushWhereObject](docs/SwagPushWhereObject.md)
 - [SwagPushWhereObjectDeviceToken](docs/SwagPushWhereObjectDeviceToken.md)
 - [SwagUpdateGroupObject](docs/SwagUpdateGroupObject.md)
 - [SwagUpdateInstallationObject](docs/SwagUpdateInstallationObject.md)
 - [SwagUpdateObject](docs/SwagUpdateObject.md)
 - [SwagUpdatedGroupObject](docs/SwagUpdatedGroupObject.md)
 - [SwagUpdatedInstallationObject](docs/SwagUpdatedInstallationObject.md)
 - [SwagUpdatedObject](docs/SwagUpdatedObject.md)
 - [SwagUserCredentialsObject](docs/SwagUserCredentialsObject.md)
 - [SwagUserObject](docs/SwagUserObject.md)
 - [SwagUserSignUpResponseObject](docs/SwagUserSignUpResponseObject.md)
 - [SwagUserTokenObject](docs/SwagUserTokenObject.md)
 - [SwagUseridObject](docs/SwagUseridObject.md)
 - [SwagVersionObject](docs/SwagVersionObject.md)


## Documentation for Authorization

All endpoints do not require authorization.
Authentication schemes defined for the API:

## Author



