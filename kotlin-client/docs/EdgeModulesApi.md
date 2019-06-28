# EdgeModulesApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getModule**](EdgeModulesApi.md#getModule) | **GET** /edgemodules/{mname} | Get Module
[**getModuleResource**](EdgeModulesApi.md#getModuleResource) | **GET** /edgemodules/{mname}/resources/{name} | Get EdgeModule Resource
[**getModuleResources**](EdgeModulesApi.md#getModuleResources) | **GET** /edgemodules/{mname}/resources | Get EdgeModule Resources
[**getModules**](EdgeModulesApi.md#getModules) | **GET** /edgemodules | Get Module
[**getModulesFields**](EdgeModulesApi.md#getModulesFields) | **GET** /edgemodules/fields | Get Fields
[**getResources**](EdgeModulesApi.md#getResources) | **GET** /edgemodules/resources | Get EdgeModules Resources
[**getResourcesFields**](EdgeModulesApi.md#getResourcesFields) | **GET** /edgemodules/resources/fields | Get Resource Fields
[**registerModule**](EdgeModulesApi.md#registerModule) | **POST** /edgemodules | Add Module
[**registerModuleResource**](EdgeModulesApi.md#registerModuleResource) | **POST** /edgemodules/{mname}/resources | Add Module Resource
[**unregisterModule**](EdgeModulesApi.md#unregisterModule) | **DELETE** /edgemodules/{mname} | Delete Module
[**unregisterModuleResource**](EdgeModulesApi.md#unregisterModuleResource) | **DELETE** /edgemodules/{mname}/resources/{name} | Delete Module Resource
[**updateModule**](EdgeModulesApi.md#updateModule) | **PUT** /edgemodules/{mname} | Update Module
[**updateModuleResource**](EdgeModulesApi.md#updateModuleResource) | **PUT** /edgemodules/{mname}/resources/{name} | Update Module Resource


<a name="getModule"></a>
# **getModule**
> EdgeModuleObject getModule(mname, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Get Module

 |      Used to retrieve all data from &#x60;EdgeModule&#x60;.      Optional query param of **skip, limit, order, where** determines       size of returned array, filtered and order by.

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*

val apiInstance = EdgeModulesApi()
val mname : kotlin.String = mname_example // kotlin.String | Is the unique EMS EdgeModule identifier
val xEmbarcaderoApplicationId : kotlin.String = xEmbarcaderoApplicationId_example // kotlin.String | 
val xEmbarcaderoAppSecret : kotlin.String = xEmbarcaderoAppSecret_example // kotlin.String | 
val xEmbarcaderoMasterSecret : kotlin.String = xEmbarcaderoMasterSecret_example // kotlin.String | 
try {
    val result : EdgeModuleObject = apiInstance.getModule(mname, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling EdgeModulesApi#getModule")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling EdgeModulesApi#getModule")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **kotlin.String**| Is the unique EMS EdgeModule identifier |
 **xEmbarcaderoApplicationId** | **kotlin.String**|  | [optional]
 **xEmbarcaderoAppSecret** | **kotlin.String**|  | [optional]
 **xEmbarcaderoMasterSecret** | **kotlin.String**|  | [optional]

### Return type

[**EdgeModuleObject**](EdgeModuleObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getModuleResource"></a>
# **getModuleResource**
> EdgeModuleResourceObject getModuleResource(mname, name, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Get EdgeModule Resource

 |      Used to retrieve all data from a resource of an EdgeModule. **mname** is the unique EMS EdgeModule identifier in the EMS database. **resourcename** is the name of the resource.

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*

val apiInstance = EdgeModulesApi()
val mname : kotlin.String = mname_example // kotlin.String | Is the unique EMS EdgeModule identifier
val name : kotlin.String = name_example // kotlin.String | Is the unique EMS EdgeModule Resource name
val xEmbarcaderoApplicationId : kotlin.String = xEmbarcaderoApplicationId_example // kotlin.String | 
val xEmbarcaderoAppSecret : kotlin.String = xEmbarcaderoAppSecret_example // kotlin.String | 
val xEmbarcaderoMasterSecret : kotlin.String = xEmbarcaderoMasterSecret_example // kotlin.String | 
try {
    val result : EdgeModuleResourceObject = apiInstance.getModuleResource(mname, name, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling EdgeModulesApi#getModuleResource")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling EdgeModulesApi#getModuleResource")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **kotlin.String**| Is the unique EMS EdgeModule identifier |
 **name** | **kotlin.String**| Is the unique EMS EdgeModule Resource name |
 **xEmbarcaderoApplicationId** | **kotlin.String**|  | [optional]
 **xEmbarcaderoAppSecret** | **kotlin.String**|  | [optional]
 **xEmbarcaderoMasterSecret** | **kotlin.String**|  | [optional]

### Return type

[**EdgeModuleResourceObject**](EdgeModuleResourceObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getModuleResources"></a>
# **getModuleResources**
> kotlin.Array&lt;EdgeModuleResourceObject&gt; getModuleResources(mname, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Get EdgeModule Resources

 |      Used to retrieve all data from the resources of an EdgeModule.

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*

val apiInstance = EdgeModulesApi()
val mname : kotlin.String = mname_example // kotlin.String | Is the unique EMS EdgeModule identifier
val xEmbarcaderoApplicationId : kotlin.String = xEmbarcaderoApplicationId_example // kotlin.String | 
val xEmbarcaderoAppSecret : kotlin.String = xEmbarcaderoAppSecret_example // kotlin.String | 
val xEmbarcaderoMasterSecret : kotlin.String = xEmbarcaderoMasterSecret_example // kotlin.String | 
try {
    val result : kotlin.Array<EdgeModuleResourceObject> = apiInstance.getModuleResources(mname, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling EdgeModulesApi#getModuleResources")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling EdgeModulesApi#getModuleResources")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **kotlin.String**| Is the unique EMS EdgeModule identifier |
 **xEmbarcaderoApplicationId** | **kotlin.String**|  | [optional]
 **xEmbarcaderoAppSecret** | **kotlin.String**|  | [optional]
 **xEmbarcaderoMasterSecret** | **kotlin.String**|  | [optional]

### Return type

[**kotlin.Array&lt;EdgeModuleResourceObject&gt;**](EdgeModuleResourceObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getModules"></a>
# **getModules**
> kotlin.Array&lt;EdgeModuleObject&gt; getModules(xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Get Module

 |      Used to retrieve all data from &#x60;EdgeModule&#x60;.      Optional query param of **skip, limit, order, where** determines       size of returned array, filtered and order by.

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*

val apiInstance = EdgeModulesApi()
val xEmbarcaderoApplicationId : kotlin.String = xEmbarcaderoApplicationId_example // kotlin.String | 
val xEmbarcaderoAppSecret : kotlin.String = xEmbarcaderoAppSecret_example // kotlin.String | 
val xEmbarcaderoMasterSecret : kotlin.String = xEmbarcaderoMasterSecret_example // kotlin.String | 
try {
    val result : kotlin.Array<EdgeModuleObject> = apiInstance.getModules(xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling EdgeModulesApi#getModules")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling EdgeModulesApi#getModules")
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

[**kotlin.Array&lt;EdgeModuleObject&gt;**](EdgeModuleObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getModulesFields"></a>
# **getModulesFields**
> FieldsEdgeModuleObject getModulesFields(xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Get Fields

 |      Used to retrieve all the &#x60;field names&#x60; of the EMS EdgeModule (including the custom fields).

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*

val apiInstance = EdgeModulesApi()
val xEmbarcaderoApplicationId : kotlin.String = xEmbarcaderoApplicationId_example // kotlin.String | 
val xEmbarcaderoAppSecret : kotlin.String = xEmbarcaderoAppSecret_example // kotlin.String | 
val xEmbarcaderoMasterSecret : kotlin.String = xEmbarcaderoMasterSecret_example // kotlin.String | 
try {
    val result : FieldsEdgeModuleObject = apiInstance.getModulesFields(xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling EdgeModulesApi#getModulesFields")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling EdgeModulesApi#getModulesFields")
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

[**FieldsEdgeModuleObject**](FieldsEdgeModuleObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getResources"></a>
# **getResources**
> kotlin.Array&lt;EdgeModuleResourceObject&gt; getResources(xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Get EdgeModules Resources

 |      Used to retrieve all data from the resources of all EdgeModules.

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*

val apiInstance = EdgeModulesApi()
val xEmbarcaderoApplicationId : kotlin.String = xEmbarcaderoApplicationId_example // kotlin.String | 
val xEmbarcaderoAppSecret : kotlin.String = xEmbarcaderoAppSecret_example // kotlin.String | 
val xEmbarcaderoMasterSecret : kotlin.String = xEmbarcaderoMasterSecret_example // kotlin.String | 
try {
    val result : kotlin.Array<EdgeModuleResourceObject> = apiInstance.getResources(xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling EdgeModulesApi#getResources")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling EdgeModulesApi#getResources")
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

[**kotlin.Array&lt;EdgeModuleResourceObject&gt;**](EdgeModuleResourceObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getResourcesFields"></a>
# **getResourcesFields**
> FieldsEdgeModuleObject getResourcesFields(xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Get Resource Fields

 |      Used to retrieve the &#x60;field names&#x60; of all the resources of the EMS EdgeModule (including the custom fields).

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*

val apiInstance = EdgeModulesApi()
val xEmbarcaderoApplicationId : kotlin.String = xEmbarcaderoApplicationId_example // kotlin.String | 
val xEmbarcaderoAppSecret : kotlin.String = xEmbarcaderoAppSecret_example // kotlin.String | 
val xEmbarcaderoMasterSecret : kotlin.String = xEmbarcaderoMasterSecret_example // kotlin.String | 
try {
    val result : FieldsEdgeModuleObject = apiInstance.getResourcesFields(xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling EdgeModulesApi#getResourcesFields")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling EdgeModulesApi#getResourcesFields")
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

[**FieldsEdgeModuleObject**](FieldsEdgeModuleObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="registerModule"></a>
# **registerModule**
> EdgeModuleAddedObject registerModule(body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Add Module

 |      Used to add a new &#x60;EdgeModule&#x60; object to the EMS database.

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*

val apiInstance = EdgeModulesApi()
val body : EdgeModuleAddObject =  // EdgeModuleAddObject | EdgeModule object to add. protocolprops example string {\\\"port\\\":8082,\\\"host\\\":\\\"10.150.40.52\\\"}
val xEmbarcaderoApplicationId : kotlin.String = xEmbarcaderoApplicationId_example // kotlin.String | 
val xEmbarcaderoAppSecret : kotlin.String = xEmbarcaderoAppSecret_example // kotlin.String | 
val xEmbarcaderoMasterSecret : kotlin.String = xEmbarcaderoMasterSecret_example // kotlin.String | 
try {
    val result : EdgeModuleAddedObject = apiInstance.registerModule(body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling EdgeModulesApi#registerModule")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling EdgeModulesApi#registerModule")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**EdgeModuleAddObject**](EdgeModuleAddObject.md)| EdgeModule object to add. protocolprops example string {\\\&quot;port\\\&quot;:8082,\\\&quot;host\\\&quot;:\\\&quot;10.150.40.52\\\&quot;} |
 **xEmbarcaderoApplicationId** | **kotlin.String**|  | [optional]
 **xEmbarcaderoAppSecret** | **kotlin.String**|  | [optional]
 **xEmbarcaderoMasterSecret** | **kotlin.String**|  | [optional]

### Return type

[**EdgeModuleAddedObject**](EdgeModuleAddedObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="registerModuleResource"></a>
# **registerModuleResource**
> EdgeModuleResourceAddedObject registerModuleResource(mname, body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Add Module Resource

 |      Used to register a new resource from an EMS EdgeModule. **mname** is the unique EMS EdgeModule identifier in the EMS database.

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*

val apiInstance = EdgeModulesApi()
val mname : kotlin.String = mname_example // kotlin.String | Is the unique EMS EdgeModule identifier
val body : EdgeModuleResourceAddObject =  // EdgeModuleResourceAddObject | EdgModule Resource add object. protocolprops string example {\\\"port\\\":8082,\\\"host\\\":\\\"10.150.40.52\\\"}
val xEmbarcaderoApplicationId : kotlin.String = xEmbarcaderoApplicationId_example // kotlin.String | 
val xEmbarcaderoAppSecret : kotlin.String = xEmbarcaderoAppSecret_example // kotlin.String | 
val xEmbarcaderoMasterSecret : kotlin.String = xEmbarcaderoMasterSecret_example // kotlin.String | 
try {
    val result : EdgeModuleResourceAddedObject = apiInstance.registerModuleResource(mname, body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling EdgeModulesApi#registerModuleResource")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling EdgeModulesApi#registerModuleResource")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **kotlin.String**| Is the unique EMS EdgeModule identifier |
 **body** | [**EdgeModuleResourceAddObject**](EdgeModuleResourceAddObject.md)| EdgModule Resource add object. protocolprops string example {\\\&quot;port\\\&quot;:8082,\\\&quot;host\\\&quot;:\\\&quot;10.150.40.52\\\&quot;} |
 **xEmbarcaderoApplicationId** | **kotlin.String**|  | [optional]
 **xEmbarcaderoAppSecret** | **kotlin.String**|  | [optional]
 **xEmbarcaderoMasterSecret** | **kotlin.String**|  | [optional]

### Return type

[**EdgeModuleResourceAddedObject**](EdgeModuleResourceAddedObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="unregisterModule"></a>
# **unregisterModule**
> unregisterModule(mname, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Delete Module

 |      Used to delete an &#x60;EdgeModule Resource&#x60;. **mname** is the unique EMS EdgeModule identifier (MID) in the EMS database. **resourcename** is the name of the resource.

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*

val apiInstance = EdgeModulesApi()
val mname : kotlin.String = mname_example // kotlin.String | Is the unique EMS EdgeModule identifier
val xEmbarcaderoApplicationId : kotlin.String = xEmbarcaderoApplicationId_example // kotlin.String | 
val xEmbarcaderoAppSecret : kotlin.String = xEmbarcaderoAppSecret_example // kotlin.String | 
val xEmbarcaderoMasterSecret : kotlin.String = xEmbarcaderoMasterSecret_example // kotlin.String | 
try {
    apiInstance.unregisterModule(mname, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)
} catch (e: ClientException) {
    println("4xx response calling EdgeModulesApi#unregisterModule")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling EdgeModulesApi#unregisterModule")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **kotlin.String**| Is the unique EMS EdgeModule identifier |
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

<a name="unregisterModuleResource"></a>
# **unregisterModuleResource**
> unregisterModuleResource(mname, name, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Delete Module Resource

 |      Used to delete an &#x60;EdgeModule Resource&#x60;. **mname** is the unique EMS EdgeModule identifier (MID) in the EMS database. **resourcename** is the name of the resource.

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*

val apiInstance = EdgeModulesApi()
val mname : kotlin.String = mname_example // kotlin.String | Is the unique EMS EdgeModule identifier
val name : kotlin.String = name_example // kotlin.String | Is the unique EMS EdgeModule Resource name
val xEmbarcaderoApplicationId : kotlin.String = xEmbarcaderoApplicationId_example // kotlin.String | 
val xEmbarcaderoAppSecret : kotlin.String = xEmbarcaderoAppSecret_example // kotlin.String | 
val xEmbarcaderoMasterSecret : kotlin.String = xEmbarcaderoMasterSecret_example // kotlin.String | 
try {
    apiInstance.unregisterModuleResource(mname, name, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)
} catch (e: ClientException) {
    println("4xx response calling EdgeModulesApi#unregisterModuleResource")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling EdgeModulesApi#unregisterModuleResource")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **kotlin.String**| Is the unique EMS EdgeModule identifier |
 **name** | **kotlin.String**| Is the unique EMS EdgeModule Resource name |
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

<a name="updateModule"></a>
# **updateModule**
> EdgeModuleUpdatedObject updateModule(mname, body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Update Module

 |      Used to update an &#x60;EdgeModule&#x60;. **mname** is the unique EMS EdgeModule identifier (MID) in the EMS database.

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*

val apiInstance = EdgeModulesApi()
val mname : kotlin.String = mname_example // kotlin.String | Is the unique EMS EdgeModule identifier
val body : EdgeModuleUpdateObject =  // EdgeModuleUpdateObject | EdgModule Resource add object. protocolprops string example {\\\"port\\\":8082,\\\"host\\\":\\\"10.150.40.52\\\"}
val xEmbarcaderoApplicationId : kotlin.String = xEmbarcaderoApplicationId_example // kotlin.String | 
val xEmbarcaderoAppSecret : kotlin.String = xEmbarcaderoAppSecret_example // kotlin.String | 
val xEmbarcaderoMasterSecret : kotlin.String = xEmbarcaderoMasterSecret_example // kotlin.String | 
try {
    val result : EdgeModuleUpdatedObject = apiInstance.updateModule(mname, body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling EdgeModulesApi#updateModule")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling EdgeModulesApi#updateModule")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **kotlin.String**| Is the unique EMS EdgeModule identifier |
 **body** | [**EdgeModuleUpdateObject**](EdgeModuleUpdateObject.md)| EdgModule Resource add object. protocolprops string example {\\\&quot;port\\\&quot;:8082,\\\&quot;host\\\&quot;:\\\&quot;10.150.40.52\\\&quot;} |
 **xEmbarcaderoApplicationId** | **kotlin.String**|  | [optional]
 **xEmbarcaderoAppSecret** | **kotlin.String**|  | [optional]
 **xEmbarcaderoMasterSecret** | **kotlin.String**|  | [optional]

### Return type

[**EdgeModuleUpdatedObject**](EdgeModuleUpdatedObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="updateModuleResource"></a>
# **updateModuleResource**
> EdgeModuleResourceUpdatedObject updateModuleResource(mname, name, body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Update Module Resource

 |      Used to update an &#x60;EdgeModule&#x60;. **mname** is the unique EMS EdgeModule identifier (MID) in the EMS database.

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*

val apiInstance = EdgeModulesApi()
val mname : kotlin.String = mname_example // kotlin.String | Is the unique EMS EdgeModule identifier
val name : kotlin.String = name_example // kotlin.String | Is the unique EMS EdgeModule Resource name
val body : EdgeModuleResourceUpdateObject =  // EdgeModuleResourceUpdateObject | EdgModule Resource add object. protocolprops string example {\\\"port\\\":8082,\\\"host\\\":\\\"10.150.40.52\\\"}
val xEmbarcaderoApplicationId : kotlin.String = xEmbarcaderoApplicationId_example // kotlin.String | 
val xEmbarcaderoAppSecret : kotlin.String = xEmbarcaderoAppSecret_example // kotlin.String | 
val xEmbarcaderoMasterSecret : kotlin.String = xEmbarcaderoMasterSecret_example // kotlin.String | 
try {
    val result : EdgeModuleResourceUpdatedObject = apiInstance.updateModuleResource(mname, name, body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling EdgeModulesApi#updateModuleResource")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling EdgeModulesApi#updateModuleResource")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **kotlin.String**| Is the unique EMS EdgeModule identifier |
 **name** | **kotlin.String**| Is the unique EMS EdgeModule Resource name |
 **body** | [**EdgeModuleResourceUpdateObject**](EdgeModuleResourceUpdateObject.md)| EdgModule Resource add object. protocolprops string example {\\\&quot;port\\\&quot;:8082,\\\&quot;host\\\&quot;:\\\&quot;10.150.40.52\\\&quot;} |
 **xEmbarcaderoApplicationId** | **kotlin.String**|  | [optional]
 **xEmbarcaderoAppSecret** | **kotlin.String**|  | [optional]
 **xEmbarcaderoMasterSecret** | **kotlin.String**|  | [optional]

### Return type

[**EdgeModuleResourceUpdatedObject**](EdgeModuleResourceUpdatedObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

