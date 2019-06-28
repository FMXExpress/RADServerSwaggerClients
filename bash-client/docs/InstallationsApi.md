# InstallationsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**addInstallation**](InstallationsApi.md#addInstallation) | **POST** /installations | Add Installation
[**deleteInstallation**](InstallationsApi.md#deleteInstallation) | **DELETE** /installations/{id} | Delete Installation
[**getChannels**](InstallationsApi.md#getChannels) | **GET** /installations/channels | Get Installation Channels
[**getInstallation**](InstallationsApi.md#getInstallation) | **GET** /installations/{id} | Get Installation
[**getInstallationFields**](InstallationsApi.md#getInstallationFields) | **GET** /installations/fields | Get Fields
[**getInstallations**](InstallationsApi.md#getInstallations) | **GET** /installations | Get Installations
[**updateInstallation**](InstallationsApi.md#updateInstallation) | **PUT** /installations/{id} | Update Installation


## **addInstallation**

Add Installation

|
    Used to add a new 'Installation' object to the EMS database.

### Example
```bash
 addInstallation X-Embarcadero-Application-Id:value X-Embarcadero-App-Secret:value X-Embarcadero-Master-Secret:value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**InstallationAddObject**](InstallationAddObject.md) | Object to sign up a new EMS User in the EMS Server |
 **xEmbarcaderoApplicationId** | **string** |  | [optional]
 **xEmbarcaderoAppSecret** | **string** |  | [optional]
 **xEmbarcaderoMasterSecret** | **string** |  | [optional]

### Return type

[**InstallationAddedObject**](InstallationAddedObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

## **deleteInstallation**

Delete Installation

|
    Used to delete an 'Installation'. **id** is the unique EMS Installation identifier (IID) in the EMS database.

### Example
```bash
 deleteInstallation id=value X-Embarcadero-Application-Id:value X-Embarcadero-App-Secret:value X-Embarcadero-Master-Secret:value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string** | A Installation ID |
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

## **getChannels**

Get Installation Channels

|
     Used to retrieve the available channels to which the device has subscribed. **id** is the unique EMS Installation identifier (InstallationID) in the EMS database.

### Example
```bash
 getChannels X-Embarcadero-Application-Id:value X-Embarcadero-App-Secret:value X-Embarcadero-Master-Secret:value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xEmbarcaderoApplicationId** | **string** |  | [optional]
 **xEmbarcaderoAppSecret** | **string** |  | [optional]
 **xEmbarcaderoMasterSecret** | **string** |  | [optional]

### Return type

[**array[ChannelName]**](ChannelName.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not Applicable
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

## **getInstallation**

Get Installation

|
    Used to retrieve all data from a specific 'Installation' (registered device). **id** is the unique EMS Installation identifier (InstallationID) in the EMS database.

### Example
```bash
 getInstallation id=value X-Embarcadero-Application-Id:value X-Embarcadero-App-Secret:value X-Embarcadero-Master-Secret:value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string** | A Installation ID |
 **xEmbarcaderoApplicationId** | **string** |  | [optional]
 **xEmbarcaderoAppSecret** | **string** |  | [optional]
 **xEmbarcaderoMasterSecret** | **string** |  | [optional]

### Return type

[**InstallationObject**](InstallationObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not Applicable
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

## **getInstallationFields**

Get Fields

|
    Used to retrieve all the 'field names' of the EMS Installation (including the custom fields).

### Example
```bash
 getInstallationFields X-Embarcadero-Application-Id:value X-Embarcadero-App-Secret:value X-Embarcadero-Master-Secret:value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xEmbarcaderoApplicationId** | **string** |  | [optional]
 **xEmbarcaderoAppSecret** | **string** |  | [optional]
 **xEmbarcaderoMasterSecret** | **string** |  | [optional]

### Return type

[**array[FieldInstallationObject]**](FieldInstallationObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not Applicable
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

## **getInstallations**

Get Installations

|
    Used to retrieve all data from 'Installation'.
    Optional query param of **skip, limit, order, where** determines 
    size of returned array, filtered and order by.

### Example
```bash
 getInstallations X-Embarcadero-Application-Id:value X-Embarcadero-App-Secret:value X-Embarcadero-Master-Secret:value  skip=value  limit=value  order=value  where=value
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

[**array[InstallationObject]**](InstallationObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not Applicable
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

## **updateInstallation**

Update Installation

|
    Used to update an 'Installation'. **id** is the unique EMS Installation identifier (IID) in the EMS database.

### Example
```bash
 updateInstallation id=value X-Embarcadero-Application-Id:value X-Embarcadero-App-Secret:value X-Embarcadero-Master-Secret:value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string** | A Installation ID |
 **body** | [**UpdateInstallationObject**](UpdateInstallationObject.md) | Installation fields to update |
 **xEmbarcaderoApplicationId** | **string** |  | [optional]
 **xEmbarcaderoAppSecret** | **string** |  | [optional]
 **xEmbarcaderoMasterSecret** | **string** |  | [optional]

### Return type

[**UpdatedInstallationObject**](UpdatedInstallationObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

