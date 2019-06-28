# SwagVersionApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getVersion**](SwagVersionApi.md#getVersion) | **GET** /version | Get version


<a name="getVersion"></a>
# **getVersion**
> SwagVersionObject getVersion(xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Get version

 |\r\n    Used to retrieve the &#x60;Version&#x60; of the EMS Server.

### Example
```java
SwagVersionApi api = new SwagVersionApi();

Map<String, Object> params = new Map<String, Object>{
    'xEmbarcaderoApplicationId' => 'xEmbarcaderoApplicationId_example',
    'xEmbarcaderoAppSecret' => 'xEmbarcaderoAppSecret_example',
    'xEmbarcaderoMasterSecret' => 'xEmbarcaderoMasterSecret_example'
};

try {
    // cross your fingers
    SwagVersionObject result = api.getVersion(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xEmbarcaderoApplicationId** | **String**|  | [optional]
 **xEmbarcaderoAppSecret** | **String**|  | [optional]
 **xEmbarcaderoMasterSecret** | **String**|  | [optional]

### Return type

[**SwagVersionObject**](SwagVersionObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

