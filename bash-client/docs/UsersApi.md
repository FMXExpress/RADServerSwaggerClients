# UsersApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**addUser**](UsersApi.md#addUser) | **POST** /users | Add User
[**deleteUser**](UsersApi.md#deleteUser) | **DELETE** /users/{id} | Delete User
[**getUser**](UsersApi.md#getUser) | **GET** /users/{id} | Get User
[**getUserFields**](UsersApi.md#getUserFields) | **GET** /users/fields | Get Fields
[**getUserGroups**](UsersApi.md#getUserGroups) | **GET** /users/{id}/groups | Get User Groups
[**getUsers**](UsersApi.md#getUsers) | **GET** /users | Get Users
[**loginUser**](UsersApi.md#loginUser) | **POST** /users/login | Log In
[**logoutUser**](UsersApi.md#logoutUser) | **POST** /users/logout | sPostLogoutSummaryTitle
[**signupUser**](UsersApi.md#signupUser) | **POST** /users/signup | Sign Up  User
[**updateUser**](UsersApi.md#updateUser) | **PUT** /users/{id} | Update User


## **addUser**

Add User

|
    Used to add a new 'User' object to the EMS database.

### Example
```bash
 addUser X-Embarcadero-Application-Id:value X-Embarcadero-App-Secret:value X-Embarcadero-Master-Secret:value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**UserCredentialsObject**](UserCredentialsObject.md) | Object to add a new EMS User in the EMS Server |
 **xEmbarcaderoApplicationId** | **string** |  | [optional]
 **xEmbarcaderoAppSecret** | **string** |  | [optional]
 **xEmbarcaderoMasterSecret** | **string** |  | [optional]

### Return type

[**UseridObject**](UseridObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

## **deleteUser**

Delete User

|
    Used to delete a 'User'. **id** is the unique EMS User identifier (UID) in the EMS database.

### Example
```bash
 deleteUser id=value X-Embarcadero-Application-Id:value X-Embarcadero-App-Secret:value X-Embarcadero-Master-Secret:value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string** | A user ID |
 **xEmbarcaderoApplicationId** | **string** |  | [optional]
 **xEmbarcaderoAppSecret** | **string** |  | [optional]
 **xEmbarcaderoMasterSecret** | **string** |  | [optional]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not Applicable
 - **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

## **getUser**

Get User

|
    Used to retrieve all data from a 'User'. **id** is the unique EMS User identifier (UID) in the EMS database.

### Example
```bash
 getUser id=value X-Embarcadero-Application-Id:value X-Embarcadero-App-Secret:value X-Embarcadero-Master-Secret:value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string** | A user ID |
 **xEmbarcaderoApplicationId** | **string** |  | [optional]
 **xEmbarcaderoAppSecret** | **string** |  | [optional]
 **xEmbarcaderoMasterSecret** | **string** |  | [optional]

### Return type

[**UserObject**](UserObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not Applicable
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

## **getUserFields**

Get Fields

|
    Used to retrieve all the 'field names' of the EMS Users (including the custom fields).

### Example
```bash
 getUserFields X-Embarcadero-Application-Id:value X-Embarcadero-App-Secret:value X-Embarcadero-Master-Secret:value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xEmbarcaderoApplicationId** | **string** |  | [optional]
 **xEmbarcaderoAppSecret** | **string** |  | [optional]
 **xEmbarcaderoMasterSecret** | **string** |  | [optional]

### Return type

[**array[FieldObject]**](FieldObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not Applicable
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

## **getUserGroups**

Get User Groups

|
    Used to retrieve the EMS Groups the EMS User belongs to. **id** is the unique EMS User identifier (UID) in the EMS database.

### Example
```bash
 getUserGroups id=value X-Embarcadero-Application-Id:value X-Embarcadero-App-Secret:value X-Embarcadero-Master-Secret:value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string** | A user ID |
 **xEmbarcaderoApplicationId** | **string** |  | [optional]
 **xEmbarcaderoAppSecret** | **string** |  | [optional]
 **xEmbarcaderoMasterSecret** | **string** |  | [optional]

### Return type

[**array[GroupName]**](GroupName.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not Applicable
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

## **getUsers**

Get Users

|
    Used to retrieve all data from 'Users'.
    Optional query param of **skip, limit, order, where** determines 
    size of returned array, filtered and order by.

### Example
```bash
 getUsers X-Embarcadero-Application-Id:value X-Embarcadero-App-Secret:value X-Embarcadero-Master-Secret:value  skip=value  limit=value  order=value  where=value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xEmbarcaderoApplicationId** | **string** |  | [optional]
 **xEmbarcaderoAppSecret** | **string** |  | [optional]
 **xEmbarcaderoMasterSecret** | **string** |  | [optional]
 **skip** | **integer** | users skipped | [optional]
 **limit** | **integer** | maximum number of results to return | [optional]
 **order** | **integer** | order ascending or descending (asc, desc) | [optional]
 **where** | **string** | filter operators (lt, lte, gt, gte, eq, neq, like, nlike) | [optional]

### Return type

[**array[UserObject]**](UserObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not Applicable
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

## **loginUser**

Log In

|
    Logs in to the EMS Server with a specific EMS User.

### Example
```bash
 loginUser X-Embarcadero-Application-Id:value X-Embarcadero-App-Secret:value X-Embarcadero-Master-Secret:value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**UserCredentialsObject**](UserCredentialsObject.md) | A user object |
 **xEmbarcaderoApplicationId** | **string** |  | [optional]
 **xEmbarcaderoAppSecret** | **string** |  | [optional]
 **xEmbarcaderoMasterSecret** | **string** |  | [optional]

### Return type

[**UserTokenObject**](UserTokenObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

## **logoutUser**

sPostLogoutSummaryTitle

sPostLogoutSummaryDesc

### Example
```bash
 logoutUser X-Embarcadero-Application-Id:value X-Embarcadero-App-Secret:value X-Embarcadero-Master-Secret:value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xEmbarcaderoApplicationId** | **string** |  | [optional]
 **xEmbarcaderoAppSecret** | **string** |  | [optional]
 **xEmbarcaderoMasterSecret** | **string** |  | [optional]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

## **signupUser**

Sign Up  User

|
    Signs up to the EMS Server with an appropriate EMS User.

### Example
```bash
 signupUser X-Embarcadero-Application-Id:value X-Embarcadero-App-Secret:value X-Embarcadero-Master-Secret:value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**UserCredentialsObject**](UserCredentialsObject.md) | Object to sign up a new EMS User in the EMS Server |
 **xEmbarcaderoApplicationId** | **string** |  | [optional]
 **xEmbarcaderoAppSecret** | **string** |  | [optional]
 **xEmbarcaderoMasterSecret** | **string** |  | [optional]

### Return type

[**UserSignUpResponseObject**](UserSignUpResponseObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

## **updateUser**

Update User

|
    Used to update a 'User'. **id** is the unique EMS User identifier (UID) in the EMS database.

### Example
```bash
 updateUser id=value X-Embarcadero-Application-Id:value X-Embarcadero-App-Secret:value X-Embarcadero-Master-Secret:value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string** | A user ID |
 **body** | [**UpdateObject**](UpdateObject.md) | Add any fieldName |
 **xEmbarcaderoApplicationId** | **string** |  | [optional]
 **xEmbarcaderoAppSecret** | **string** |  | [optional]
 **xEmbarcaderoMasterSecret** | **string** |  | [optional]

### Return type

[**UpdatedObject**](UpdatedObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

