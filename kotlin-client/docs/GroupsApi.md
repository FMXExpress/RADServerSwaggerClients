# GroupsApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addGroup**](GroupsApi.md#addGroup) | **POST** /groups | Add Group
[**deleteGroup**](GroupsApi.md#deleteGroup) | **DELETE** /groups/{item} | Delete Group
[**getGroup**](GroupsApi.md#getGroup) | **GET** /groups/{item} | Get Group
[**getGroupFields**](GroupsApi.md#getGroupFields) | **GET** /groups/fields | Get Fields
[**getGroups**](GroupsApi.md#getGroups) | **GET** /groups | Get Groups
[**updateGroup**](GroupsApi.md#updateGroup) | **PUT** /groups/{item} | Update Group


<a name="addGroup"></a>
# **addGroup**
> addGroup(body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Add Group

 |      Used to add a new &#x60;Group&#x60; object to the EMS database.

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*

val apiInstance = GroupsApi()
val body : GroupAddObject =  // GroupAddObject | Object to sign up a new EMS User in the EMS Server
val xEmbarcaderoApplicationId : kotlin.String = xEmbarcaderoApplicationId_example // kotlin.String | 
val xEmbarcaderoAppSecret : kotlin.String = xEmbarcaderoAppSecret_example // kotlin.String | 
val xEmbarcaderoMasterSecret : kotlin.String = xEmbarcaderoMasterSecret_example // kotlin.String | 
try {
    apiInstance.addGroup(body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)
} catch (e: ClientException) {
    println("4xx response calling GroupsApi#addGroup")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling GroupsApi#addGroup")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**GroupAddObject**](GroupAddObject.md)| Object to sign up a new EMS User in the EMS Server |
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

<a name="deleteGroup"></a>
# **deleteGroup**
> deleteGroup(item, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Delete Group

 |      Used to delete a &#x60;Group&#x60;. **item** is the unique EMS Group name in the EMS database.

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*

val apiInstance = GroupsApi()
val item : kotlin.String = item_example // kotlin.String | A group name
val xEmbarcaderoApplicationId : kotlin.String = xEmbarcaderoApplicationId_example // kotlin.String | 
val xEmbarcaderoAppSecret : kotlin.String = xEmbarcaderoAppSecret_example // kotlin.String | 
val xEmbarcaderoMasterSecret : kotlin.String = xEmbarcaderoMasterSecret_example // kotlin.String | 
try {
    apiInstance.deleteGroup(item, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)
} catch (e: ClientException) {
    println("4xx response calling GroupsApi#deleteGroup")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling GroupsApi#deleteGroup")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **item** | **kotlin.String**| A group name |
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

<a name="getGroup"></a>
# **getGroup**
> GroupObject getGroup(item, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Get Group

 |      Used to retrieve all data from a &#x60;Group&#x60;. **item** is the unique EMS Group name in the EMS database.

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*

val apiInstance = GroupsApi()
val item : kotlin.String = item_example // kotlin.String | A group name
val xEmbarcaderoApplicationId : kotlin.String = xEmbarcaderoApplicationId_example // kotlin.String | 
val xEmbarcaderoAppSecret : kotlin.String = xEmbarcaderoAppSecret_example // kotlin.String | 
val xEmbarcaderoMasterSecret : kotlin.String = xEmbarcaderoMasterSecret_example // kotlin.String | 
try {
    val result : GroupObject = apiInstance.getGroup(item, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling GroupsApi#getGroup")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling GroupsApi#getGroup")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **item** | **kotlin.String**| A group name |
 **xEmbarcaderoApplicationId** | **kotlin.String**|  | [optional]
 **xEmbarcaderoAppSecret** | **kotlin.String**|  | [optional]
 **xEmbarcaderoMasterSecret** | **kotlin.String**|  | [optional]

### Return type

[**GroupObject**](GroupObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getGroupFields"></a>
# **getGroupFields**
> kotlin.Array&lt;FieldGroupObject&gt; getGroupFields(xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Get Fields

 |      Used to retrieve all the &#x60;field names&#x60; of the EMS Group (including the custom fields).

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*

val apiInstance = GroupsApi()
val xEmbarcaderoApplicationId : kotlin.String = xEmbarcaderoApplicationId_example // kotlin.String | 
val xEmbarcaderoAppSecret : kotlin.String = xEmbarcaderoAppSecret_example // kotlin.String | 
val xEmbarcaderoMasterSecret : kotlin.String = xEmbarcaderoMasterSecret_example // kotlin.String | 
try {
    val result : kotlin.Array<FieldGroupObject> = apiInstance.getGroupFields(xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling GroupsApi#getGroupFields")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling GroupsApi#getGroupFields")
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

[**kotlin.Array&lt;FieldGroupObject&gt;**](FieldGroupObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getGroups"></a>
# **getGroups**
> kotlin.Array&lt;GroupObject&gt; getGroups(xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret, skip, limit, order, where)

Get Groups

 |      Used to retrieve all data from &#x60;Groups&#x60;.      Optional query param of **skip, limit, order, where** determines       size of returned array, filtered and order by.

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*

val apiInstance = GroupsApi()
val xEmbarcaderoApplicationId : kotlin.String = xEmbarcaderoApplicationId_example // kotlin.String | 
val xEmbarcaderoAppSecret : kotlin.String = xEmbarcaderoAppSecret_example // kotlin.String | 
val xEmbarcaderoMasterSecret : kotlin.String = xEmbarcaderoMasterSecret_example // kotlin.String | 
val skip : java.math.BigDecimal = 8.14 // java.math.BigDecimal | users skipped
val limit : java.math.BigDecimal = 8.14 // java.math.BigDecimal | maximum number of results to return
val order : java.math.BigDecimal = 8.14 // java.math.BigDecimal | order ascending or descending (asc, desc)
val where : kotlin.String = where_example // kotlin.String | filter operators (lt, lte, gt, gte, eq, neq, like, nlike)
try {
    val result : kotlin.Array<GroupObject> = apiInstance.getGroups(xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret, skip, limit, order, where)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling GroupsApi#getGroups")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling GroupsApi#getGroups")
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

[**kotlin.Array&lt;GroupObject&gt;**](GroupObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="updateGroup"></a>
# **updateGroup**
> UpdatedGroupObject updateGroup(item, body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Update Group

 |      Used to update a &#x60;Group&#x60;. **item** is the unique EMS Group name in the EMS database.

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*

val apiInstance = GroupsApi()
val item : kotlin.String = item_example // kotlin.String | A group name
val body : UpdateGroupObject =  // UpdateGroupObject | Object to sign up a new EMS User in the EMS Server
val xEmbarcaderoApplicationId : kotlin.String = xEmbarcaderoApplicationId_example // kotlin.String | 
val xEmbarcaderoAppSecret : kotlin.String = xEmbarcaderoAppSecret_example // kotlin.String | 
val xEmbarcaderoMasterSecret : kotlin.String = xEmbarcaderoMasterSecret_example // kotlin.String | 
try {
    val result : UpdatedGroupObject = apiInstance.updateGroup(item, body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling GroupsApi#updateGroup")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling GroupsApi#updateGroup")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **item** | **kotlin.String**| A group name |
 **body** | [**UpdateGroupObject**](UpdateGroupObject.md)| Object to sign up a new EMS User in the EMS Server |
 **xEmbarcaderoApplicationId** | **kotlin.String**|  | [optional]
 **xEmbarcaderoAppSecret** | **kotlin.String**|  | [optional]
 **xEmbarcaderoMasterSecret** | **kotlin.String**|  | [optional]

### Return type

[**UpdatedGroupObject**](UpdatedGroupObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

