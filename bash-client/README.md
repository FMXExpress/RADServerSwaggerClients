# EMS API Documentation Bash client

## Overview
This is a Bash client script for accessing EMS API Documentation service.

The script uses cURL underneath for making all REST calls.

## Usage

```shell
# Make sure the script has executable rights
$ chmod u+x 

# Print the list of operations available on the service
$ ./ -h

# Print the service description
$ ./ --about

# Print detailed information about specific operation
$ ./ <operationId> -h

# Make GET request
./ --host http://<hostname>:<port> --accept xml <operationId> <queryParam1>=<value1> <header_key1>:<header_value2>

# Make GET request using arbitrary curl options (must be passed before <operationId>) to an SSL service using username:password
 -k -sS --tlsv1.2 --host https://<hostname> -u <user>:<password> --accept xml <operationId> <queryParam1>=<value1> <header_key1>:<header_value2>

# Make POST request
$ echo '<body_content>' |  --host <hostname> --content-type json <operationId> -

# Make POST request with simple JSON content, e.g.:
# {
#   "key1": "value1",
#   "key2": "value2",
#   "key3": 23
# }
$ echo '<body_content>' |  --host <hostname> --content-type json <operationId> key1==value1 key2=value2 key3:=23 -

# Preview the cURL command without actually executing it
$  --host http://<hostname>:<port> --dry-run <operationid>

```

## Docker image
You can easily create a Docker image containing a preconfigured environment
for using the REST Bash client including working autocompletion and short
welcome message with basic instructions, using the generated Dockerfile:

```shell
docker build -t my-rest-client .
docker run -it my-rest-client
```

By default you will be logged into a Zsh environment which has much more
advanced auto completion, but you can switch to Bash, where basic autocompletion
is also available.

## Shell completion

### Bash
The generated bash-completion script can be either directly loaded to the current Bash session using:

```shell
source .bash-completion
```

Alternatively, the script can be copied to the `/etc/bash-completion.d` (or on OSX with Homebrew to `/usr/local/etc/bash-completion.d`):

```shell
sudo cp .bash-completion /etc/bash-completion.d/
```

#### OS X
On OSX you might need to install bash-completion using Homebrew:
```shell
brew install bash-completion
```
and add the following to the `~/.bashrc`:

```shell
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi
```

### Zsh
In Zsh, the generated `_` Zsh completion file must be copied to one of the folders under `$FPATH` variable.


## Documentation for API Endpoints

All URIs are relative to **

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
*EdgeModulesInvokersApi* | [**deleteResourceEndpointItem**](docs/EdgeModulesInvokersApi.md#deleteresourceendpointitem) | **DELETE** /edgemodules/{mname}/{rname}/{wildcard} | Invoke Resource/* Delete Method
*EdgeModulesInvokersApi* | [**getResourceEndpoint**](docs/EdgeModulesInvokersApi.md#getresourceendpoint) | **GET** /edgemodules/{mname}/{rname} | Invoke Resource Get Method
*EdgeModulesInvokersApi* | [**getResourceEndpointItem**](docs/EdgeModulesInvokersApi.md#getresourceendpointitem) | **GET** /edgemodules/{mname}/{rname}/{wildcard} | Invoke Resource/* Get Method
*EdgeModulesInvokersApi* | [**patchResourceEndpoint**](docs/EdgeModulesInvokersApi.md#patchresourceendpoint) | **PATCH** /edgemodules/{mname}/{rname} | Invoke Resource Patch Method
*EdgeModulesInvokersApi* | [**patchResourceEndpointItem**](docs/EdgeModulesInvokersApi.md#patchresourceendpointitem) | **PATCH** /edgemodules/{mname}/{rname}/{wildcard} | Invoke Resource/* Patch Method
*EdgeModulesInvokersApi* | [**postResourceEndpoint**](docs/EdgeModulesInvokersApi.md#postresourceendpoint) | **POST** /edgemodules/{mname}/{rname} | Invoke Resource Post Method
*EdgeModulesInvokersApi* | [**postResourceEndpointItem**](docs/EdgeModulesInvokersApi.md#postresourceendpointitem) | **POST** /edgemodules/{mname}/{rname}/{wildcard} | Invoke Resource/* Post Method
*EdgeModulesInvokersApi* | [**putResourceEndpoint**](docs/EdgeModulesInvokersApi.md#putresourceendpoint) | **PUT** /edgemodules/{mname}/{rname} | Invoke Resource Put Method
*EdgeModulesInvokersApi* | [**putResourceEndpointItem**](docs/EdgeModulesInvokersApi.md#putresourceendpointitem) | **PUT** /edgemodules/{mname}/{rname}/{wildcard} | Invoke Resource/* Put Method
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


## Documentation For Models

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
 - [FieldObject_fields](docs/FieldObject_fields.md)
 - [FieldsEdgeModuleObject](docs/FieldsEdgeModuleObject.md)
 - [GroupAddObject](docs/GroupAddObject.md)
 - [GroupName](docs/GroupName.md)
 - [GroupObject](docs/GroupObject.md)
 - [InstallationAddObject](docs/InstallationAddObject.md)
 - [InstallationAddedObject](docs/InstallationAddedObject.md)
 - [InstallationObject](docs/InstallationObject.md)
 - [PushDataObject](docs/PushDataObject.md)
 - [PushDataObject_aps](docs/PushDataObject_aps.md)
 - [PushDataObject_extras](docs/PushDataObject_extras.md)
 - [PushDataObject_gcm](docs/PushDataObject_gcm.md)
 - [PushObject](docs/PushObject.md)
 - [PushWhereObject](docs/PushWhereObject.md)
 - [PushWhereObject_deviceToken](docs/PushWhereObject_deviceToken.md)
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
 - [_metaEdgeModuleObject](docs/_metaEdgeModuleObject.md)
 - [_metaGroupObject](docs/_metaGroupObject.md)
 - [_metaInstallationObject](docs/_metaInstallationObject.md)
 - [_metaObject](docs/_metaObject.md)


## Documentation For Authorization

 All endpoints do not require authorization.

