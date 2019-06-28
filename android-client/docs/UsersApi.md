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
```java
// Import classes:
//import io.swagger.client.api.UsersApi;

UsersApi apiInstance = new UsersApi();
UserCredentialsObject body = new UserCredentialsObject(); // UserCredentialsObject | Object to add a new EMS User in the EMS Server
String xEmbarcaderoApplicationId = "xEmbarcaderoApplicationId_example"; // String | 
String xEmbarcaderoAppSecret = "xEmbarcaderoAppSecret_example"; // String | 
String xEmbarcaderoMasterSecret = "xEmbarcaderoMasterSecret_example"; // String | 
try {
    UseridObject result = apiInstance.addUser(body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling UsersApi#addUser");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**UserCredentialsObject**](UserCredentialsObject.md)| Object to add a new EMS User in the EMS Server |
 **xEmbarcaderoApplicationId** | **String**|  | [optional]
 **xEmbarcaderoAppSecret** | **String**|  | [optional]
 **xEmbarcaderoMasterSecret** | **String**|  | [optional]

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
```java
// Import classes:
//import io.swagger.client.api.UsersApi;

UsersApi apiInstance = new UsersApi();
String id = "id_example"; // String | A user ID
String xEmbarcaderoApplicationId = "xEmbarcaderoApplicationId_example"; // String | 
String xEmbarcaderoAppSecret = "xEmbarcaderoAppSecret_example"; // String | 
String xEmbarcaderoMasterSecret = "xEmbarcaderoMasterSecret_example"; // String | 
try {
    apiInstance.deleteUser(id, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
} catch (ApiException e) {
    System.err.println("Exception when calling UsersApi#deleteUser");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A user ID |
 **xEmbarcaderoApplicationId** | **String**|  | [optional]
 **xEmbarcaderoAppSecret** | **String**|  | [optional]
 **xEmbarcaderoMasterSecret** | **String**|  | [optional]

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
```java
// Import classes:
//import io.swagger.client.api.UsersApi;

UsersApi apiInstance = new UsersApi();
String id = "id_example"; // String | A user ID
String xEmbarcaderoApplicationId = "xEmbarcaderoApplicationId_example"; // String | 
String xEmbarcaderoAppSecret = "xEmbarcaderoAppSecret_example"; // String | 
String xEmbarcaderoMasterSecret = "xEmbarcaderoMasterSecret_example"; // String | 
try {
    UserObject result = apiInstance.getUser(id, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling UsersApi#getUser");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A user ID |
 **xEmbarcaderoApplicationId** | **String**|  | [optional]
 **xEmbarcaderoAppSecret** | **String**|  | [optional]
 **xEmbarcaderoMasterSecret** | **String**|  | [optional]

### Return type

[**UserObject**](UserObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getUserFields"></a>
# **getUserFields**
> List&lt;FieldObject&gt; getUserFields(xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Get Fields

 |      Used to retrieve all the &#x60;field names&#x60; of the EMS Users (including the custom fields).

### Example
```java
// Import classes:
//import io.swagger.client.api.UsersApi;

UsersApi apiInstance = new UsersApi();
String xEmbarcaderoApplicationId = "xEmbarcaderoApplicationId_example"; // String | 
String xEmbarcaderoAppSecret = "xEmbarcaderoAppSecret_example"; // String | 
String xEmbarcaderoMasterSecret = "xEmbarcaderoMasterSecret_example"; // String | 
try {
    List<FieldObject> result = apiInstance.getUserFields(xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling UsersApi#getUserFields");
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

[**List&lt;FieldObject&gt;**](FieldObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getUserGroups"></a>
# **getUserGroups**
> List&lt;GroupName&gt; getUserGroups(id, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Get User Groups

 |      Used to retrieve the EMS Groups the EMS User belongs to. **id** is the unique EMS User identifier (UID) in the EMS database.

### Example
```java
// Import classes:
//import io.swagger.client.api.UsersApi;

UsersApi apiInstance = new UsersApi();
String id = "id_example"; // String | A user ID
String xEmbarcaderoApplicationId = "xEmbarcaderoApplicationId_example"; // String | 
String xEmbarcaderoAppSecret = "xEmbarcaderoAppSecret_example"; // String | 
String xEmbarcaderoMasterSecret = "xEmbarcaderoMasterSecret_example"; // String | 
try {
    List<GroupName> result = apiInstance.getUserGroups(id, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling UsersApi#getUserGroups");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A user ID |
 **xEmbarcaderoApplicationId** | **String**|  | [optional]
 **xEmbarcaderoAppSecret** | **String**|  | [optional]
 **xEmbarcaderoMasterSecret** | **String**|  | [optional]

### Return type

[**List&lt;GroupName&gt;**](GroupName.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getUsers"></a>
# **getUsers**
> List&lt;UserObject&gt; getUsers(xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret, skip, limit, order, where)

Get Users

 |      Used to retrieve all data from &#x60;Users&#x60;.      Optional query param of **skip, limit, order, where** determines       size of returned array, filtered and order by.

### Example
```java
// Import classes:
//import io.swagger.client.api.UsersApi;

UsersApi apiInstance = new UsersApi();
String xEmbarcaderoApplicationId = "xEmbarcaderoApplicationId_example"; // String | 
String xEmbarcaderoAppSecret = "xEmbarcaderoAppSecret_example"; // String | 
String xEmbarcaderoMasterSecret = "xEmbarcaderoMasterSecret_example"; // String | 
BigDecimal skip = new BigDecimal(); // BigDecimal | users skipped
BigDecimal limit = new BigDecimal(); // BigDecimal | maximum number of results to return
BigDecimal order = new BigDecimal(); // BigDecimal | order ascending or descending (asc, desc)
String where = "where_example"; // String | filter operators (lt, lte, gt, gte, eq, neq, like, nlike)
try {
    List<UserObject> result = apiInstance.getUsers(xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret, skip, limit, order, where);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling UsersApi#getUsers");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xEmbarcaderoApplicationId** | **String**|  | [optional]
 **xEmbarcaderoAppSecret** | **String**|  | [optional]
 **xEmbarcaderoMasterSecret** | **String**|  | [optional]
 **skip** | **BigDecimal**| users skipped | [optional]
 **limit** | **BigDecimal**| maximum number of results to return | [optional]
 **order** | **BigDecimal**| order ascending or descending (asc, desc) | [optional]
 **where** | **String**| filter operators (lt, lte, gt, gte, eq, neq, like, nlike) | [optional]

### Return type

[**List&lt;UserObject&gt;**](UserObject.md)

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
```java
// Import classes:
//import io.swagger.client.api.UsersApi;

UsersApi apiInstance = new UsersApi();
UserCredentialsObject body = new UserCredentialsObject(); // UserCredentialsObject | A user object
String xEmbarcaderoApplicationId = "xEmbarcaderoApplicationId_example"; // String | 
String xEmbarcaderoAppSecret = "xEmbarcaderoAppSecret_example"; // String | 
String xEmbarcaderoMasterSecret = "xEmbarcaderoMasterSecret_example"; // String | 
try {
    UserTokenObject result = apiInstance.loginUser(body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling UsersApi#loginUser");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**UserCredentialsObject**](UserCredentialsObject.md)| A user object |
 **xEmbarcaderoApplicationId** | **String**|  | [optional]
 **xEmbarcaderoAppSecret** | **String**|  | [optional]
 **xEmbarcaderoMasterSecret** | **String**|  | [optional]

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
```java
// Import classes:
//import io.swagger.client.api.UsersApi;

UsersApi apiInstance = new UsersApi();
String xEmbarcaderoApplicationId = "xEmbarcaderoApplicationId_example"; // String | 
String xEmbarcaderoAppSecret = "xEmbarcaderoAppSecret_example"; // String | 
String xEmbarcaderoMasterSecret = "xEmbarcaderoMasterSecret_example"; // String | 
try {
    apiInstance.logoutUser(xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
} catch (ApiException e) {
    System.err.println("Exception when calling UsersApi#logoutUser");
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
```java
// Import classes:
//import io.swagger.client.api.UsersApi;

UsersApi apiInstance = new UsersApi();
UserCredentialsObject body = new UserCredentialsObject(); // UserCredentialsObject | Object to sign up a new EMS User in the EMS Server
String xEmbarcaderoApplicationId = "xEmbarcaderoApplicationId_example"; // String | 
String xEmbarcaderoAppSecret = "xEmbarcaderoAppSecret_example"; // String | 
String xEmbarcaderoMasterSecret = "xEmbarcaderoMasterSecret_example"; // String | 
try {
    UserSignUpResponseObject result = apiInstance.signupUser(body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling UsersApi#signupUser");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**UserCredentialsObject**](UserCredentialsObject.md)| Object to sign up a new EMS User in the EMS Server |
 **xEmbarcaderoApplicationId** | **String**|  | [optional]
 **xEmbarcaderoAppSecret** | **String**|  | [optional]
 **xEmbarcaderoMasterSecret** | **String**|  | [optional]

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
```java
// Import classes:
//import io.swagger.client.api.UsersApi;

UsersApi apiInstance = new UsersApi();
String id = "id_example"; // String | A user ID
UpdateObject body = new UpdateObject(); // UpdateObject | Add any fieldName
String xEmbarcaderoApplicationId = "xEmbarcaderoApplicationId_example"; // String | 
String xEmbarcaderoAppSecret = "xEmbarcaderoAppSecret_example"; // String | 
String xEmbarcaderoMasterSecret = "xEmbarcaderoMasterSecret_example"; // String | 
try {
    UpdatedObject result = apiInstance.updateUser(id, body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling UsersApi#updateUser");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A user ID |
 **body** | [**UpdateObject**](UpdateObject.md)| Add any fieldName |
 **xEmbarcaderoApplicationId** | **String**|  | [optional]
 **xEmbarcaderoAppSecret** | **String**|  | [optional]
 **xEmbarcaderoMasterSecret** | **String**|  | [optional]

### Return type

[**UpdatedObject**](UpdatedObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

