# ApiDocApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**aPI**](ApiDocApi.md#aPI) | **GET** /api | Get API EndPoints
[**getAPIJSONFormat**](ApiDocApi.md#getAPIJSONFormat) | **GET** /api/apidoc.json | Get JSON
[**getAPIYAMLFormat**](ApiDocApi.md#getAPIYAMLFormat) | **GET** /api/apidoc.yaml | Get YAML
[**getAPIYAMLFormat EndPoint**](ApiDocApi.md#getAPIYAMLFormat EndPoint) | **GET** /api/{item}/apidoc.yaml | Get API EndPoint


<a name="aPI"></a>
# **aPI**
> aPI(xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Get API EndPoints

 |      Used to retrieve all the API EndPoints.

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*

val apiInstance = ApiDocApi()
val xEmbarcaderoApplicationId : kotlin.String = xEmbarcaderoApplicationId_example // kotlin.String | 
val xEmbarcaderoAppSecret : kotlin.String = xEmbarcaderoAppSecret_example // kotlin.String | 
val xEmbarcaderoMasterSecret : kotlin.String = xEmbarcaderoMasterSecret_example // kotlin.String | 
try {
    apiInstance.aPI(xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)
} catch (e: ClientException) {
    println("4xx response calling ApiDocApi#aPI")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling ApiDocApi#aPI")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xEmbarcaderoApplicationId** | **kotlin.String**|  | [optional]
 **xEmbarcaderoAppSecret** | **kotlin.String**|  | [optional]
 **xEmbarcaderoMasterSecret** | **kotlin.String**|  | [optional]

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getAPIJSONFormat"></a>
# **getAPIJSONFormat**
> getAPIJSONFormat(xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Get JSON

Get API in JSON format

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*

val apiInstance = ApiDocApi()
val xEmbarcaderoApplicationId : kotlin.String = xEmbarcaderoApplicationId_example // kotlin.String | 
val xEmbarcaderoAppSecret : kotlin.String = xEmbarcaderoAppSecret_example // kotlin.String | 
val xEmbarcaderoMasterSecret : kotlin.String = xEmbarcaderoMasterSecret_example // kotlin.String | 
try {
    apiInstance.getAPIJSONFormat(xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)
} catch (e: ClientException) {
    println("4xx response calling ApiDocApi#getAPIJSONFormat")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling ApiDocApi#getAPIJSONFormat")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xEmbarcaderoApplicationId** | **kotlin.String**|  | [optional]
 **xEmbarcaderoAppSecret** | **kotlin.String**|  | [optional]
 **xEmbarcaderoMasterSecret** | **kotlin.String**|  | [optional]

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

<a name="getAPIYAMLFormat"></a>
# **getAPIYAMLFormat**
> getAPIYAMLFormat(xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Get YAML

Get API in YAML format

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*

val apiInstance = ApiDocApi()
val xEmbarcaderoApplicationId : kotlin.String = xEmbarcaderoApplicationId_example // kotlin.String | 
val xEmbarcaderoAppSecret : kotlin.String = xEmbarcaderoAppSecret_example // kotlin.String | 
val xEmbarcaderoMasterSecret : kotlin.String = xEmbarcaderoMasterSecret_example // kotlin.String | 
try {
    apiInstance.getAPIYAMLFormat(xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)
} catch (e: ClientException) {
    println("4xx response calling ApiDocApi#getAPIYAMLFormat")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling ApiDocApi#getAPIYAMLFormat")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xEmbarcaderoApplicationId** | **kotlin.String**|  | [optional]
 **xEmbarcaderoAppSecret** | **kotlin.String**|  | [optional]
 **xEmbarcaderoMasterSecret** | **kotlin.String**|  | [optional]

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

<a name="getAPIYAMLFormat EndPoint"></a>
# **getAPIYAMLFormat EndPoint**
> getAPIYAMLFormat EndPoint(item, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Get API EndPoint

 |      Used to retrieve an EndPoint for the API EndPoints.

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*

val apiInstance = ApiDocApi()
val item : kotlin.String = item_example // kotlin.String | Path Segment to an EndPoint
val xEmbarcaderoApplicationId : kotlin.String = xEmbarcaderoApplicationId_example // kotlin.String | 
val xEmbarcaderoAppSecret : kotlin.String = xEmbarcaderoAppSecret_example // kotlin.String | 
val xEmbarcaderoMasterSecret : kotlin.String = xEmbarcaderoMasterSecret_example // kotlin.String | 
try {
    apiInstance.getAPIYAMLFormat EndPoint(item, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)
} catch (e: ClientException) {
    println("4xx response calling ApiDocApi#getAPIYAMLFormat EndPoint")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling ApiDocApi#getAPIYAMLFormat EndPoint")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **item** | **kotlin.String**| Path Segment to an EndPoint |
 **xEmbarcaderoApplicationId** | **kotlin.String**|  | [optional]
 **xEmbarcaderoAppSecret** | **kotlin.String**|  | [optional]
 **xEmbarcaderoMasterSecret** | **kotlin.String**|  | [optional]

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

