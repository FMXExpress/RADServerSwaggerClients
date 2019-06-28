# EdgeModulesInvokersApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteResourceEndpoint**](EdgeModulesInvokersApi.md#deleteResourceEndpoint) | **DELETE** /edgemodules/{mname}/{rname} | Invoke Resource Delete Method
[**deleteResourceEndpointItem**](EdgeModulesInvokersApi.md#deleteResourceEndpointItem) | **DELETE** /edgemodules/{mname}/{rname}/{wildcard} | Invoke Resource/_* Delete Method
[**getResourceEndpoint**](EdgeModulesInvokersApi.md#getResourceEndpoint) | **GET** /edgemodules/{mname}/{rname} | Invoke Resource Get Method
[**getResourceEndpointItem**](EdgeModulesInvokersApi.md#getResourceEndpointItem) | **GET** /edgemodules/{mname}/{rname}/{wildcard} | Invoke Resource/_* Get Method
[**patchResourceEndpoint**](EdgeModulesInvokersApi.md#patchResourceEndpoint) | **PATCH** /edgemodules/{mname}/{rname} | Invoke Resource Patch Method
[**patchResourceEndpointItem**](EdgeModulesInvokersApi.md#patchResourceEndpointItem) | **PATCH** /edgemodules/{mname}/{rname}/{wildcard} | Invoke Resource/_* Patch Method
[**postResourceEndpoint**](EdgeModulesInvokersApi.md#postResourceEndpoint) | **POST** /edgemodules/{mname}/{rname} | Invoke Resource Post Method
[**postResourceEndpointItem**](EdgeModulesInvokersApi.md#postResourceEndpointItem) | **POST** /edgemodules/{mname}/{rname}/{wildcard} | Invoke Resource/_* Post Method
[**putResourceEndpoint**](EdgeModulesInvokersApi.md#putResourceEndpoint) | **PUT** /edgemodules/{mname}/{rname} | Invoke Resource Put Method
[**putResourceEndpointItem**](EdgeModulesInvokersApi.md#putResourceEndpointItem) | **PUT** /edgemodules/{mname}/{rname}/{wildcard} | Invoke Resource/_* Put Method


<a name="deleteResourceEndpoint"></a>
# **deleteResourceEndpoint**
> deleteResourceEndpoint(mname, rname, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Invoke Resource Delete Method

Used to invoke the DELETE method of the resource from an existing EMS EdgeModule.

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*

val apiInstance = EdgeModulesInvokersApi()
val mname : kotlin.String = mname_example // kotlin.String | Is the EMS EdgeModule name
val rname : kotlin.String = rname_example // kotlin.String | Is the unique EMS EdgeModule Resource name
val xEmbarcaderoApplicationId : kotlin.String = xEmbarcaderoApplicationId_example // kotlin.String | 
val xEmbarcaderoAppSecret : kotlin.String = xEmbarcaderoAppSecret_example // kotlin.String | 
val xEmbarcaderoMasterSecret : kotlin.String = xEmbarcaderoMasterSecret_example // kotlin.String | 
try {
    apiInstance.deleteResourceEndpoint(mname, rname, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)
} catch (e: ClientException) {
    println("4xx response calling EdgeModulesInvokersApi#deleteResourceEndpoint")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling EdgeModulesInvokersApi#deleteResourceEndpoint")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **kotlin.String**| Is the EMS EdgeModule name |
 **rname** | **kotlin.String**| Is the unique EMS EdgeModule Resource name |
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

<a name="deleteResourceEndpointItem"></a>
# **deleteResourceEndpointItem**
> deleteResourceEndpointItem(mname, rname, wildcard, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Invoke Resource/_* Delete Method

Used to invoke the DELETE method of the resource from an existing EMS EdgeModule.

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*

val apiInstance = EdgeModulesInvokersApi()
val mname : kotlin.String = mname_example // kotlin.String | Is the EMS EdgeModule name
val rname : kotlin.String = rname_example // kotlin.String | Is the unique EMS EdgeModule Resource name
val wildcard : kotlin.String = wildcard_example // kotlin.String | Is the Wild card part of the URL
val xEmbarcaderoApplicationId : kotlin.String = xEmbarcaderoApplicationId_example // kotlin.String | 
val xEmbarcaderoAppSecret : kotlin.String = xEmbarcaderoAppSecret_example // kotlin.String | 
val xEmbarcaderoMasterSecret : kotlin.String = xEmbarcaderoMasterSecret_example // kotlin.String | 
try {
    apiInstance.deleteResourceEndpointItem(mname, rname, wildcard, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)
} catch (e: ClientException) {
    println("4xx response calling EdgeModulesInvokersApi#deleteResourceEndpointItem")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling EdgeModulesInvokersApi#deleteResourceEndpointItem")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **kotlin.String**| Is the EMS EdgeModule name |
 **rname** | **kotlin.String**| Is the unique EMS EdgeModule Resource name |
 **wildcard** | **kotlin.String**| Is the Wild card part of the URL |
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

<a name="getResourceEndpoint"></a>
# **getResourceEndpoint**
> getResourceEndpoint(mname, rname, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Invoke Resource Get Method

Used to invoke the GET method of the resource from an existing EMS EdgeModule.

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*

val apiInstance = EdgeModulesInvokersApi()
val mname : kotlin.String = mname_example // kotlin.String | Is the EMS EdgeModule name
val rname : kotlin.String = rname_example // kotlin.String | Is the unique EMS EdgeModule Resource name
val xEmbarcaderoApplicationId : kotlin.String = xEmbarcaderoApplicationId_example // kotlin.String | 
val xEmbarcaderoAppSecret : kotlin.String = xEmbarcaderoAppSecret_example // kotlin.String | 
val xEmbarcaderoMasterSecret : kotlin.String = xEmbarcaderoMasterSecret_example // kotlin.String | 
try {
    apiInstance.getResourceEndpoint(mname, rname, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)
} catch (e: ClientException) {
    println("4xx response calling EdgeModulesInvokersApi#getResourceEndpoint")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling EdgeModulesInvokersApi#getResourceEndpoint")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **kotlin.String**| Is the EMS EdgeModule name |
 **rname** | **kotlin.String**| Is the unique EMS EdgeModule Resource name |
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

<a name="getResourceEndpointItem"></a>
# **getResourceEndpointItem**
> getResourceEndpointItem(mname, rname, wildcard, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Invoke Resource/_* Get Method

Used to invoke the GET method of the resource from an existing EMS EdgeModule.

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*

val apiInstance = EdgeModulesInvokersApi()
val mname : kotlin.String = mname_example // kotlin.String | Is the EMS EdgeModule name
val rname : kotlin.String = rname_example // kotlin.String | Is the unique EMS EdgeModule Resource name
val wildcard : kotlin.String = wildcard_example // kotlin.String | Is the Wild card part of the URL
val xEmbarcaderoApplicationId : kotlin.String = xEmbarcaderoApplicationId_example // kotlin.String | 
val xEmbarcaderoAppSecret : kotlin.String = xEmbarcaderoAppSecret_example // kotlin.String | 
val xEmbarcaderoMasterSecret : kotlin.String = xEmbarcaderoMasterSecret_example // kotlin.String | 
try {
    apiInstance.getResourceEndpointItem(mname, rname, wildcard, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)
} catch (e: ClientException) {
    println("4xx response calling EdgeModulesInvokersApi#getResourceEndpointItem")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling EdgeModulesInvokersApi#getResourceEndpointItem")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **kotlin.String**| Is the EMS EdgeModule name |
 **rname** | **kotlin.String**| Is the unique EMS EdgeModule Resource name |
 **wildcard** | **kotlin.String**| Is the Wild card part of the URL |
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

<a name="patchResourceEndpoint"></a>
# **patchResourceEndpoint**
> patchResourceEndpoint(mname, rname, body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Invoke Resource Patch Method

Used to invoke the PATCH method of the resource from an existing EMS EdgeModule.

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*

val apiInstance = EdgeModulesInvokersApi()
val mname : kotlin.String = mname_example // kotlin.String | Is the EMS EdgeModule name
val rname : kotlin.String = rname_example // kotlin.String | Is the unique EMS EdgeModule Resource name
val body : kotlin.Any =  // kotlin.Any | Body Object
val xEmbarcaderoApplicationId : kotlin.String = xEmbarcaderoApplicationId_example // kotlin.String | 
val xEmbarcaderoAppSecret : kotlin.String = xEmbarcaderoAppSecret_example // kotlin.String | 
val xEmbarcaderoMasterSecret : kotlin.String = xEmbarcaderoMasterSecret_example // kotlin.String | 
try {
    apiInstance.patchResourceEndpoint(mname, rname, body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)
} catch (e: ClientException) {
    println("4xx response calling EdgeModulesInvokersApi#patchResourceEndpoint")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling EdgeModulesInvokersApi#patchResourceEndpoint")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **kotlin.String**| Is the EMS EdgeModule name |
 **rname** | **kotlin.String**| Is the unique EMS EdgeModule Resource name |
 **body** | [**kotlin.Any**](kotlin.Any.md)| Body Object |
 **xEmbarcaderoApplicationId** | **kotlin.String**|  | [optional]
 **xEmbarcaderoAppSecret** | **kotlin.String**|  | [optional]
 **xEmbarcaderoMasterSecret** | **kotlin.String**|  | [optional]

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="patchResourceEndpointItem"></a>
# **patchResourceEndpointItem**
> patchResourceEndpointItem(mname, rname, wildcard, body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Invoke Resource/_* Patch Method

Used to invoke the PATCH method of the resource from an existing EMS EdgeModule.

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*

val apiInstance = EdgeModulesInvokersApi()
val mname : kotlin.String = mname_example // kotlin.String | Is the EMS EdgeModule name
val rname : kotlin.String = rname_example // kotlin.String | Is the unique EMS EdgeModule Resource name
val wildcard : kotlin.String = wildcard_example // kotlin.String | Is the Wild card part of the URL
val body : kotlin.Any =  // kotlin.Any | Body Object
val xEmbarcaderoApplicationId : kotlin.String = xEmbarcaderoApplicationId_example // kotlin.String | 
val xEmbarcaderoAppSecret : kotlin.String = xEmbarcaderoAppSecret_example // kotlin.String | 
val xEmbarcaderoMasterSecret : kotlin.String = xEmbarcaderoMasterSecret_example // kotlin.String | 
try {
    apiInstance.patchResourceEndpointItem(mname, rname, wildcard, body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)
} catch (e: ClientException) {
    println("4xx response calling EdgeModulesInvokersApi#patchResourceEndpointItem")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling EdgeModulesInvokersApi#patchResourceEndpointItem")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **kotlin.String**| Is the EMS EdgeModule name |
 **rname** | **kotlin.String**| Is the unique EMS EdgeModule Resource name |
 **wildcard** | **kotlin.String**| Is the Wild card part of the URL |
 **body** | [**kotlin.Any**](kotlin.Any.md)| Body Object |
 **xEmbarcaderoApplicationId** | **kotlin.String**|  | [optional]
 **xEmbarcaderoAppSecret** | **kotlin.String**|  | [optional]
 **xEmbarcaderoMasterSecret** | **kotlin.String**|  | [optional]

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="postResourceEndpoint"></a>
# **postResourceEndpoint**
> postResourceEndpoint(mname, rname, body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Invoke Resource Post Method

Used to invoke the POST method of the resource from an existing EMS EdgeModule.

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*

val apiInstance = EdgeModulesInvokersApi()
val mname : kotlin.String = mname_example // kotlin.String | Is the EMS EdgeModule name
val rname : kotlin.String = rname_example // kotlin.String | Is the unique EMS EdgeModule Resource name
val body : kotlin.Any =  // kotlin.Any | Body Object
val xEmbarcaderoApplicationId : kotlin.String = xEmbarcaderoApplicationId_example // kotlin.String | 
val xEmbarcaderoAppSecret : kotlin.String = xEmbarcaderoAppSecret_example // kotlin.String | 
val xEmbarcaderoMasterSecret : kotlin.String = xEmbarcaderoMasterSecret_example // kotlin.String | 
try {
    apiInstance.postResourceEndpoint(mname, rname, body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)
} catch (e: ClientException) {
    println("4xx response calling EdgeModulesInvokersApi#postResourceEndpoint")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling EdgeModulesInvokersApi#postResourceEndpoint")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **kotlin.String**| Is the EMS EdgeModule name |
 **rname** | **kotlin.String**| Is the unique EMS EdgeModule Resource name |
 **body** | [**kotlin.Any**](kotlin.Any.md)| Body Object |
 **xEmbarcaderoApplicationId** | **kotlin.String**|  | [optional]
 **xEmbarcaderoAppSecret** | **kotlin.String**|  | [optional]
 **xEmbarcaderoMasterSecret** | **kotlin.String**|  | [optional]

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="postResourceEndpointItem"></a>
# **postResourceEndpointItem**
> postResourceEndpointItem(mname, rname, wildcard, body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Invoke Resource/_* Post Method

Used to invoke the POST method of the resource from an existing EMS EdgeModule.

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*

val apiInstance = EdgeModulesInvokersApi()
val mname : kotlin.String = mname_example // kotlin.String | Is the EMS EdgeModule name
val rname : kotlin.String = rname_example // kotlin.String | Is the unique EMS EdgeModule Resource name
val wildcard : kotlin.String = wildcard_example // kotlin.String | Is the Wild card part of the URL
val body : kotlin.Any =  // kotlin.Any | Body Object
val xEmbarcaderoApplicationId : kotlin.String = xEmbarcaderoApplicationId_example // kotlin.String | 
val xEmbarcaderoAppSecret : kotlin.String = xEmbarcaderoAppSecret_example // kotlin.String | 
val xEmbarcaderoMasterSecret : kotlin.String = xEmbarcaderoMasterSecret_example // kotlin.String | 
try {
    apiInstance.postResourceEndpointItem(mname, rname, wildcard, body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)
} catch (e: ClientException) {
    println("4xx response calling EdgeModulesInvokersApi#postResourceEndpointItem")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling EdgeModulesInvokersApi#postResourceEndpointItem")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **kotlin.String**| Is the EMS EdgeModule name |
 **rname** | **kotlin.String**| Is the unique EMS EdgeModule Resource name |
 **wildcard** | **kotlin.String**| Is the Wild card part of the URL |
 **body** | [**kotlin.Any**](kotlin.Any.md)| Body Object |
 **xEmbarcaderoApplicationId** | **kotlin.String**|  | [optional]
 **xEmbarcaderoAppSecret** | **kotlin.String**|  | [optional]
 **xEmbarcaderoMasterSecret** | **kotlin.String**|  | [optional]

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="putResourceEndpoint"></a>
# **putResourceEndpoint**
> putResourceEndpoint(mname, rname, body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Invoke Resource Put Method

Used to invoke the PUT method of the resource from an existing EMS EdgeModule.

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*

val apiInstance = EdgeModulesInvokersApi()
val mname : kotlin.String = mname_example // kotlin.String | Is the EMS EdgeModule name
val rname : kotlin.String = rname_example // kotlin.String | Is the unique EMS EdgeModule Resource name
val body : kotlin.Any =  // kotlin.Any | Body Object
val xEmbarcaderoApplicationId : kotlin.String = xEmbarcaderoApplicationId_example // kotlin.String | 
val xEmbarcaderoAppSecret : kotlin.String = xEmbarcaderoAppSecret_example // kotlin.String | 
val xEmbarcaderoMasterSecret : kotlin.String = xEmbarcaderoMasterSecret_example // kotlin.String | 
try {
    apiInstance.putResourceEndpoint(mname, rname, body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)
} catch (e: ClientException) {
    println("4xx response calling EdgeModulesInvokersApi#putResourceEndpoint")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling EdgeModulesInvokersApi#putResourceEndpoint")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **kotlin.String**| Is the EMS EdgeModule name |
 **rname** | **kotlin.String**| Is the unique EMS EdgeModule Resource name |
 **body** | [**kotlin.Any**](kotlin.Any.md)| Body Object |
 **xEmbarcaderoApplicationId** | **kotlin.String**|  | [optional]
 **xEmbarcaderoAppSecret** | **kotlin.String**|  | [optional]
 **xEmbarcaderoMasterSecret** | **kotlin.String**|  | [optional]

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="putResourceEndpointItem"></a>
# **putResourceEndpointItem**
> putResourceEndpointItem(mname, rname, wildcard, body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Invoke Resource/_* Put Method

Used to invoke the PUT method of the resource from an existing EMS EdgeModule.

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*

val apiInstance = EdgeModulesInvokersApi()
val mname : kotlin.String = mname_example // kotlin.String | Is the EMS EdgeModule name
val rname : kotlin.String = rname_example // kotlin.String | Is the unique EMS EdgeModule Resource name
val wildcard : kotlin.String = wildcard_example // kotlin.String | Is the Wild card part of the URL
val body : kotlin.Any =  // kotlin.Any | Body Object
val xEmbarcaderoApplicationId : kotlin.String = xEmbarcaderoApplicationId_example // kotlin.String | 
val xEmbarcaderoAppSecret : kotlin.String = xEmbarcaderoAppSecret_example // kotlin.String | 
val xEmbarcaderoMasterSecret : kotlin.String = xEmbarcaderoMasterSecret_example // kotlin.String | 
try {
    apiInstance.putResourceEndpointItem(mname, rname, wildcard, body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)
} catch (e: ClientException) {
    println("4xx response calling EdgeModulesInvokersApi#putResourceEndpointItem")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling EdgeModulesInvokersApi#putResourceEndpointItem")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **kotlin.String**| Is the EMS EdgeModule name |
 **rname** | **kotlin.String**| Is the unique EMS EdgeModule Resource name |
 **wildcard** | **kotlin.String**| Is the Wild card part of the URL |
 **body** | [**kotlin.Any**](kotlin.Any.md)| Body Object |
 **xEmbarcaderoApplicationId** | **kotlin.String**|  | [optional]
 **xEmbarcaderoAppSecret** | **kotlin.String**|  | [optional]
 **xEmbarcaderoMasterSecret** | **kotlin.String**|  | [optional]

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

