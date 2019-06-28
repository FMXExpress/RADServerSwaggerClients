# swagger.api.VersionApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getVersion**](VersionApi.md#getVersion) | **Get** /version | Get version


# **getVersion**
> VersionObject getVersion(xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Get version

 |      Used to retrieve the `Version` of the EMS Server.

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new VersionApi();
var xEmbarcaderoApplicationId = xEmbarcaderoApplicationId_example; // String | 
var xEmbarcaderoAppSecret = xEmbarcaderoAppSecret_example; // String | 
var xEmbarcaderoMasterSecret = xEmbarcaderoMasterSecret_example; // String | 

try { 
    var result = api_instance.getVersion(xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
    print(result);
} catch (e) {
    print("Exception when calling VersionApi->getVersion: $e\n");
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

