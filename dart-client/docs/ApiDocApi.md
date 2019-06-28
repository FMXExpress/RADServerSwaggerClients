# swagger.api.ApiDocApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**aPI**](ApiDocApi.md#aPI) | **GET** /api | Get API EndPoints
[**getAPIJSONFormat**](ApiDocApi.md#getAPIJSONFormat) | **GET** /api/apidoc.json | Get JSON
[**getAPIYAMLFormat**](ApiDocApi.md#getAPIYAMLFormat) | **GET** /api/apidoc.yaml | Get YAML
[**getAPIYAMLFormat EndPoint**](ApiDocApi.md#getAPIYAMLFormat EndPoint) | **GET** /api/{item}/apidoc.yaml | Get API EndPoint


# **aPI**
> aPI(xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Get API EndPoints

 |      Used to retrieve all the API EndPoints.

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new ApiDocApi();
var xEmbarcaderoApplicationId = xEmbarcaderoApplicationId_example; // String | 
var xEmbarcaderoAppSecret = xEmbarcaderoAppSecret_example; // String | 
var xEmbarcaderoMasterSecret = xEmbarcaderoMasterSecret_example; // String | 

try { 
    api_instance.aPI(xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
} catch (e) {
    print("Exception when calling ApiDocApi->aPI: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xEmbarcaderoApplicationId** | **String**|  | [optional] 
 **xEmbarcaderoAppSecret** | **String**|  | [optional] 
 **xEmbarcaderoMasterSecret** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAPIJSONFormat**
> getAPIJSONFormat(xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Get JSON

Get API in JSON format

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new ApiDocApi();
var xEmbarcaderoApplicationId = xEmbarcaderoApplicationId_example; // String | 
var xEmbarcaderoAppSecret = xEmbarcaderoAppSecret_example; // String | 
var xEmbarcaderoMasterSecret = xEmbarcaderoMasterSecret_example; // String | 

try { 
    api_instance.getAPIJSONFormat(xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
} catch (e) {
    print("Exception when calling ApiDocApi->getAPIJSONFormat: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xEmbarcaderoApplicationId** | **String**|  | [optional] 
 **xEmbarcaderoAppSecret** | **String**|  | [optional] 
 **xEmbarcaderoMasterSecret** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAPIYAMLFormat**
> getAPIYAMLFormat(xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Get YAML

Get API in YAML format

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new ApiDocApi();
var xEmbarcaderoApplicationId = xEmbarcaderoApplicationId_example; // String | 
var xEmbarcaderoAppSecret = xEmbarcaderoAppSecret_example; // String | 
var xEmbarcaderoMasterSecret = xEmbarcaderoMasterSecret_example; // String | 

try { 
    api_instance.getAPIYAMLFormat(xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
} catch (e) {
    print("Exception when calling ApiDocApi->getAPIYAMLFormat: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xEmbarcaderoApplicationId** | **String**|  | [optional] 
 **xEmbarcaderoAppSecret** | **String**|  | [optional] 
 **xEmbarcaderoMasterSecret** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAPIYAMLFormat EndPoint**
> getAPIYAMLFormat EndPoint(item, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Get API EndPoint

 |      Used to retrieve an EndPoint for the API EndPoints.

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new ApiDocApi();
var item = item_example; // String | Path Segment to an EndPoint
var xEmbarcaderoApplicationId = xEmbarcaderoApplicationId_example; // String | 
var xEmbarcaderoAppSecret = xEmbarcaderoAppSecret_example; // String | 
var xEmbarcaderoMasterSecret = xEmbarcaderoMasterSecret_example; // String | 

try { 
    api_instance.getAPIYAMLFormat EndPoint(item, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
} catch (e) {
    print("Exception when calling ApiDocApi->getAPIYAMLFormat EndPoint: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **item** | **String**| Path Segment to an EndPoint | 
 **xEmbarcaderoApplicationId** | **String**|  | [optional] 
 **xEmbarcaderoAppSecret** | **String**|  | [optional] 
 **xEmbarcaderoMasterSecret** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

