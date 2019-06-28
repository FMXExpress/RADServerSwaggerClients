# GroupsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**addGroup**](GroupsApi.md#addGroup) | **POST** /groups | Add Group
[**deleteGroup**](GroupsApi.md#deleteGroup) | **DELETE** /groups/{item} | Delete Group
[**getGroup**](GroupsApi.md#getGroup) | **GET** /groups/{item} | Get Group
[**getGroupFields**](GroupsApi.md#getGroupFields) | **GET** /groups/fields | Get Fields
[**getGroups**](GroupsApi.md#getGroups) | **GET** /groups | Get Groups
[**updateGroup**](GroupsApi.md#updateGroup) | **PUT** /groups/{item} | Update Group


## **addGroup**

Add Group

|
    Used to add a new 'Group' object to the EMS database.

### Example
```bash
 addGroup X-Embarcadero-Application-Id:value X-Embarcadero-App-Secret:value X-Embarcadero-Master-Secret:value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**GroupAddObject**](GroupAddObject.md) | Object to sign up a new EMS User in the EMS Server |
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

## **deleteGroup**

Delete Group

|
    Used to delete a 'Group'. **item** is the unique EMS Group name in the EMS database.

### Example
```bash
 deleteGroup item=value X-Embarcadero-Application-Id:value X-Embarcadero-App-Secret:value X-Embarcadero-Master-Secret:value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **item** | **string** | A group name |
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

## **getGroup**

Get Group

|
    Used to retrieve all data from a 'Group'. **item** is the unique EMS Group name in the EMS database.

### Example
```bash
 getGroup item=value X-Embarcadero-Application-Id:value X-Embarcadero-App-Secret:value X-Embarcadero-Master-Secret:value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **item** | **string** | A group name |
 **xEmbarcaderoApplicationId** | **string** |  | [optional]
 **xEmbarcaderoAppSecret** | **string** |  | [optional]
 **xEmbarcaderoMasterSecret** | **string** |  | [optional]

### Return type

[**GroupObject**](GroupObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not Applicable
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

## **getGroupFields**

Get Fields

|
    Used to retrieve all the 'field names' of the EMS Group (including the custom fields).

### Example
```bash
 getGroupFields X-Embarcadero-Application-Id:value X-Embarcadero-App-Secret:value X-Embarcadero-Master-Secret:value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xEmbarcaderoApplicationId** | **string** |  | [optional]
 **xEmbarcaderoAppSecret** | **string** |  | [optional]
 **xEmbarcaderoMasterSecret** | **string** |  | [optional]

### Return type

[**array[FieldGroupObject]**](FieldGroupObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not Applicable
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

## **getGroups**

Get Groups

|
    Used to retrieve all data from 'Groups'.
    Optional query param of **skip, limit, order, where** determines 
    size of returned array, filtered and order by.

### Example
```bash
 getGroups X-Embarcadero-Application-Id:value X-Embarcadero-App-Secret:value X-Embarcadero-Master-Secret:value  skip=value  limit=value  order=value  where=value
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

[**array[GroupObject]**](GroupObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not Applicable
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

## **updateGroup**

Update Group

|
    Used to update a 'Group'. **item** is the unique EMS Group name in the EMS database.

### Example
```bash
 updateGroup item=value X-Embarcadero-Application-Id:value X-Embarcadero-App-Secret:value X-Embarcadero-Master-Secret:value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **item** | **string** | A group name |
 **body** | [**UpdateGroupObject**](UpdateGroupObject.md) | Object to sign up a new EMS User in the EMS Server |
 **xEmbarcaderoApplicationId** | **string** |  | [optional]
 **xEmbarcaderoAppSecret** | **string** |  | [optional]
 **xEmbarcaderoMasterSecret** | **string** |  | [optional]

### Return type

[**UpdatedGroupObject**](UpdatedGroupObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

