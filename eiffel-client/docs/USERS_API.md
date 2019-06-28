# USERS_API

All URIs are relative to *http://localhost:8080*

Feature | HTTP request | Description
------------- | ------------- | -------------
[**add_user**](USERS_API.md#add_user) | **Post** /users | Add User
[**delete_user**](USERS_API.md#delete_user) | **Delete** /users/{id} | Delete User
[**login_user**](USERS_API.md#login_user) | **Post** /users/login | Log In
[**logout_user**](USERS_API.md#logout_user) | **Post** /users/logout | sPostLogoutSummaryTitle
[**signup_user**](USERS_API.md#signup_user) | **Post** /users/signup | Sign Up  User
[**update_user**](USERS_API.md#update_user) | **Put** /users/{id} | Update User
[**user**](USERS_API.md#user) | **Get** /users/{id} | Get User
[**user_fields**](USERS_API.md#user_fields) | **Get** /users/fields | Get Fields
[**user_groups**](USERS_API.md#user_groups) | **Get** /users/{id}/groups | Get User Groups
[**users**](USERS_API.md#users) | **Get** /users | Get Users


# **add_user**
> add_user (body: USER_CREDENTIALS_OBJECT ; x__embarcadero__application__id:  detachable STRING_32 ; x__embarcadero__app__secret:  detachable STRING_32 ; x__embarcadero__master__secret:  detachable STRING_32 ): detachable USERID_OBJECT
	

Add User

 |      Used to add a new `User` object to the EMS database.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**USER_CREDENTIALS_OBJECT**](USER_CREDENTIALS_OBJECT.md)| Object to add a new EMS User in the EMS Server | 
 **x__embarcadero__application__id** | **STRING_32**|  | [optional] 
 **x__embarcadero__app__secret** | **STRING_32**|  | [optional] 
 **x__embarcadero__master__secret** | **STRING_32**|  | [optional] 

### Return type

[**USERID_OBJECT**](useridObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_user**
> delete_user (id: STRING_32 ; x__embarcadero__application__id:  detachable STRING_32 ; x__embarcadero__app__secret:  detachable STRING_32 ; x__embarcadero__master__secret:  detachable STRING_32 )
	

Delete User

 |      Used to delete a `User`. **id** is the unique EMS User identifier (UID) in the EMS database.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **STRING_32**| A user ID | 
 **x__embarcadero__application__id** | **STRING_32**|  | [optional] 
 **x__embarcadero__app__secret** | **STRING_32**|  | [optional] 
 **x__embarcadero__master__secret** | **STRING_32**|  | [optional] 

### Return type

{empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **login_user**
> login_user (body: USER_CREDENTIALS_OBJECT ; x__embarcadero__application__id:  detachable STRING_32 ; x__embarcadero__app__secret:  detachable STRING_32 ; x__embarcadero__master__secret:  detachable STRING_32 ): detachable USER_TOKEN_OBJECT
	

Log In

 |      Logs in to the EMS Server with a specific EMS User.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**USER_CREDENTIALS_OBJECT**](USER_CREDENTIALS_OBJECT.md)| A user object | 
 **x__embarcadero__application__id** | **STRING_32**|  | [optional] 
 **x__embarcadero__app__secret** | **STRING_32**|  | [optional] 
 **x__embarcadero__master__secret** | **STRING_32**|  | [optional] 

### Return type

[**USER_TOKEN_OBJECT**](userTokenObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **logout_user**
> logout_user (x__embarcadero__application__id:  detachable STRING_32 ; x__embarcadero__app__secret:  detachable STRING_32 ; x__embarcadero__master__secret:  detachable STRING_32 )
	

sPostLogoutSummaryTitle

sPostLogoutSummaryDesc


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x__embarcadero__application__id** | **STRING_32**|  | [optional] 
 **x__embarcadero__app__secret** | **STRING_32**|  | [optional] 
 **x__embarcadero__master__secret** | **STRING_32**|  | [optional] 

### Return type

{empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **signup_user**
> signup_user (body: USER_CREDENTIALS_OBJECT ; x__embarcadero__application__id:  detachable STRING_32 ; x__embarcadero__app__secret:  detachable STRING_32 ; x__embarcadero__master__secret:  detachable STRING_32 ): detachable USER_SIGN_UP_RESPONSE_OBJECT
	

Sign Up  User

 |      Signs up to the EMS Server with an appropriate EMS User.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**USER_CREDENTIALS_OBJECT**](USER_CREDENTIALS_OBJECT.md)| Object to sign up a new EMS User in the EMS Server | 
 **x__embarcadero__application__id** | **STRING_32**|  | [optional] 
 **x__embarcadero__app__secret** | **STRING_32**|  | [optional] 
 **x__embarcadero__master__secret** | **STRING_32**|  | [optional] 

### Return type

[**USER_SIGN_UP_RESPONSE_OBJECT**](userSignUpResponseObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_user**
> update_user (id: STRING_32 ; body: UPDATE_OBJECT ; x__embarcadero__application__id:  detachable STRING_32 ; x__embarcadero__app__secret:  detachable STRING_32 ; x__embarcadero__master__secret:  detachable STRING_32 ): detachable UPDATED_OBJECT
	

Update User

 |      Used to update a `User`. **id** is the unique EMS User identifier (UID) in the EMS database.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **STRING_32**| A user ID | 
 **body** | [**UPDATE_OBJECT**](UPDATE_OBJECT.md)| Add any fieldName | 
 **x__embarcadero__application__id** | **STRING_32**|  | [optional] 
 **x__embarcadero__app__secret** | **STRING_32**|  | [optional] 
 **x__embarcadero__master__secret** | **STRING_32**|  | [optional] 

### Return type

[**UPDATED_OBJECT**](updatedObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **user**
> user (id: STRING_32 ; x__embarcadero__application__id:  detachable STRING_32 ; x__embarcadero__app__secret:  detachable STRING_32 ; x__embarcadero__master__secret:  detachable STRING_32 ): detachable USER_OBJECT
	

Get User

 |      Used to retrieve all data from a `User`. **id** is the unique EMS User identifier (UID) in the EMS database.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **STRING_32**| A user ID | 
 **x__embarcadero__application__id** | **STRING_32**|  | [optional] 
 **x__embarcadero__app__secret** | **STRING_32**|  | [optional] 
 **x__embarcadero__master__secret** | **STRING_32**|  | [optional] 

### Return type

[**USER_OBJECT**](userObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **user_fields**
> user_fields (x__embarcadero__application__id:  detachable STRING_32 ; x__embarcadero__app__secret:  detachable STRING_32 ; x__embarcadero__master__secret:  detachable STRING_32 ): detachable LIST [FIELD_OBJECT]
	

Get Fields

 |      Used to retrieve all the `field names` of the EMS Users (including the custom fields).


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x__embarcadero__application__id** | **STRING_32**|  | [optional] 
 **x__embarcadero__app__secret** | **STRING_32**|  | [optional] 
 **x__embarcadero__master__secret** | **STRING_32**|  | [optional] 

### Return type

[**LIST [FIELD_OBJECT]**](fieldObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **user_groups**
> user_groups (id: STRING_32 ; x__embarcadero__application__id:  detachable STRING_32 ; x__embarcadero__app__secret:  detachable STRING_32 ; x__embarcadero__master__secret:  detachable STRING_32 ): detachable LIST [GROUP_NAME]
	

Get User Groups

 |      Used to retrieve the EMS Groups the EMS User belongs to. **id** is the unique EMS User identifier (UID) in the EMS database.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **STRING_32**| A user ID | 
 **x__embarcadero__application__id** | **STRING_32**|  | [optional] 
 **x__embarcadero__app__secret** | **STRING_32**|  | [optional] 
 **x__embarcadero__master__secret** | **STRING_32**|  | [optional] 

### Return type

[**LIST [GROUP_NAME]**](groupName.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **users**
> users (x__embarcadero__application__id:  detachable STRING_32 ; x__embarcadero__app__secret:  detachable STRING_32 ; x__embarcadero__master__secret:  detachable STRING_32 ; skip:  detachable REAL_32 ; limit:  detachable REAL_32 ; order:  detachable REAL_32 ; where:  detachable STRING_32 ): detachable LIST [USER_OBJECT]
	

Get Users

 |      Used to retrieve all data from `Users`.      Optional query param of **skip, limit, order, where** determines       size of returned array, filtered and order by.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x__embarcadero__application__id** | **STRING_32**|  | [optional] 
 **x__embarcadero__app__secret** | **STRING_32**|  | [optional] 
 **x__embarcadero__master__secret** | **STRING_32**|  | [optional] 
 **skip** | **REAL_32**| users skipped | [optional] 
 **limit** | **REAL_32**| maximum number of results to return | [optional] 
 **order** | **REAL_32**| order ascending or descending (asc, desc) | [optional] 
 **where** | **STRING_32**| filter operators (lt, lte, gt, gte, eq, neq, like, nlike) | [optional] 

### Return type

[**LIST [USER_OBJECT]**](userObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

