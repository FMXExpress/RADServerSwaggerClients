# VersionApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getVersion**](VersionApi.md#getVersion) | **GET** /version | Get version


<a name="getVersion"></a>
# **getVersion**
> VersionObject getVersion(xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Get version

 |      Used to retrieve the &#x60;Version&#x60; of the EMS Server.

### Example
```java
// Import classes:
//import io.swagger.client.ApiException;
//import io.swagger.client.api.VersionApi;


VersionApi apiInstance = new VersionApi();
String xEmbarcaderoApplicationId = "xEmbarcaderoApplicationId_example"; // String | 
String xEmbarcaderoAppSecret = "xEmbarcaderoAppSecret_example"; // String | 
String xEmbarcaderoMasterSecret = "xEmbarcaderoMasterSecret_example"; // String | 
try {
    VersionObject result = apiInstance.getVersion(xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling VersionApi#getVersion");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xEmbarcaderoApplicationId** | **String**|  | [optional]
 **xEmbarcaderoAppSecret** | **String**|  | [optional]
 **xEmbarcaderoMasterSecret** | **String**|  | [optional]

### Return type

[**VersionObject**](VersionObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

