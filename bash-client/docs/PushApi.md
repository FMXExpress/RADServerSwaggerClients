# PushApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**send**](PushApi.md#send) | **POST** /push | Send Push


## **send**

Send Push

Used to send a push notification message to a registered device

### Example
```bash
 send X-Embarcadero-Application-Id:value X-Embarcadero-App-Secret:value X-Embarcadero-Master-Secret:value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PushObject**](PushObject.md) | Object containing the Push Message data structure |
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

