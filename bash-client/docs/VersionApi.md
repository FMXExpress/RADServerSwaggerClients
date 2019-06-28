# VersionApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**getVersion**](VersionApi.md#getVersion) | **GET** /version | Get version


## **getVersion**

Get version

|
    Used to retrieve the 'Version' of the EMS Server.

### Example
```bash
 getVersion X-Embarcadero-Application-Id:value X-Embarcadero-App-Secret:value X-Embarcadero-Master-Secret:value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xEmbarcaderoApplicationId** | **string** |  | [optional]
 **xEmbarcaderoAppSecret** | **string** |  | [optional]
 **xEmbarcaderoMasterSecret** | **string** |  | [optional]

### Return type

[**VersionObject**](VersionObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not Applicable
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

