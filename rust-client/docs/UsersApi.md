# \UsersApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_user**](UsersApi.md#add_user) | **Post** /users | Add User
[**delete_user**](UsersApi.md#delete_user) | **Delete** /users/{id} | Delete User
[**get_user**](UsersApi.md#get_user) | **Get** /users/{id} | Get User
[**get_user_fields**](UsersApi.md#get_user_fields) | **Get** /users/fields | Get Fields
[**get_user_groups**](UsersApi.md#get_user_groups) | **Get** /users/{id}/groups | Get User Groups
[**get_users**](UsersApi.md#get_users) | **Get** /users | Get Users
[**login_user**](UsersApi.md#login_user) | **Post** /users/login | Log In
[**logout_user**](UsersApi.md#logout_user) | **Post** /users/logout | sPostLogoutSummaryTitle
[**signup_user**](UsersApi.md#signup_user) | **Post** /users/signup | Sign Up  User
[**update_user**](UsersApi.md#update_user) | **Put** /users/{id} | Update User


# **add_user**
> ::models::UseridObject add_user(body, optional)
Add User

 |      Used to add a new `User` object to the EMS database.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **body** | [**UserCredentialsObject**](UserCredentialsObject.md)| Object to add a new EMS User in the EMS Server | 
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**UserCredentialsObject**](UserCredentialsObject.md)| Object to add a new EMS User in the EMS Server | 
 **x_embarcadero_application_id** | **String**|  | 
 **x_embarcadero_app_secret** | **String**|  | 
 **x_embarcadero_master_secret** | **String**|  | 

### Return type

[**::models::UseridObject**](useridObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_user**
> delete_user(id, optional)
Delete User

 |      Used to delete a `User`. **id** is the unique EMS User identifier (UID) in the EMS database.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **id** | **String**| A user ID | 
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A user ID | 
 **x_embarcadero_application_id** | **String**|  | 
 **x_embarcadero_app_secret** | **String**|  | 
 **x_embarcadero_master_secret** | **String**|  | 

### Return type

 (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_user**
> ::models::UserObject get_user(id, optional)
Get User

 |      Used to retrieve all data from a `User`. **id** is the unique EMS User identifier (UID) in the EMS database.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **id** | **String**| A user ID | 
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A user ID | 
 **x_embarcadero_application_id** | **String**|  | 
 **x_embarcadero_app_secret** | **String**|  | 
 **x_embarcadero_master_secret** | **String**|  | 

### Return type

[**::models::UserObject**](userObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_user_fields**
> Vec<::models::FieldObject> get_user_fields(optional)
Get Fields

 |      Used to retrieve all the `field names` of the EMS Users (including the custom fields).

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_embarcadero_application_id** | **String**|  | 
 **x_embarcadero_app_secret** | **String**|  | 
 **x_embarcadero_master_secret** | **String**|  | 

### Return type

[**Vec<::models::FieldObject>**](fieldObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_user_groups**
> Vec<::models::GroupName> get_user_groups(id, optional)
Get User Groups

 |      Used to retrieve the EMS Groups the EMS User belongs to. **id** is the unique EMS User identifier (UID) in the EMS database.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **id** | **String**| A user ID | 
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A user ID | 
 **x_embarcadero_application_id** | **String**|  | 
 **x_embarcadero_app_secret** | **String**|  | 
 **x_embarcadero_master_secret** | **String**|  | 

### Return type

[**Vec<::models::GroupName>**](groupName.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_users**
> Vec<::models::UserObject> get_users(optional)
Get Users

 |      Used to retrieve all data from `Users`.      Optional query param of **skip, limit, order, where** determines       size of returned array, filtered and order by.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_embarcadero_application_id** | **String**|  | 
 **x_embarcadero_app_secret** | **String**|  | 
 **x_embarcadero_master_secret** | **String**|  | 
 **skip** | **f32**| users skipped | 
 **limit** | **f32**| maximum number of results to return | 
 **order** | **f32**| order ascending or descending (asc, desc) | 
 **_where** | **String**| filter operators (lt, lte, gt, gte, eq, neq, like, nlike) | 

### Return type

[**Vec<::models::UserObject>**](userObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **login_user**
> ::models::UserTokenObject login_user(body, optional)
Log In

 |      Logs in to the EMS Server with a specific EMS User.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **body** | [**UserCredentialsObject**](UserCredentialsObject.md)| A user object | 
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**UserCredentialsObject**](UserCredentialsObject.md)| A user object | 
 **x_embarcadero_application_id** | **String**|  | 
 **x_embarcadero_app_secret** | **String**|  | 
 **x_embarcadero_master_secret** | **String**|  | 

### Return type

[**::models::UserTokenObject**](userTokenObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **logout_user**
> logout_user(optional)
sPostLogoutSummaryTitle

sPostLogoutSummaryDesc

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_embarcadero_application_id** | **String**|  | 
 **x_embarcadero_app_secret** | **String**|  | 
 **x_embarcadero_master_secret** | **String**|  | 

### Return type

 (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **signup_user**
> ::models::UserSignUpResponseObject signup_user(body, optional)
Sign Up  User

 |      Signs up to the EMS Server with an appropriate EMS User.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **body** | [**UserCredentialsObject**](UserCredentialsObject.md)| Object to sign up a new EMS User in the EMS Server | 
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**UserCredentialsObject**](UserCredentialsObject.md)| Object to sign up a new EMS User in the EMS Server | 
 **x_embarcadero_application_id** | **String**|  | 
 **x_embarcadero_app_secret** | **String**|  | 
 **x_embarcadero_master_secret** | **String**|  | 

### Return type

[**::models::UserSignUpResponseObject**](userSignUpResponseObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_user**
> ::models::UpdatedObject update_user(id, body, optional)
Update User

 |      Used to update a `User`. **id** is the unique EMS User identifier (UID) in the EMS database.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **id** | **String**| A user ID | 
  **body** | [**UpdateObject**](UpdateObject.md)| Add any fieldName | 
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A user ID | 
 **body** | [**UpdateObject**](UpdateObject.md)| Add any fieldName | 
 **x_embarcadero_application_id** | **String**|  | 
 **x_embarcadero_app_secret** | **String**|  | 
 **x_embarcadero_master_secret** | **String**|  | 

### Return type

[**::models::UpdatedObject**](updatedObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

