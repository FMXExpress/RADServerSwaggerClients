# Documentation for EMS API Documentation 0.0.0 Tizen Client SDK

## How do I get the doc files?
First generate source code by running `swagger-codegen`
Then run `doc/generateDocumentation.sh` from the output folder. It will generate all the doc files and put them in the `doc/SDK` directory.
To successfully generate documentation it needs `Doxygen` installed in the path.
*Note* - Before generating the documentation, put the logo of the project as the file `doc/logo.png` before running `doxygen`.


## How do I use this?
This is the structure of the doc folder:

```
.
├── logo.png                  \\Logo of the project
├── Doxyfile                  \\Doxygen config files
├── generateDocumentation.sh  \\Script to run to generate documentation
├── README.md                 \\This file
├── SDK                       \\Documentation for all classes in EMS API Documentation Tizen Client SDK. See ./html/index.html
│   └── html

```

## *tl;dr* run this:

```
doc/generateDocumentation.sh
```

The above SDK folder will be generated. See the index.html inside the SDK folder.


## What's Doxygen?
Doxygen is the de facto standard tool for generating/extracting documentation from annotated/unannotated C++ sources, but it also supports other popular programming languages such as C, Objective-C, C#, PHP, Java, Python, IDL (Corba, Microsoft, and UNO/OpenOffice flavors), Fortran, VHDL, Tcl, and to some extent D.

Check out [Doxygen](https://www.doxygen.org/) for additional information about the Doxygen project.

## I Don't want to run Doxygen. What are the API files for accessing the REST endpoints?
All URIs are relative to http://localhost:8080http://localhost:8080

### ApiDocManager
Method | HTTP request | Description
------------- | ------------- | -------------
*aPISync* | *GET* /api | Get API EndPoints.
*aPIASync* | *GET* /api | Get API EndPoints.
*getAPIJSONFormatSync* | *GET* /api/apidoc.json | Get JSON.
*getAPIJSONFormatASync* | *GET* /api/apidoc.json | Get JSON.
*getAPIYAMLFormatSync* | *GET* /api/apidoc.yaml | Get YAML.
*getAPIYAMLFormatASync* | *GET* /api/apidoc.yaml | Get YAML.
*getAPIYAMLFormat EndPointSync* | *GET* /api/{item}/apidoc.yaml | Get API EndPoint.
*getAPIYAMLFormat EndPointASync* | *GET* /api/{item}/apidoc.yaml | Get API EndPoint.

### EdgeModulesManager
Method | HTTP request | Description
------------- | ------------- | -------------
*getModuleSync* | *GET* /edgemodules/{mname} | Get Module.
*getModuleASync* | *GET* /edgemodules/{mname} | Get Module.
*getModuleResourceSync* | *GET* /edgemodules/{mname}/resources/{name} | Get EdgeModule Resource.
*getModuleResourceASync* | *GET* /edgemodules/{mname}/resources/{name} | Get EdgeModule Resource.
*getModuleResourcesSync* | *GET* /edgemodules/{mname}/resources | Get EdgeModule Resources.
*getModuleResourcesASync* | *GET* /edgemodules/{mname}/resources | Get EdgeModule Resources.
*getModulesSync* | *GET* /edgemodules | Get Module.
*getModulesASync* | *GET* /edgemodules | Get Module.
*getModulesFieldsSync* | *GET* /edgemodules/fields | Get Fields.
*getModulesFieldsASync* | *GET* /edgemodules/fields | Get Fields.
*getResourcesSync* | *GET* /edgemodules/resources | Get EdgeModules Resources.
*getResourcesASync* | *GET* /edgemodules/resources | Get EdgeModules Resources.
*getResourcesFieldsSync* | *GET* /edgemodules/resources/fields | Get Resource Fields.
*getResourcesFieldsASync* | *GET* /edgemodules/resources/fields | Get Resource Fields.
*registerModuleSync* | *POST* /edgemodules | Add Module.
*registerModuleASync* | *POST* /edgemodules | Add Module.
*registerModuleResourceSync* | *POST* /edgemodules/{mname}/resources | Add Module Resource.
*registerModuleResourceASync* | *POST* /edgemodules/{mname}/resources | Add Module Resource.
*unregisterModuleSync* | *DELETE* /edgemodules/{mname} | Delete Module.
*unregisterModuleASync* | *DELETE* /edgemodules/{mname} | Delete Module.
*unregisterModuleResourceSync* | *DELETE* /edgemodules/{mname}/resources/{name} | Delete Module Resource.
*unregisterModuleResourceASync* | *DELETE* /edgemodules/{mname}/resources/{name} | Delete Module Resource.
*updateModuleSync* | *PUT* /edgemodules/{mname} | Update Module.
*updateModuleASync* | *PUT* /edgemodules/{mname} | Update Module.
*updateModuleResourceSync* | *PUT* /edgemodules/{mname}/resources/{name} | Update Module Resource.
*updateModuleResourceASync* | *PUT* /edgemodules/{mname}/resources/{name} | Update Module Resource.

### EdgeModulesInvokersManager
Method | HTTP request | Description
------------- | ------------- | -------------
*deleteResourceEndpointSync* | *DELETE* /edgemodules/{mname}/{rname} | Invoke Resource Delete Method.
*deleteResourceEndpointASync* | *DELETE* /edgemodules/{mname}/{rname} | Invoke Resource Delete Method.
*deleteResourceEndpointItemSync* | *DELETE* /edgemodules/{mname}/{rname}/{wildcard} | Invoke Resource/* Delete Method.
*deleteResourceEndpointItemASync* | *DELETE* /edgemodules/{mname}/{rname}/{wildcard} | Invoke Resource/* Delete Method.
*getResourceEndpointSync* | *GET* /edgemodules/{mname}/{rname} | Invoke Resource Get Method.
*getResourceEndpointASync* | *GET* /edgemodules/{mname}/{rname} | Invoke Resource Get Method.
*getResourceEndpointItemSync* | *GET* /edgemodules/{mname}/{rname}/{wildcard} | Invoke Resource/* Get Method.
*getResourceEndpointItemASync* | *GET* /edgemodules/{mname}/{rname}/{wildcard} | Invoke Resource/* Get Method.
*patchResourceEndpointSync* | *PATCH* /edgemodules/{mname}/{rname} | Invoke Resource Patch Method.
*patchResourceEndpointASync* | *PATCH* /edgemodules/{mname}/{rname} | Invoke Resource Patch Method.
*patchResourceEndpointItemSync* | *PATCH* /edgemodules/{mname}/{rname}/{wildcard} | Invoke Resource/* Patch Method.
*patchResourceEndpointItemASync* | *PATCH* /edgemodules/{mname}/{rname}/{wildcard} | Invoke Resource/* Patch Method.
*postResourceEndpointSync* | *POST* /edgemodules/{mname}/{rname} | Invoke Resource Post Method.
*postResourceEndpointASync* | *POST* /edgemodules/{mname}/{rname} | Invoke Resource Post Method.
*postResourceEndpointItemSync* | *POST* /edgemodules/{mname}/{rname}/{wildcard} | Invoke Resource/* Post Method.
*postResourceEndpointItemASync* | *POST* /edgemodules/{mname}/{rname}/{wildcard} | Invoke Resource/* Post Method.
*putResourceEndpointSync* | *PUT* /edgemodules/{mname}/{rname} | Invoke Resource Put Method.
*putResourceEndpointASync* | *PUT* /edgemodules/{mname}/{rname} | Invoke Resource Put Method.
*putResourceEndpointItemSync* | *PUT* /edgemodules/{mname}/{rname}/{wildcard} | Invoke Resource/* Put Method.
*putResourceEndpointItemASync* | *PUT* /edgemodules/{mname}/{rname}/{wildcard} | Invoke Resource/* Put Method.

### GroupsManager
Method | HTTP request | Description
------------- | ------------- | -------------
*addGroupSync* | *POST* /groups | Add Group.
*addGroupASync* | *POST* /groups | Add Group.
*deleteGroupSync* | *DELETE* /groups/{item} | Delete Group.
*deleteGroupASync* | *DELETE* /groups/{item} | Delete Group.
*getGroupSync* | *GET* /groups/{item} | Get Group.
*getGroupASync* | *GET* /groups/{item} | Get Group.
*getGroupFieldsSync* | *GET* /groups/fields | Get Fields.
*getGroupFieldsASync* | *GET* /groups/fields | Get Fields.
*getGroupsSync* | *GET* /groups | Get Groups.
*getGroupsASync* | *GET* /groups | Get Groups.
*updateGroupSync* | *PUT* /groups/{item} | Update Group.
*updateGroupASync* | *PUT* /groups/{item} | Update Group.

### InstallationsManager
Method | HTTP request | Description
------------- | ------------- | -------------
*addInstallationSync* | *POST* /installations | Add Installation.
*addInstallationASync* | *POST* /installations | Add Installation.
*deleteInstallationSync* | *DELETE* /installations/{id} | Delete Installation.
*deleteInstallationASync* | *DELETE* /installations/{id} | Delete Installation.
*getChannelsSync* | *GET* /installations/channels | Get Installation Channels.
*getChannelsASync* | *GET* /installations/channels | Get Installation Channels.
*getInstallationSync* | *GET* /installations/{id} | Get Installation.
*getInstallationASync* | *GET* /installations/{id} | Get Installation.
*getInstallationFieldsSync* | *GET* /installations/fields | Get Fields.
*getInstallationFieldsASync* | *GET* /installations/fields | Get Fields.
*getInstallationsSync* | *GET* /installations | Get Installations.
*getInstallationsASync* | *GET* /installations | Get Installations.
*updateInstallationSync* | *PUT* /installations/{id} | Update Installation.
*updateInstallationASync* | *PUT* /installations/{id} | Update Installation.

### PushManager
Method | HTTP request | Description
------------- | ------------- | -------------
*sendSync* | *POST* /push | Send Push.
*sendASync* | *POST* /push | Send Push.

### UsersManager
Method | HTTP request | Description
------------- | ------------- | -------------
*addUserSync* | *POST* /users | Add User.
*addUserASync* | *POST* /users | Add User.
*deleteUserSync* | *DELETE* /users/{id} | Delete User.
*deleteUserASync* | *DELETE* /users/{id} | Delete User.
*getUserSync* | *GET* /users/{id} | Get User.
*getUserASync* | *GET* /users/{id} | Get User.
*getUserFieldsSync* | *GET* /users/fields | Get Fields.
*getUserFieldsASync* | *GET* /users/fields | Get Fields.
*getUserGroupsSync* | *GET* /users/{id}/groups | Get User Groups.
*getUserGroupsASync* | *GET* /users/{id}/groups | Get User Groups.
*getUsersSync* | *GET* /users | Get Users.
*getUsersASync* | *GET* /users | Get Users.
*loginUserSync* | *POST* /users/login | Log In.
*loginUserASync* | *POST* /users/login | Log In.
*logoutUserSync* | *POST* /users/logout | sPostLogoutSummaryTitle.
*logoutUserASync* | *POST* /users/logout | sPostLogoutSummaryTitle.
*signupUserSync* | *POST* /users/signup | Sign Up  User.
*signupUserASync* | *POST* /users/signup | Sign Up  User.
*updateUserSync* | *PUT* /users/{id} | Update User.
*updateUserASync* | *PUT* /users/{id} | Update User.

### VersionManager
Method | HTTP request | Description
------------- | ------------- | -------------
*getVersionSync* | *GET* /version | Get version.
*getVersionASync* | *GET* /version | Get version.


## What are the Model files for the data structures/objects?
Class | Description
------------- | -------------
 *ChannelName* | 
 *EdgeModuleAddObject* | 
 *EdgeModuleAddedObject* | 
 *EdgeModuleObject* | 
 *EdgeModuleResourceAddObject* | 
 *EdgeModuleResourceAddedObject* | 
 *EdgeModuleResourceObject* | 
 *EdgeModuleResourceUpdateObject* | 
 *EdgeModuleResourceUpdatedObject* | 
 *EdgeModuleUpdateObject* | 
 *EdgeModuleUpdatedObject* | 
 *FieldGroupObject* | 
 *FieldInstallationObject* | 
 *FieldObject* | 
 *FieldObject_fields* | 
 *FieldsEdgeModuleObject* | 
 *GroupAddObject* | 
 *GroupName* | 
 *GroupObject* | 
 *InstallationAddObject* | 
 *InstallationAddedObject* | 
 *InstallationObject* | 
 *PushDataObject* | 
 *PushDataObject_aps* | 
 *PushDataObject_extras* | 
 *PushDataObject_gcm* | 
 *PushObject* | 
 *PushWhereObject* | 
 *PushWhereObject_deviceToken* | $in
 *UpdateGroupObject* | 
 *UpdateInstallationObject* | 
 *UpdateObject* | 
 *UpdatedGroupObject* | 
 *UpdatedInstallationObject* | 
 *UpdatedObject* | 
 *UserCredentialsObject* | 
 *UserObject* | 
 *UserSignUpResponseObject* | 
 *UserTokenObject* | 
 *UseridObject* | 
 *VersionObject* | 
 *_metaEdgeModuleObject* | 
 *_metaGroupObject* | 
 *_metaInstallationObject* | 
 *_metaObject* | 

