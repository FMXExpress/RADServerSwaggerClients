# InstallationsApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addInstallation**](InstallationsApi.md#addInstallation) | **POST** /installations | Add Installation
[**deleteInstallation**](InstallationsApi.md#deleteInstallation) | **DELETE** /installations/{id} | Delete Installation
[**getChannels**](InstallationsApi.md#getChannels) | **GET** /installations/channels | Get Installation Channels
[**getInstallation**](InstallationsApi.md#getInstallation) | **GET** /installations/{id} | Get Installation
[**getInstallationFields**](InstallationsApi.md#getInstallationFields) | **GET** /installations/fields | Get Fields
[**getInstallations**](InstallationsApi.md#getInstallations) | **GET** /installations | Get Installations
[**updateInstallation**](InstallationsApi.md#updateInstallation) | **PUT** /installations/{id} | Update Installation


<a name="addInstallation"></a>
# **addInstallation**
> InstallationAddedObject addInstallation(body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Add Installation

 |      Used to add a new &#x60;Installation&#x60; object to the EMS database.

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*

val apiInstance = InstallationsApi()
val body : InstallationAddObject =  // InstallationAddObject | Object to sign up a new EMS User in the EMS Server
val xEmbarcaderoApplicationId : kotlin.String = xEmbarcaderoApplicationId_example // kotlin.String | 
val xEmbarcaderoAppSecret : kotlin.String = xEmbarcaderoAppSecret_example // kotlin.String | 
val xEmbarcaderoMasterSecret : kotlin.String = xEmbarcaderoMasterSecret_example // kotlin.String | 
try {
    val result : InstallationAddedObject = apiInstance.addInstallation(body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling InstallationsApi#addInstallation")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling InstallationsApi#addInstallation")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**InstallationAddObject**](InstallationAddObject.md)| Object to sign up a new EMS User in the EMS Server |
 **xEmbarcaderoApplicationId** | **kotlin.String**|  | [optional]
 **xEmbarcaderoAppSecret** | **kotlin.String**|  | [optional]
 **xEmbarcaderoMasterSecret** | **kotlin.String**|  | [optional]

### Return type

[**InstallationAddedObject**](InstallationAddedObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="deleteInstallation"></a>
# **deleteInstallation**
> deleteInstallation(id, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Delete Installation

 |      Used to delete an &#x60;Installation&#x60;. **id** is the unique EMS Installation identifier (IID) in the EMS database.

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*

val apiInstance = InstallationsApi()
val id : kotlin.String = id_example // kotlin.String | A Installation ID
val xEmbarcaderoApplicationId : kotlin.String = xEmbarcaderoApplicationId_example // kotlin.String | 
val xEmbarcaderoAppSecret : kotlin.String = xEmbarcaderoAppSecret_example // kotlin.String | 
val xEmbarcaderoMasterSecret : kotlin.String = xEmbarcaderoMasterSecret_example // kotlin.String | 
try {
    apiInstance.deleteInstallation(id, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)
} catch (e: ClientException) {
    println("4xx response calling InstallationsApi#deleteInstallation")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling InstallationsApi#deleteInstallation")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **kotlin.String**| A Installation ID |
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

<a name="getChannels"></a>
# **getChannels**
> kotlin.Array&lt;ChannelName&gt; getChannels(xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Get Installation Channels

 |       Used to retrieve the available channels to which the device has subscribed. **id** is the unique EMS Installation identifier (InstallationID) in the EMS database.

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*

val apiInstance = InstallationsApi()
val xEmbarcaderoApplicationId : kotlin.String = xEmbarcaderoApplicationId_example // kotlin.String | 
val xEmbarcaderoAppSecret : kotlin.String = xEmbarcaderoAppSecret_example // kotlin.String | 
val xEmbarcaderoMasterSecret : kotlin.String = xEmbarcaderoMasterSecret_example // kotlin.String | 
try {
    val result : kotlin.Array<ChannelName> = apiInstance.getChannels(xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling InstallationsApi#getChannels")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling InstallationsApi#getChannels")
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

[**kotlin.Array&lt;ChannelName&gt;**](ChannelName.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getInstallation"></a>
# **getInstallation**
> InstallationObject getInstallation(id, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Get Installation

 |      Used to retrieve all data from a specific &#x60;Installation&#x60; (registered device). **id** is the unique EMS Installation identifier (InstallationID) in the EMS database.

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*

val apiInstance = InstallationsApi()
val id : kotlin.String = id_example // kotlin.String | A Installation ID
val xEmbarcaderoApplicationId : kotlin.String = xEmbarcaderoApplicationId_example // kotlin.String | 
val xEmbarcaderoAppSecret : kotlin.String = xEmbarcaderoAppSecret_example // kotlin.String | 
val xEmbarcaderoMasterSecret : kotlin.String = xEmbarcaderoMasterSecret_example // kotlin.String | 
try {
    val result : InstallationObject = apiInstance.getInstallation(id, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling InstallationsApi#getInstallation")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling InstallationsApi#getInstallation")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **kotlin.String**| A Installation ID |
 **xEmbarcaderoApplicationId** | **kotlin.String**|  | [optional]
 **xEmbarcaderoAppSecret** | **kotlin.String**|  | [optional]
 **xEmbarcaderoMasterSecret** | **kotlin.String**|  | [optional]

### Return type

[**InstallationObject**](InstallationObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getInstallationFields"></a>
# **getInstallationFields**
> kotlin.Array&lt;FieldInstallationObject&gt; getInstallationFields(xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Get Fields

 |      Used to retrieve all the &#x60;field names&#x60; of the EMS Installation (including the custom fields).

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*

val apiInstance = InstallationsApi()
val xEmbarcaderoApplicationId : kotlin.String = xEmbarcaderoApplicationId_example // kotlin.String | 
val xEmbarcaderoAppSecret : kotlin.String = xEmbarcaderoAppSecret_example // kotlin.String | 
val xEmbarcaderoMasterSecret : kotlin.String = xEmbarcaderoMasterSecret_example // kotlin.String | 
try {
    val result : kotlin.Array<FieldInstallationObject> = apiInstance.getInstallationFields(xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling InstallationsApi#getInstallationFields")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling InstallationsApi#getInstallationFields")
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

[**kotlin.Array&lt;FieldInstallationObject&gt;**](FieldInstallationObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getInstallations"></a>
# **getInstallations**
> kotlin.Array&lt;InstallationObject&gt; getInstallations(xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret, skip, limit, order, where)

Get Installations

 |      Used to retrieve all data from &#x60;Installation&#x60;.      Optional query param of **skip, limit, order, where** determines       size of returned array, filtered and order by.

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*

val apiInstance = InstallationsApi()
val xEmbarcaderoApplicationId : kotlin.String = xEmbarcaderoApplicationId_example // kotlin.String | 
val xEmbarcaderoAppSecret : kotlin.String = xEmbarcaderoAppSecret_example // kotlin.String | 
val xEmbarcaderoMasterSecret : kotlin.String = xEmbarcaderoMasterSecret_example // kotlin.String | 
val skip : java.math.BigDecimal = 8.14 // java.math.BigDecimal | users skipped
val limit : java.math.BigDecimal = 8.14 // java.math.BigDecimal | maximum number of results to return
val order : java.math.BigDecimal = 8.14 // java.math.BigDecimal | order ascending or descending (asc, desc)
val where : kotlin.String = where_example // kotlin.String | filter operators (lt, lte, gt, gte, eq, neq, like, nlike)
try {
    val result : kotlin.Array<InstallationObject> = apiInstance.getInstallations(xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret, skip, limit, order, where)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling InstallationsApi#getInstallations")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling InstallationsApi#getInstallations")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xEmbarcaderoApplicationId** | **kotlin.String**|  | [optional]
 **xEmbarcaderoAppSecret** | **kotlin.String**|  | [optional]
 **xEmbarcaderoMasterSecret** | **kotlin.String**|  | [optional]
 **skip** | **java.math.BigDecimal**| users skipped | [optional]
 **limit** | **java.math.BigDecimal**| maximum number of results to return | [optional]
 **order** | **java.math.BigDecimal**| order ascending or descending (asc, desc) | [optional]
 **where** | **kotlin.String**| filter operators (lt, lte, gt, gte, eq, neq, like, nlike) | [optional]

### Return type

[**kotlin.Array&lt;InstallationObject&gt;**](InstallationObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="updateInstallation"></a>
# **updateInstallation**
> UpdatedInstallationObject updateInstallation(id, body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Update Installation

 |      Used to update an &#x60;Installation&#x60;. **id** is the unique EMS Installation identifier (IID) in the EMS database.

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*

val apiInstance = InstallationsApi()
val id : kotlin.String = id_example // kotlin.String | A Installation ID
val body : UpdateInstallationObject =  // UpdateInstallationObject | Installation fields to update
val xEmbarcaderoApplicationId : kotlin.String = xEmbarcaderoApplicationId_example // kotlin.String | 
val xEmbarcaderoAppSecret : kotlin.String = xEmbarcaderoAppSecret_example // kotlin.String | 
val xEmbarcaderoMasterSecret : kotlin.String = xEmbarcaderoMasterSecret_example // kotlin.String | 
try {
    val result : UpdatedInstallationObject = apiInstance.updateInstallation(id, body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling InstallationsApi#updateInstallation")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling InstallationsApi#updateInstallation")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **kotlin.String**| A Installation ID |
 **body** | [**UpdateInstallationObject**](UpdateInstallationObject.md)| Installation fields to update |
 **xEmbarcaderoApplicationId** | **kotlin.String**|  | [optional]
 **xEmbarcaderoAppSecret** | **kotlin.String**|  | [optional]
 **xEmbarcaderoMasterSecret** | **kotlin.String**|  | [optional]

### Return type

[**UpdatedInstallationObject**](UpdatedInstallationObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

