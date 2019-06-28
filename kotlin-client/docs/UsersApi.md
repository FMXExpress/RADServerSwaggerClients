# UsersApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addUser**](UsersApi.md#addUser) | **POST** /users | Add User
[**deleteUser**](UsersApi.md#deleteUser) | **DELETE** /users/{id} | Delete User
[**getUser**](UsersApi.md#getUser) | **GET** /users/{id} | Get User
[**getUserFields**](UsersApi.md#getUserFields) | **GET** /users/fields | Get Fields
[**getUserGroups**](UsersApi.md#getUserGroups) | **GET** /users/{id}/groups | Get User Groups
[**getUsers**](UsersApi.md#getUsers) | **GET** /users | Get Users
[**loginUser**](UsersApi.md#loginUser) | **POST** /users/login | Log In
[**logoutUser**](UsersApi.md#logoutUser) | **POST** /users/logout | sPostLogoutSummaryTitle
[**signupUser**](UsersApi.md#signupUser) | **POST** /users/signup | Sign Up  User
[**updateUser**](UsersApi.md#updateUser) | **PUT** /users/{id} | Update User


<a name="addUser"></a>
# **addUser**
> UseridObject addUser(body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Add User

 |      Used to add a new &#x60;User&#x60; object to the EMS database.

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*

val apiInstance = UsersApi()
val body : UserCredentialsObject =  // UserCredentialsObject | Object to add a new EMS User in the EMS Server
val xEmbarcaderoApplicationId : kotlin.String = xEmbarcaderoApplicationId_example // kotlin.String | 
val xEmbarcaderoAppSecret : kotlin.String = xEmbarcaderoAppSecret_example // kotlin.String | 
val xEmbarcaderoMasterSecret : kotlin.String = xEmbarcaderoMasterSecret_example // kotlin.String | 
try {
    val result : UseridObject = apiInstance.addUser(body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling UsersApi#addUser")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling UsersApi#addUser")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**UserCredentialsObject**](UserCredentialsObject.md)| Object to add a new EMS User in the EMS Server |
 **xEmbarcaderoApplicationId** | **kotlin.String**|  | [optional]
 **xEmbarcaderoAppSecret** | **kotlin.String**|  | [optional]
 **xEmbarcaderoMasterSecret** | **kotlin.String**|  | [optional]

### Return type

[**UseridObject**](UseridObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="deleteUser"></a>
# **deleteUser**
> deleteUser(id, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Delete User

 |      Used to delete a &#x60;User&#x60;. **id** is the unique EMS User identifier (UID) in the EMS database.

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*

val apiInstance = UsersApi()
val id : kotlin.String = id_example // kotlin.String | A user ID
val xEmbarcaderoApplicationId : kotlin.String = xEmbarcaderoApplicationId_example // kotlin.String | 
val xEmbarcaderoAppSecret : kotlin.String = xEmbarcaderoAppSecret_example // kotlin.String | 
val xEmbarcaderoMasterSecret : kotlin.String = xEmbarcaderoMasterSecret_example // kotlin.String | 
try {
    apiInstance.deleteUser(id, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)
} catch (e: ClientException) {
    println("4xx response calling UsersApi#deleteUser")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling UsersApi#deleteUser")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **kotlin.String**| A user ID |
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

<a name="getUser"></a>
# **getUser**
> UserObject getUser(id, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Get User

 |      Used to retrieve all data from a &#x60;User&#x60;. **id** is the unique EMS User identifier (UID) in the EMS database.

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*

val apiInstance = UsersApi()
val id : kotlin.String = id_example // kotlin.String | A user ID
val xEmbarcaderoApplicationId : kotlin.String = xEmbarcaderoApplicationId_example // kotlin.String | 
val xEmbarcaderoAppSecret : kotlin.String = xEmbarcaderoAppSecret_example // kotlin.String | 
val xEmbarcaderoMasterSecret : kotlin.String = xEmbarcaderoMasterSecret_example // kotlin.String | 
try {
    val result : UserObject = apiInstance.getUser(id, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling UsersApi#getUser")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling UsersApi#getUser")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **kotlin.String**| A user ID |
 **xEmbarcaderoApplicationId** | **kotlin.String**|  | [optional]
 **xEmbarcaderoAppSecret** | **kotlin.String**|  | [optional]
 **xEmbarcaderoMasterSecret** | **kotlin.String**|  | [optional]

### Return type

[**UserObject**](UserObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getUserFields"></a>
# **getUserFields**
> kotlin.Array&lt;FieldObject&gt; getUserFields(xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Get Fields

 |      Used to retrieve all the &#x60;field names&#x60; of the EMS Users (including the custom fields).

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*

val apiInstance = UsersApi()
val xEmbarcaderoApplicationId : kotlin.String = xEmbarcaderoApplicationId_example // kotlin.String | 
val xEmbarcaderoAppSecret : kotlin.String = xEmbarcaderoAppSecret_example // kotlin.String | 
val xEmbarcaderoMasterSecret : kotlin.String = xEmbarcaderoMasterSecret_example // kotlin.String | 
try {
    val result : kotlin.Array<FieldObject> = apiInstance.getUserFields(xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling UsersApi#getUserFields")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling UsersApi#getUserFields")
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

[**kotlin.Array&lt;FieldObject&gt;**](FieldObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getUserGroups"></a>
# **getUserGroups**
> kotlin.Array&lt;GroupName&gt; getUserGroups(id, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Get User Groups

 |      Used to retrieve the EMS Groups the EMS User belongs to. **id** is the unique EMS User identifier (UID) in the EMS database.

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*

val apiInstance = UsersApi()
val id : kotlin.String = id_example // kotlin.String | A user ID
val xEmbarcaderoApplicationId : kotlin.String = xEmbarcaderoApplicationId_example // kotlin.String | 
val xEmbarcaderoAppSecret : kotlin.String = xEmbarcaderoAppSecret_example // kotlin.String | 
val xEmbarcaderoMasterSecret : kotlin.String = xEmbarcaderoMasterSecret_example // kotlin.String | 
try {
    val result : kotlin.Array<GroupName> = apiInstance.getUserGroups(id, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling UsersApi#getUserGroups")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling UsersApi#getUserGroups")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **kotlin.String**| A user ID |
 **xEmbarcaderoApplicationId** | **kotlin.String**|  | [optional]
 **xEmbarcaderoAppSecret** | **kotlin.String**|  | [optional]
 **xEmbarcaderoMasterSecret** | **kotlin.String**|  | [optional]

### Return type

[**kotlin.Array&lt;GroupName&gt;**](GroupName.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getUsers"></a>
# **getUsers**
> kotlin.Array&lt;UserObject&gt; getUsers(xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret, skip, limit, order, where)

Get Users

 |      Used to retrieve all data from &#x60;Users&#x60;.      Optional query param of **skip, limit, order, where** determines       size of returned array, filtered and order by.

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*

val apiInstance = UsersApi()
val xEmbarcaderoApplicationId : kotlin.String = xEmbarcaderoApplicationId_example // kotlin.String | 
val xEmbarcaderoAppSecret : kotlin.String = xEmbarcaderoAppSecret_example // kotlin.String | 
val xEmbarcaderoMasterSecret : kotlin.String = xEmbarcaderoMasterSecret_example // kotlin.String | 
val skip : java.math.BigDecimal = 8.14 // java.math.BigDecimal | users skipped
val limit : java.math.BigDecimal = 8.14 // java.math.BigDecimal | maximum number of results to return
val order : java.math.BigDecimal = 8.14 // java.math.BigDecimal | order ascending or descending (asc, desc)
val where : kotlin.String = where_example // kotlin.String | filter operators (lt, lte, gt, gte, eq, neq, like, nlike)
try {
    val result : kotlin.Array<UserObject> = apiInstance.getUsers(xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret, skip, limit, order, where)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling UsersApi#getUsers")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling UsersApi#getUsers")
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

[**kotlin.Array&lt;UserObject&gt;**](UserObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="loginUser"></a>
# **loginUser**
> UserTokenObject loginUser(body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Log In

 |      Logs in to the EMS Server with a specific EMS User.

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*

val apiInstance = UsersApi()
val body : UserCredentialsObject =  // UserCredentialsObject | A user object
val xEmbarcaderoApplicationId : kotlin.String = xEmbarcaderoApplicationId_example // kotlin.String | 
val xEmbarcaderoAppSecret : kotlin.String = xEmbarcaderoAppSecret_example // kotlin.String | 
val xEmbarcaderoMasterSecret : kotlin.String = xEmbarcaderoMasterSecret_example // kotlin.String | 
try {
    val result : UserTokenObject = apiInstance.loginUser(body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling UsersApi#loginUser")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling UsersApi#loginUser")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**UserCredentialsObject**](UserCredentialsObject.md)| A user object |
 **xEmbarcaderoApplicationId** | **kotlin.String**|  | [optional]
 **xEmbarcaderoAppSecret** | **kotlin.String**|  | [optional]
 **xEmbarcaderoMasterSecret** | **kotlin.String**|  | [optional]

### Return type

[**UserTokenObject**](UserTokenObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="logoutUser"></a>
# **logoutUser**
> logoutUser(xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

sPostLogoutSummaryTitle

sPostLogoutSummaryDesc

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*

val apiInstance = UsersApi()
val xEmbarcaderoApplicationId : kotlin.String = xEmbarcaderoApplicationId_example // kotlin.String | 
val xEmbarcaderoAppSecret : kotlin.String = xEmbarcaderoAppSecret_example // kotlin.String | 
val xEmbarcaderoMasterSecret : kotlin.String = xEmbarcaderoMasterSecret_example // kotlin.String | 
try {
    apiInstance.logoutUser(xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)
} catch (e: ClientException) {
    println("4xx response calling UsersApi#logoutUser")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling UsersApi#logoutUser")
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

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="signupUser"></a>
# **signupUser**
> UserSignUpResponseObject signupUser(body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Sign Up  User

 |      Signs up to the EMS Server with an appropriate EMS User.

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*

val apiInstance = UsersApi()
val body : UserCredentialsObject =  // UserCredentialsObject | Object to sign up a new EMS User in the EMS Server
val xEmbarcaderoApplicationId : kotlin.String = xEmbarcaderoApplicationId_example // kotlin.String | 
val xEmbarcaderoAppSecret : kotlin.String = xEmbarcaderoAppSecret_example // kotlin.String | 
val xEmbarcaderoMasterSecret : kotlin.String = xEmbarcaderoMasterSecret_example // kotlin.String | 
try {
    val result : UserSignUpResponseObject = apiInstance.signupUser(body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling UsersApi#signupUser")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling UsersApi#signupUser")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**UserCredentialsObject**](UserCredentialsObject.md)| Object to sign up a new EMS User in the EMS Server |
 **xEmbarcaderoApplicationId** | **kotlin.String**|  | [optional]
 **xEmbarcaderoAppSecret** | **kotlin.String**|  | [optional]
 **xEmbarcaderoMasterSecret** | **kotlin.String**|  | [optional]

### Return type

[**UserSignUpResponseObject**](UserSignUpResponseObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="updateUser"></a>
# **updateUser**
> UpdatedObject updateUser(id, body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Update User

 |      Used to update a &#x60;User&#x60;. **id** is the unique EMS User identifier (UID) in the EMS database.

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*

val apiInstance = UsersApi()
val id : kotlin.String = id_example // kotlin.String | A user ID
val body : UpdateObject =  // UpdateObject | Add any fieldName
val xEmbarcaderoApplicationId : kotlin.String = xEmbarcaderoApplicationId_example // kotlin.String | 
val xEmbarcaderoAppSecret : kotlin.String = xEmbarcaderoAppSecret_example // kotlin.String | 
val xEmbarcaderoMasterSecret : kotlin.String = xEmbarcaderoMasterSecret_example // kotlin.String | 
try {
    val result : UpdatedObject = apiInstance.updateUser(id, body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling UsersApi#updateUser")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling UsersApi#updateUser")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **kotlin.String**| A user ID |
 **body** | [**UpdateObject**](UpdateObject.md)| Add any fieldName |
 **xEmbarcaderoApplicationId** | **kotlin.String**|  | [optional]
 **xEmbarcaderoAppSecret** | **kotlin.String**|  | [optional]
 **xEmbarcaderoMasterSecret** | **kotlin.String**|  | [optional]

### Return type

[**UpdatedObject**](UpdatedObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

