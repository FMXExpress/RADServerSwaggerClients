# WWW::SwaggerClient::UsersApi

## Load the API package
```perl
use WWW::SwaggerClient::Object::UsersApi;
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_user**](UsersApi.md#add_user) | **POST** /users | Add User
[**delete_user**](UsersApi.md#delete_user) | **DELETE** /users/{id} | Delete User
[**get_user**](UsersApi.md#get_user) | **GET** /users/{id} | Get User
[**get_user_fields**](UsersApi.md#get_user_fields) | **GET** /users/fields | Get Fields
[**get_user_groups**](UsersApi.md#get_user_groups) | **GET** /users/{id}/groups | Get User Groups
[**get_users**](UsersApi.md#get_users) | **GET** /users | Get Users
[**login_user**](UsersApi.md#login_user) | **POST** /users/login | Log In
[**logout_user**](UsersApi.md#logout_user) | **POST** /users/logout | sPostLogoutSummaryTitle
[**signup_user**](UsersApi.md#signup_user) | **POST** /users/signup | Sign Up  User
[**update_user**](UsersApi.md#update_user) | **PUT** /users/{id} | Update User


# **add_user**
> UseridObject add_user(body => $body, x_embarcadero_application_id => $x_embarcadero_application_id, x_embarcadero_app_secret => $x_embarcadero_app_secret, x_embarcadero_master_secret => $x_embarcadero_master_secret)

Add User

 |      Used to add a new `User` object to the EMS database.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::UsersApi;
my $api_instance = WWW::SwaggerClient::UsersApi->new(
);

my $body = WWW::SwaggerClient::Object::UserCredentialsObject->new(); # UserCredentialsObject | Object to add a new EMS User in the EMS Server
my $x_embarcadero_application_id = 'x_embarcadero_application_id_example'; # string | 
my $x_embarcadero_app_secret = 'x_embarcadero_app_secret_example'; # string | 
my $x_embarcadero_master_secret = 'x_embarcadero_master_secret_example'; # string | 

eval { 
    my $result = $api_instance->add_user(body => $body, x_embarcadero_application_id => $x_embarcadero_application_id, x_embarcadero_app_secret => $x_embarcadero_app_secret, x_embarcadero_master_secret => $x_embarcadero_master_secret);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UsersApi->add_user: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**UserCredentialsObject**](UserCredentialsObject.md)| Object to add a new EMS User in the EMS Server | 
 **x_embarcadero_application_id** | **string**|  | [optional] 
 **x_embarcadero_app_secret** | **string**|  | [optional] 
 **x_embarcadero_master_secret** | **string**|  | [optional] 

### Return type

[**UseridObject**](UseridObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_user**
> delete_user(id => $id, x_embarcadero_application_id => $x_embarcadero_application_id, x_embarcadero_app_secret => $x_embarcadero_app_secret, x_embarcadero_master_secret => $x_embarcadero_master_secret)

Delete User

 |      Used to delete a `User`. **id** is the unique EMS User identifier (UID) in the EMS database.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::UsersApi;
my $api_instance = WWW::SwaggerClient::UsersApi->new(
);

my $id = 'id_example'; # string | A user ID
my $x_embarcadero_application_id = 'x_embarcadero_application_id_example'; # string | 
my $x_embarcadero_app_secret = 'x_embarcadero_app_secret_example'; # string | 
my $x_embarcadero_master_secret = 'x_embarcadero_master_secret_example'; # string | 

eval { 
    $api_instance->delete_user(id => $id, x_embarcadero_application_id => $x_embarcadero_application_id, x_embarcadero_app_secret => $x_embarcadero_app_secret, x_embarcadero_master_secret => $x_embarcadero_master_secret);
};
if ($@) {
    warn "Exception when calling UsersApi->delete_user: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| A user ID | 
 **x_embarcadero_application_id** | **string**|  | [optional] 
 **x_embarcadero_app_secret** | **string**|  | [optional] 
 **x_embarcadero_master_secret** | **string**|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_user**
> UserObject get_user(id => $id, x_embarcadero_application_id => $x_embarcadero_application_id, x_embarcadero_app_secret => $x_embarcadero_app_secret, x_embarcadero_master_secret => $x_embarcadero_master_secret)

Get User

 |      Used to retrieve all data from a `User`. **id** is the unique EMS User identifier (UID) in the EMS database.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::UsersApi;
my $api_instance = WWW::SwaggerClient::UsersApi->new(
);

my $id = 'id_example'; # string | A user ID
my $x_embarcadero_application_id = 'x_embarcadero_application_id_example'; # string | 
my $x_embarcadero_app_secret = 'x_embarcadero_app_secret_example'; # string | 
my $x_embarcadero_master_secret = 'x_embarcadero_master_secret_example'; # string | 

eval { 
    my $result = $api_instance->get_user(id => $id, x_embarcadero_application_id => $x_embarcadero_application_id, x_embarcadero_app_secret => $x_embarcadero_app_secret, x_embarcadero_master_secret => $x_embarcadero_master_secret);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UsersApi->get_user: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| A user ID | 
 **x_embarcadero_application_id** | **string**|  | [optional] 
 **x_embarcadero_app_secret** | **string**|  | [optional] 
 **x_embarcadero_master_secret** | **string**|  | [optional] 

### Return type

[**UserObject**](UserObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_user_fields**
> ARRAY[FieldObject] get_user_fields(x_embarcadero_application_id => $x_embarcadero_application_id, x_embarcadero_app_secret => $x_embarcadero_app_secret, x_embarcadero_master_secret => $x_embarcadero_master_secret)

Get Fields

 |      Used to retrieve all the `field names` of the EMS Users (including the custom fields).

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::UsersApi;
my $api_instance = WWW::SwaggerClient::UsersApi->new(
);

my $x_embarcadero_application_id = 'x_embarcadero_application_id_example'; # string | 
my $x_embarcadero_app_secret = 'x_embarcadero_app_secret_example'; # string | 
my $x_embarcadero_master_secret = 'x_embarcadero_master_secret_example'; # string | 

eval { 
    my $result = $api_instance->get_user_fields(x_embarcadero_application_id => $x_embarcadero_application_id, x_embarcadero_app_secret => $x_embarcadero_app_secret, x_embarcadero_master_secret => $x_embarcadero_master_secret);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UsersApi->get_user_fields: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_embarcadero_application_id** | **string**|  | [optional] 
 **x_embarcadero_app_secret** | **string**|  | [optional] 
 **x_embarcadero_master_secret** | **string**|  | [optional] 

### Return type

[**ARRAY[FieldObject]**](FieldObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_user_groups**
> ARRAY[GroupName] get_user_groups(id => $id, x_embarcadero_application_id => $x_embarcadero_application_id, x_embarcadero_app_secret => $x_embarcadero_app_secret, x_embarcadero_master_secret => $x_embarcadero_master_secret)

Get User Groups

 |      Used to retrieve the EMS Groups the EMS User belongs to. **id** is the unique EMS User identifier (UID) in the EMS database.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::UsersApi;
my $api_instance = WWW::SwaggerClient::UsersApi->new(
);

my $id = 'id_example'; # string | A user ID
my $x_embarcadero_application_id = 'x_embarcadero_application_id_example'; # string | 
my $x_embarcadero_app_secret = 'x_embarcadero_app_secret_example'; # string | 
my $x_embarcadero_master_secret = 'x_embarcadero_master_secret_example'; # string | 

eval { 
    my $result = $api_instance->get_user_groups(id => $id, x_embarcadero_application_id => $x_embarcadero_application_id, x_embarcadero_app_secret => $x_embarcadero_app_secret, x_embarcadero_master_secret => $x_embarcadero_master_secret);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UsersApi->get_user_groups: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| A user ID | 
 **x_embarcadero_application_id** | **string**|  | [optional] 
 **x_embarcadero_app_secret** | **string**|  | [optional] 
 **x_embarcadero_master_secret** | **string**|  | [optional] 

### Return type

[**ARRAY[GroupName]**](GroupName.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_users**
> ARRAY[UserObject] get_users(x_embarcadero_application_id => $x_embarcadero_application_id, x_embarcadero_app_secret => $x_embarcadero_app_secret, x_embarcadero_master_secret => $x_embarcadero_master_secret, skip => $skip, limit => $limit, order => $order, where => $where)

Get Users

 |      Used to retrieve all data from `Users`.      Optional query param of **skip, limit, order, where** determines       size of returned array, filtered and order by.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::UsersApi;
my $api_instance = WWW::SwaggerClient::UsersApi->new(
);

my $x_embarcadero_application_id = 'x_embarcadero_application_id_example'; # string | 
my $x_embarcadero_app_secret = 'x_embarcadero_app_secret_example'; # string | 
my $x_embarcadero_master_secret = 'x_embarcadero_master_secret_example'; # string | 
my $skip = 8.14; # Number | users skipped
my $limit = 8.14; # Number | maximum number of results to return
my $order = 8.14; # Number | order ascending or descending (asc, desc)
my $where = 'where_example'; # string | filter operators (lt, lte, gt, gte, eq, neq, like, nlike)

eval { 
    my $result = $api_instance->get_users(x_embarcadero_application_id => $x_embarcadero_application_id, x_embarcadero_app_secret => $x_embarcadero_app_secret, x_embarcadero_master_secret => $x_embarcadero_master_secret, skip => $skip, limit => $limit, order => $order, where => $where);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UsersApi->get_users: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_embarcadero_application_id** | **string**|  | [optional] 
 **x_embarcadero_app_secret** | **string**|  | [optional] 
 **x_embarcadero_master_secret** | **string**|  | [optional] 
 **skip** | **Number**| users skipped | [optional] 
 **limit** | **Number**| maximum number of results to return | [optional] 
 **order** | **Number**| order ascending or descending (asc, desc) | [optional] 
 **where** | **string**| filter operators (lt, lte, gt, gte, eq, neq, like, nlike) | [optional] 

### Return type

[**ARRAY[UserObject]**](UserObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **login_user**
> UserTokenObject login_user(body => $body, x_embarcadero_application_id => $x_embarcadero_application_id, x_embarcadero_app_secret => $x_embarcadero_app_secret, x_embarcadero_master_secret => $x_embarcadero_master_secret)

Log In

 |      Logs in to the EMS Server with a specific EMS User.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::UsersApi;
my $api_instance = WWW::SwaggerClient::UsersApi->new(
);

my $body = WWW::SwaggerClient::Object::UserCredentialsObject->new(); # UserCredentialsObject | A user object
my $x_embarcadero_application_id = 'x_embarcadero_application_id_example'; # string | 
my $x_embarcadero_app_secret = 'x_embarcadero_app_secret_example'; # string | 
my $x_embarcadero_master_secret = 'x_embarcadero_master_secret_example'; # string | 

eval { 
    my $result = $api_instance->login_user(body => $body, x_embarcadero_application_id => $x_embarcadero_application_id, x_embarcadero_app_secret => $x_embarcadero_app_secret, x_embarcadero_master_secret => $x_embarcadero_master_secret);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UsersApi->login_user: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**UserCredentialsObject**](UserCredentialsObject.md)| A user object | 
 **x_embarcadero_application_id** | **string**|  | [optional] 
 **x_embarcadero_app_secret** | **string**|  | [optional] 
 **x_embarcadero_master_secret** | **string**|  | [optional] 

### Return type

[**UserTokenObject**](UserTokenObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **logout_user**
> logout_user(x_embarcadero_application_id => $x_embarcadero_application_id, x_embarcadero_app_secret => $x_embarcadero_app_secret, x_embarcadero_master_secret => $x_embarcadero_master_secret)

sPostLogoutSummaryTitle

sPostLogoutSummaryDesc

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::UsersApi;
my $api_instance = WWW::SwaggerClient::UsersApi->new(
);

my $x_embarcadero_application_id = 'x_embarcadero_application_id_example'; # string | 
my $x_embarcadero_app_secret = 'x_embarcadero_app_secret_example'; # string | 
my $x_embarcadero_master_secret = 'x_embarcadero_master_secret_example'; # string | 

eval { 
    $api_instance->logout_user(x_embarcadero_application_id => $x_embarcadero_application_id, x_embarcadero_app_secret => $x_embarcadero_app_secret, x_embarcadero_master_secret => $x_embarcadero_master_secret);
};
if ($@) {
    warn "Exception when calling UsersApi->logout_user: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_embarcadero_application_id** | **string**|  | [optional] 
 **x_embarcadero_app_secret** | **string**|  | [optional] 
 **x_embarcadero_master_secret** | **string**|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **signup_user**
> UserSignUpResponseObject signup_user(body => $body, x_embarcadero_application_id => $x_embarcadero_application_id, x_embarcadero_app_secret => $x_embarcadero_app_secret, x_embarcadero_master_secret => $x_embarcadero_master_secret)

Sign Up  User

 |      Signs up to the EMS Server with an appropriate EMS User.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::UsersApi;
my $api_instance = WWW::SwaggerClient::UsersApi->new(
);

my $body = WWW::SwaggerClient::Object::UserCredentialsObject->new(); # UserCredentialsObject | Object to sign up a new EMS User in the EMS Server
my $x_embarcadero_application_id = 'x_embarcadero_application_id_example'; # string | 
my $x_embarcadero_app_secret = 'x_embarcadero_app_secret_example'; # string | 
my $x_embarcadero_master_secret = 'x_embarcadero_master_secret_example'; # string | 

eval { 
    my $result = $api_instance->signup_user(body => $body, x_embarcadero_application_id => $x_embarcadero_application_id, x_embarcadero_app_secret => $x_embarcadero_app_secret, x_embarcadero_master_secret => $x_embarcadero_master_secret);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UsersApi->signup_user: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**UserCredentialsObject**](UserCredentialsObject.md)| Object to sign up a new EMS User in the EMS Server | 
 **x_embarcadero_application_id** | **string**|  | [optional] 
 **x_embarcadero_app_secret** | **string**|  | [optional] 
 **x_embarcadero_master_secret** | **string**|  | [optional] 

### Return type

[**UserSignUpResponseObject**](UserSignUpResponseObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_user**
> UpdatedObject update_user(id => $id, body => $body, x_embarcadero_application_id => $x_embarcadero_application_id, x_embarcadero_app_secret => $x_embarcadero_app_secret, x_embarcadero_master_secret => $x_embarcadero_master_secret)

Update User

 |      Used to update a `User`. **id** is the unique EMS User identifier (UID) in the EMS database.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::UsersApi;
my $api_instance = WWW::SwaggerClient::UsersApi->new(
);

my $id = 'id_example'; # string | A user ID
my $body = WWW::SwaggerClient::Object::UpdateObject->new(); # UpdateObject | Add any fieldName
my $x_embarcadero_application_id = 'x_embarcadero_application_id_example'; # string | 
my $x_embarcadero_app_secret = 'x_embarcadero_app_secret_example'; # string | 
my $x_embarcadero_master_secret = 'x_embarcadero_master_secret_example'; # string | 

eval { 
    my $result = $api_instance->update_user(id => $id, body => $body, x_embarcadero_application_id => $x_embarcadero_application_id, x_embarcadero_app_secret => $x_embarcadero_app_secret, x_embarcadero_master_secret => $x_embarcadero_master_secret);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UsersApi->update_user: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| A user ID | 
 **body** | [**UpdateObject**](UpdateObject.md)| Add any fieldName | 
 **x_embarcadero_application_id** | **string**|  | [optional] 
 **x_embarcadero_app_secret** | **string**|  | [optional] 
 **x_embarcadero_master_secret** | **string**|  | [optional] 

### Return type

[**UpdatedObject**](UpdatedObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

