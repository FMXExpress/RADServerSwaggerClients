# NAME

WWW::SwaggerClient::Role - a Moose role for the EMS API Documentation

Enterprise Mobility Services API      [Learn about EMS](https://www.embarcadero.com/products/rad-studio/enterprise-mobility-services)      EMS (Enterprise Mobility Services) offers a Mobile Enterprise Application Platform (MEAP)      TurnKey Middleware for Interconnected Distributed Apps

# VERSION

Automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: 0.0.0
- Package version: 1.0.0
- Build package: io.swagger.codegen.languages.PerlClientCodegen

## A note on Moose

This role is the only component of the library that uses Moose. See
WWW::SwaggerClient::ApiFactory for non-Moosey usage.

# SYNOPSIS

The Perl Swagger Codegen project builds a library of Perl modules to interact with
a web service defined by a OpenAPI Specification. See below for how to build the
library.

This module provides an interface to the generated library. All the classes,
objects, and methods (well, not quite \*all\*, see below) are flattened into this
role.

        package MyApp;
        use Moose;
        with 'WWW::SwaggerClient::Role';

        package main;

        my $api = MyApp->new({ tokens => $tokens });

        my $pet = $api->get_pet_by_id(pet_id => $pet_id);


## Structure of the library

The library consists of a set of API classes, one for each endpoint. These APIs
implement the method calls available on each endpoint.

Additionally, there is a set of "object" classes, which represent the objects
returned by and sent to the methods on the endpoints.

An API factory class is provided, which builds instances of each endpoint API.

This Moose role flattens all the methods from the endpoint APIs onto the consuming
class. It also provides methods to retrieve the endpoint API objects, and the API
factory object, should you need it.

For documentation of all these methods, see AUTOMATIC DOCUMENTATION below.

## Configuring authentication

In the normal case, the OpenAPI Spec will describe what parameters are
required and where to put them. You just need to supply the tokens.

    my $tokens = {
        # basic
        username => $username,
        password => $password,

        # oauth
        access_token => $oauth_token,

        # keys
        $some_key => { token => $token,
                       prefix => $prefix,
                       in => $in,             # 'head||query',
                       },

        $another => { token => $token,
                      prefix => $prefix,
                      in => $in,              # 'head||query',
                      },
        ...,

        };

        my $api = MyApp->new({ tokens => $tokens });

Note these are all optional, as are `prefix` and `in`, and depend on the API
you are accessing. Usually `prefix` and `in` will be determined by the code generator from
the spec and you will not need to set them at run time. If not, `in` will
default to 'head' and `prefix` to the empty string.

The tokens will be placed in a L<WWW::SwaggerClient::Configuration> instance
as follows, but you don't need to know about this.

- `$cfg->{username}`

    String. The username for basic auth.

- `$cfg->{password}`

    String. The password for basic auth.

- `$cfg->{api_key}`

    Hashref. Keyed on the name of each key (there can be multiple tokens).

            $cfg->{api_key} = {
                    secretKey => 'aaaabbbbccccdddd',
                    anotherKey => '1111222233334444',
                    };

- `$cfg->{api_key_prefix}`

    Hashref. Keyed on the name of each key (there can be multiple tokens). Note not
    all api keys require a prefix.

            $cfg->{api_key_prefix} = {
                    secretKey => 'string',
                    anotherKey => 'same or some other string',
                    };

- `$cfg->{access_token}`

    String. The OAuth access token.

# METHODS

## `base_url`

The generated code has the `base_url` already set as a default value. This method
returns the current value of `base_url`.

## `api_factory`

Returns an API factory object. You probably won't need to call this directly.

        $self->api_factory('Pet'); # returns a WWW::SwaggerClient::PetApi instance

        $self->pet_api;            # the same

# MISSING METHODS

Most of the methods on the API are delegated to individual endpoint API objects
(e.g. Pet API, Store API, User API etc). Where different endpoint APIs use the
same method name (e.g. `new()`), these methods can't be delegated. So you need
to call `$api->pet_api->new()`.

In principle, every API is susceptible to the presence of a few, random, undelegatable
method names. In practice, because of the way method names are constructed, it's
unlikely in general that any methods will be undelegatable, except for:

        new()
        class_documentation()
        method_documentation()

To call these methods, you need to get a handle on the relevant object, either
by calling `$api->foo_api` or by retrieving an object, e.g.
`$api->get_pet_by_id(pet_id => $pet_id)`. They are class methods, so
you could also call them on class names.

# BUILDING YOUR LIBRARY

See the homepage `https://github.com/swagger-api/swagger-codegen` for full details.
But briefly, clone the git repository, build the codegen codebase, set up your build
config file, then run the API build script. You will need git, Java 7 or 8 and Apache
maven 3.0.3 or better already installed.

The config file should specify the project name for the generated library:

        {"moduleName":"WWW::MyProjectName"}

Your library files will be built under `WWW::MyProjectName`.

          $ git clone https://github.com/swagger-api/swagger-codegen.git
          $ cd swagger-codegen
          $ mvn package
          $ java -jar modules/swagger-codegen-cli/target/swagger-codegen-cli.jar generate \
    -i [URL or file path to JSON swagger API spec] \
    -l perl \
    -c /path/to/config/file.json \
    -o /path/to/output/folder

Bang, all done. Run the `autodoc` script in the `bin` directory to see the API
you just built.

# AUTOMATIC DOCUMENTATION

You can print out a summary of the generated API by running the included
`autodoc` script in the `bin` directory of your generated library. A few
output formats are supported:

          Usage: autodoc [OPTION]

    -w           wide format (default)
    -n           narrow format
    -p           POD format
    -H           HTML format
    -m           Markdown format
    -h           print this help message
    -c           your application class


The `-c` option allows you to load and inspect your own application. A dummy
namespace is used if you don't supply your own class.

# DOCUMENTATION FROM THE OpenAPI Spec

Additional documentation for each class and method may be provided by the Swagger
spec. If so, this is available via the `class_documentation()` and
`method_documentation()` methods on each generated object class, and the
`method_documentation()` method on the endpoint API classes:

        my $cmdoc = $api->pet_api->method_documentation->{$method_name};

        my $odoc = $api->get_pet_by_id->(pet_id => $pet_id)->class_documentation;
        my $omdoc = $api->get_pet_by_id->(pet_id => $pet_id)->method_documentation->{method_name};


Each of these calls returns a hashref with various useful pieces of information.

# LOAD THE MODULES

To load the API packages:
```perl
use WWW::SwaggerClient::ApiDocApi;
use WWW::SwaggerClient::EdgeModulesApi;
use WWW::SwaggerClient::EdgeModulesInvokersApi;
use WWW::SwaggerClient::GroupsApi;
use WWW::SwaggerClient::InstallationsApi;
use WWW::SwaggerClient::PushApi;
use WWW::SwaggerClient::UsersApi;
use WWW::SwaggerClient::VersionApi;

```

To load the models:
```perl
use WWW::SwaggerClient::Object::ChannelName;
use WWW::SwaggerClient::Object::EdgeModuleAddObject;
use WWW::SwaggerClient::Object::EdgeModuleAddedObject;
use WWW::SwaggerClient::Object::EdgeModuleObject;
use WWW::SwaggerClient::Object::EdgeModuleResourceAddObject;
use WWW::SwaggerClient::Object::EdgeModuleResourceAddedObject;
use WWW::SwaggerClient::Object::EdgeModuleResourceObject;
use WWW::SwaggerClient::Object::EdgeModuleResourceUpdateObject;
use WWW::SwaggerClient::Object::EdgeModuleResourceUpdatedObject;
use WWW::SwaggerClient::Object::EdgeModuleUpdateObject;
use WWW::SwaggerClient::Object::EdgeModuleUpdatedObject;
use WWW::SwaggerClient::Object::FieldGroupObject;
use WWW::SwaggerClient::Object::FieldInstallationObject;
use WWW::SwaggerClient::Object::FieldObject;
use WWW::SwaggerClient::Object::FieldObjectFields;
use WWW::SwaggerClient::Object::FieldsEdgeModuleObject;
use WWW::SwaggerClient::Object::GroupAddObject;
use WWW::SwaggerClient::Object::GroupName;
use WWW::SwaggerClient::Object::GroupObject;
use WWW::SwaggerClient::Object::InstallationAddObject;
use WWW::SwaggerClient::Object::InstallationAddedObject;
use WWW::SwaggerClient::Object::InstallationObject;
use WWW::SwaggerClient::Object::MetaEdgeModuleObject;
use WWW::SwaggerClient::Object::MetaGroupObject;
use WWW::SwaggerClient::Object::MetaInstallationObject;
use WWW::SwaggerClient::Object::MetaObject;
use WWW::SwaggerClient::Object::PushDataObject;
use WWW::SwaggerClient::Object::PushDataObjectAps;
use WWW::SwaggerClient::Object::PushDataObjectExtras;
use WWW::SwaggerClient::Object::PushDataObjectGcm;
use WWW::SwaggerClient::Object::PushObject;
use WWW::SwaggerClient::Object::PushWhereObject;
use WWW::SwaggerClient::Object::PushWhereObjectDeviceToken;
use WWW::SwaggerClient::Object::UpdateGroupObject;
use WWW::SwaggerClient::Object::UpdateInstallationObject;
use WWW::SwaggerClient::Object::UpdateObject;
use WWW::SwaggerClient::Object::UpdatedGroupObject;
use WWW::SwaggerClient::Object::UpdatedInstallationObject;
use WWW::SwaggerClient::Object::UpdatedObject;
use WWW::SwaggerClient::Object::UserCredentialsObject;
use WWW::SwaggerClient::Object::UserObject;
use WWW::SwaggerClient::Object::UserSignUpResponseObject;
use WWW::SwaggerClient::Object::UserTokenObject;
use WWW::SwaggerClient::Object::UseridObject;
use WWW::SwaggerClient::Object::VersionObject;

````

# GETTING STARTED
Put the Perl SDK under the 'lib' folder in your project directory, then run the following
```perl
#!/usr/bin/perl
use lib 'lib';
use strict;
use warnings;
# load the API package
use WWW::SwaggerClient::ApiDocApi;
use WWW::SwaggerClient::EdgeModulesApi;
use WWW::SwaggerClient::EdgeModulesInvokersApi;
use WWW::SwaggerClient::GroupsApi;
use WWW::SwaggerClient::InstallationsApi;
use WWW::SwaggerClient::PushApi;
use WWW::SwaggerClient::UsersApi;
use WWW::SwaggerClient::VersionApi;

# load the models
use WWW::SwaggerClient::Object::ChannelName;
use WWW::SwaggerClient::Object::EdgeModuleAddObject;
use WWW::SwaggerClient::Object::EdgeModuleAddedObject;
use WWW::SwaggerClient::Object::EdgeModuleObject;
use WWW::SwaggerClient::Object::EdgeModuleResourceAddObject;
use WWW::SwaggerClient::Object::EdgeModuleResourceAddedObject;
use WWW::SwaggerClient::Object::EdgeModuleResourceObject;
use WWW::SwaggerClient::Object::EdgeModuleResourceUpdateObject;
use WWW::SwaggerClient::Object::EdgeModuleResourceUpdatedObject;
use WWW::SwaggerClient::Object::EdgeModuleUpdateObject;
use WWW::SwaggerClient::Object::EdgeModuleUpdatedObject;
use WWW::SwaggerClient::Object::FieldGroupObject;
use WWW::SwaggerClient::Object::FieldInstallationObject;
use WWW::SwaggerClient::Object::FieldObject;
use WWW::SwaggerClient::Object::FieldObjectFields;
use WWW::SwaggerClient::Object::FieldsEdgeModuleObject;
use WWW::SwaggerClient::Object::GroupAddObject;
use WWW::SwaggerClient::Object::GroupName;
use WWW::SwaggerClient::Object::GroupObject;
use WWW::SwaggerClient::Object::InstallationAddObject;
use WWW::SwaggerClient::Object::InstallationAddedObject;
use WWW::SwaggerClient::Object::InstallationObject;
use WWW::SwaggerClient::Object::MetaEdgeModuleObject;
use WWW::SwaggerClient::Object::MetaGroupObject;
use WWW::SwaggerClient::Object::MetaInstallationObject;
use WWW::SwaggerClient::Object::MetaObject;
use WWW::SwaggerClient::Object::PushDataObject;
use WWW::SwaggerClient::Object::PushDataObjectAps;
use WWW::SwaggerClient::Object::PushDataObjectExtras;
use WWW::SwaggerClient::Object::PushDataObjectGcm;
use WWW::SwaggerClient::Object::PushObject;
use WWW::SwaggerClient::Object::PushWhereObject;
use WWW::SwaggerClient::Object::PushWhereObjectDeviceToken;
use WWW::SwaggerClient::Object::UpdateGroupObject;
use WWW::SwaggerClient::Object::UpdateInstallationObject;
use WWW::SwaggerClient::Object::UpdateObject;
use WWW::SwaggerClient::Object::UpdatedGroupObject;
use WWW::SwaggerClient::Object::UpdatedInstallationObject;
use WWW::SwaggerClient::Object::UpdatedObject;
use WWW::SwaggerClient::Object::UserCredentialsObject;
use WWW::SwaggerClient::Object::UserObject;
use WWW::SwaggerClient::Object::UserSignUpResponseObject;
use WWW::SwaggerClient::Object::UserTokenObject;
use WWW::SwaggerClient::Object::UseridObject;
use WWW::SwaggerClient::Object::VersionObject;

# for displaying the API response data
use Data::Dumper;
use WWW::SwaggerClient::;

my $api_instance = WWW::SwaggerClient::->new(
);

my $x_embarcadero_application_id = 'x_embarcadero_application_id_example'; # string | 
my $x_embarcadero_app_secret = 'x_embarcadero_app_secret_example'; # string | 
my $x_embarcadero_master_secret = 'x_embarcadero_master_secret_example'; # string | 

eval {
    $api_instance->a_pi(x_embarcadero_application_id => $x_embarcadero_application_id, x_embarcadero_app_secret => $x_embarcadero_app_secret, x_embarcadero_master_secret => $x_embarcadero_master_secret);
};
if ($@) {
    warn "Exception when calling ApiDocApi->a_pi: $@\n";
}

```

# DOCUMENTATION FOR API ENDPOINTS

All URIs are relative to *http://localhost:8080*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*ApiDocApi* | [**a_pi**](docs/ApiDocApi.md#a_pi) | **GET** /api | Get API EndPoints
*ApiDocApi* | [**get_apijson_format**](docs/ApiDocApi.md#get_apijson_format) | **GET** /api/apidoc.json | Get JSON
*ApiDocApi* | [**get_apiyaml_format**](docs/ApiDocApi.md#get_apiyaml_format) | **GET** /api/apidoc.yaml | Get YAML
*ApiDocApi* | [**get_apiyaml_format_end_point**](docs/ApiDocApi.md#get_apiyaml_format_end_point) | **GET** /api/{item}/apidoc.yaml | Get API EndPoint
*EdgeModulesApi* | [**get_module**](docs/EdgeModulesApi.md#get_module) | **GET** /edgemodules/{mname} | Get Module
*EdgeModulesApi* | [**get_module_resource**](docs/EdgeModulesApi.md#get_module_resource) | **GET** /edgemodules/{mname}/resources/{name} | Get EdgeModule Resource
*EdgeModulesApi* | [**get_module_resources**](docs/EdgeModulesApi.md#get_module_resources) | **GET** /edgemodules/{mname}/resources | Get EdgeModule Resources
*EdgeModulesApi* | [**get_modules**](docs/EdgeModulesApi.md#get_modules) | **GET** /edgemodules | Get Module
*EdgeModulesApi* | [**get_modules_fields**](docs/EdgeModulesApi.md#get_modules_fields) | **GET** /edgemodules/fields | Get Fields
*EdgeModulesApi* | [**get_resources**](docs/EdgeModulesApi.md#get_resources) | **GET** /edgemodules/resources | Get EdgeModules Resources
*EdgeModulesApi* | [**get_resources_fields**](docs/EdgeModulesApi.md#get_resources_fields) | **GET** /edgemodules/resources/fields | Get Resource Fields
*EdgeModulesApi* | [**register_module**](docs/EdgeModulesApi.md#register_module) | **POST** /edgemodules | Add Module
*EdgeModulesApi* | [**register_module_resource**](docs/EdgeModulesApi.md#register_module_resource) | **POST** /edgemodules/{mname}/resources | Add Module Resource
*EdgeModulesApi* | [**unregister_module**](docs/EdgeModulesApi.md#unregister_module) | **DELETE** /edgemodules/{mname} | Delete Module
*EdgeModulesApi* | [**unregister_module_resource**](docs/EdgeModulesApi.md#unregister_module_resource) | **DELETE** /edgemodules/{mname}/resources/{name} | Delete Module Resource
*EdgeModulesApi* | [**update_module**](docs/EdgeModulesApi.md#update_module) | **PUT** /edgemodules/{mname} | Update Module
*EdgeModulesApi* | [**update_module_resource**](docs/EdgeModulesApi.md#update_module_resource) | **PUT** /edgemodules/{mname}/resources/{name} | Update Module Resource
*EdgeModulesInvokersApi* | [**delete_resource_endpoint**](docs/EdgeModulesInvokersApi.md#delete_resource_endpoint) | **DELETE** /edgemodules/{mname}/{rname} | Invoke Resource Delete Method
*EdgeModulesInvokersApi* | [**delete_resource_endpoint_item**](docs/EdgeModulesInvokersApi.md#delete_resource_endpoint_item) | **DELETE** /edgemodules/{mname}/{rname}/{wildcard} | Invoke Resource/* Delete Method
*EdgeModulesInvokersApi* | [**get_resource_endpoint**](docs/EdgeModulesInvokersApi.md#get_resource_endpoint) | **GET** /edgemodules/{mname}/{rname} | Invoke Resource Get Method
*EdgeModulesInvokersApi* | [**get_resource_endpoint_item**](docs/EdgeModulesInvokersApi.md#get_resource_endpoint_item) | **GET** /edgemodules/{mname}/{rname}/{wildcard} | Invoke Resource/* Get Method
*EdgeModulesInvokersApi* | [**patch_resource_endpoint**](docs/EdgeModulesInvokersApi.md#patch_resource_endpoint) | **PATCH** /edgemodules/{mname}/{rname} | Invoke Resource Patch Method
*EdgeModulesInvokersApi* | [**patch_resource_endpoint_item**](docs/EdgeModulesInvokersApi.md#patch_resource_endpoint_item) | **PATCH** /edgemodules/{mname}/{rname}/{wildcard} | Invoke Resource/* Patch Method
*EdgeModulesInvokersApi* | [**post_resource_endpoint**](docs/EdgeModulesInvokersApi.md#post_resource_endpoint) | **POST** /edgemodules/{mname}/{rname} | Invoke Resource Post Method
*EdgeModulesInvokersApi* | [**post_resource_endpoint_item**](docs/EdgeModulesInvokersApi.md#post_resource_endpoint_item) | **POST** /edgemodules/{mname}/{rname}/{wildcard} | Invoke Resource/* Post Method
*EdgeModulesInvokersApi* | [**put_resource_endpoint**](docs/EdgeModulesInvokersApi.md#put_resource_endpoint) | **PUT** /edgemodules/{mname}/{rname} | Invoke Resource Put Method
*EdgeModulesInvokersApi* | [**put_resource_endpoint_item**](docs/EdgeModulesInvokersApi.md#put_resource_endpoint_item) | **PUT** /edgemodules/{mname}/{rname}/{wildcard} | Invoke Resource/* Put Method
*GroupsApi* | [**add_group**](docs/GroupsApi.md#add_group) | **POST** /groups | Add Group
*GroupsApi* | [**delete_group**](docs/GroupsApi.md#delete_group) | **DELETE** /groups/{item} | Delete Group
*GroupsApi* | [**get_group**](docs/GroupsApi.md#get_group) | **GET** /groups/{item} | Get Group
*GroupsApi* | [**get_group_fields**](docs/GroupsApi.md#get_group_fields) | **GET** /groups/fields | Get Fields
*GroupsApi* | [**get_groups**](docs/GroupsApi.md#get_groups) | **GET** /groups | Get Groups
*GroupsApi* | [**update_group**](docs/GroupsApi.md#update_group) | **PUT** /groups/{item} | Update Group
*InstallationsApi* | [**add_installation**](docs/InstallationsApi.md#add_installation) | **POST** /installations | Add Installation
*InstallationsApi* | [**delete_installation**](docs/InstallationsApi.md#delete_installation) | **DELETE** /installations/{id} | Delete Installation
*InstallationsApi* | [**get_channels**](docs/InstallationsApi.md#get_channels) | **GET** /installations/channels | Get Installation Channels
*InstallationsApi* | [**get_installation**](docs/InstallationsApi.md#get_installation) | **GET** /installations/{id} | Get Installation
*InstallationsApi* | [**get_installation_fields**](docs/InstallationsApi.md#get_installation_fields) | **GET** /installations/fields | Get Fields
*InstallationsApi* | [**get_installations**](docs/InstallationsApi.md#get_installations) | **GET** /installations | Get Installations
*InstallationsApi* | [**update_installation**](docs/InstallationsApi.md#update_installation) | **PUT** /installations/{id} | Update Installation
*PushApi* | [**send**](docs/PushApi.md#send) | **POST** /push | Send Push
*UsersApi* | [**add_user**](docs/UsersApi.md#add_user) | **POST** /users | Add User
*UsersApi* | [**delete_user**](docs/UsersApi.md#delete_user) | **DELETE** /users/{id} | Delete User
*UsersApi* | [**get_user**](docs/UsersApi.md#get_user) | **GET** /users/{id} | Get User
*UsersApi* | [**get_user_fields**](docs/UsersApi.md#get_user_fields) | **GET** /users/fields | Get Fields
*UsersApi* | [**get_user_groups**](docs/UsersApi.md#get_user_groups) | **GET** /users/{id}/groups | Get User Groups
*UsersApi* | [**get_users**](docs/UsersApi.md#get_users) | **GET** /users | Get Users
*UsersApi* | [**login_user**](docs/UsersApi.md#login_user) | **POST** /users/login | Log In
*UsersApi* | [**logout_user**](docs/UsersApi.md#logout_user) | **POST** /users/logout | sPostLogoutSummaryTitle
*UsersApi* | [**signup_user**](docs/UsersApi.md#signup_user) | **POST** /users/signup | Sign Up  User
*UsersApi* | [**update_user**](docs/UsersApi.md#update_user) | **PUT** /users/{id} | Update User
*VersionApi* | [**get_version**](docs/VersionApi.md#get_version) | **GET** /version | Get version


# DOCUMENTATION FOR MODELS
 - [WWW::SwaggerClient::Object::ChannelName](docs/ChannelName.md)
 - [WWW::SwaggerClient::Object::EdgeModuleAddObject](docs/EdgeModuleAddObject.md)
 - [WWW::SwaggerClient::Object::EdgeModuleAddedObject](docs/EdgeModuleAddedObject.md)
 - [WWW::SwaggerClient::Object::EdgeModuleObject](docs/EdgeModuleObject.md)
 - [WWW::SwaggerClient::Object::EdgeModuleResourceAddObject](docs/EdgeModuleResourceAddObject.md)
 - [WWW::SwaggerClient::Object::EdgeModuleResourceAddedObject](docs/EdgeModuleResourceAddedObject.md)
 - [WWW::SwaggerClient::Object::EdgeModuleResourceObject](docs/EdgeModuleResourceObject.md)
 - [WWW::SwaggerClient::Object::EdgeModuleResourceUpdateObject](docs/EdgeModuleResourceUpdateObject.md)
 - [WWW::SwaggerClient::Object::EdgeModuleResourceUpdatedObject](docs/EdgeModuleResourceUpdatedObject.md)
 - [WWW::SwaggerClient::Object::EdgeModuleUpdateObject](docs/EdgeModuleUpdateObject.md)
 - [WWW::SwaggerClient::Object::EdgeModuleUpdatedObject](docs/EdgeModuleUpdatedObject.md)
 - [WWW::SwaggerClient::Object::FieldGroupObject](docs/FieldGroupObject.md)
 - [WWW::SwaggerClient::Object::FieldInstallationObject](docs/FieldInstallationObject.md)
 - [WWW::SwaggerClient::Object::FieldObject](docs/FieldObject.md)
 - [WWW::SwaggerClient::Object::FieldObjectFields](docs/FieldObjectFields.md)
 - [WWW::SwaggerClient::Object::FieldsEdgeModuleObject](docs/FieldsEdgeModuleObject.md)
 - [WWW::SwaggerClient::Object::GroupAddObject](docs/GroupAddObject.md)
 - [WWW::SwaggerClient::Object::GroupName](docs/GroupName.md)
 - [WWW::SwaggerClient::Object::GroupObject](docs/GroupObject.md)
 - [WWW::SwaggerClient::Object::InstallationAddObject](docs/InstallationAddObject.md)
 - [WWW::SwaggerClient::Object::InstallationAddedObject](docs/InstallationAddedObject.md)
 - [WWW::SwaggerClient::Object::InstallationObject](docs/InstallationObject.md)
 - [WWW::SwaggerClient::Object::MetaEdgeModuleObject](docs/MetaEdgeModuleObject.md)
 - [WWW::SwaggerClient::Object::MetaGroupObject](docs/MetaGroupObject.md)
 - [WWW::SwaggerClient::Object::MetaInstallationObject](docs/MetaInstallationObject.md)
 - [WWW::SwaggerClient::Object::MetaObject](docs/MetaObject.md)
 - [WWW::SwaggerClient::Object::PushDataObject](docs/PushDataObject.md)
 - [WWW::SwaggerClient::Object::PushDataObjectAps](docs/PushDataObjectAps.md)
 - [WWW::SwaggerClient::Object::PushDataObjectExtras](docs/PushDataObjectExtras.md)
 - [WWW::SwaggerClient::Object::PushDataObjectGcm](docs/PushDataObjectGcm.md)
 - [WWW::SwaggerClient::Object::PushObject](docs/PushObject.md)
 - [WWW::SwaggerClient::Object::PushWhereObject](docs/PushWhereObject.md)
 - [WWW::SwaggerClient::Object::PushWhereObjectDeviceToken](docs/PushWhereObjectDeviceToken.md)
 - [WWW::SwaggerClient::Object::UpdateGroupObject](docs/UpdateGroupObject.md)
 - [WWW::SwaggerClient::Object::UpdateInstallationObject](docs/UpdateInstallationObject.md)
 - [WWW::SwaggerClient::Object::UpdateObject](docs/UpdateObject.md)
 - [WWW::SwaggerClient::Object::UpdatedGroupObject](docs/UpdatedGroupObject.md)
 - [WWW::SwaggerClient::Object::UpdatedInstallationObject](docs/UpdatedInstallationObject.md)
 - [WWW::SwaggerClient::Object::UpdatedObject](docs/UpdatedObject.md)
 - [WWW::SwaggerClient::Object::UserCredentialsObject](docs/UserCredentialsObject.md)
 - [WWW::SwaggerClient::Object::UserObject](docs/UserObject.md)
 - [WWW::SwaggerClient::Object::UserSignUpResponseObject](docs/UserSignUpResponseObject.md)
 - [WWW::SwaggerClient::Object::UserTokenObject](docs/UserTokenObject.md)
 - [WWW::SwaggerClient::Object::UseridObject](docs/UseridObject.md)
 - [WWW::SwaggerClient::Object::VersionObject](docs/VersionObject.md)


# DOCUMENTATION FOR AUTHORIZATION
 All endpoints do not require authorization.

