# SwagUsersApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addUser**](SwagUsersApi.md#addUser) | **POST** /users | Add User
[**deleteUser**](SwagUsersApi.md#deleteUser) | **DELETE** /users/{id} | Delete User
[**getUser**](SwagUsersApi.md#getUser) | **GET** /users/{id} | Get User
[**getUserFields**](SwagUsersApi.md#getUserFields) | **GET** /users/fields | Get Fields
[**getUserGroups**](SwagUsersApi.md#getUserGroups) | **GET** /users/{id}/groups | Get User Groups
[**getUsers**](SwagUsersApi.md#getUsers) | **GET** /users | Get Users
[**loginUser**](SwagUsersApi.md#loginUser) | **POST** /users/login | Log In
[**logoutUser**](SwagUsersApi.md#logoutUser) | **POST** /users/logout | sPostLogoutSummaryTitle
[**signupUser**](SwagUsersApi.md#signupUser) | **POST** /users/signup | Sign Up  User
[**updateUser**](SwagUsersApi.md#updateUser) | **PUT** /users/{id} | Update User


<a name="addUser"></a>
# **addUser**
> SwagUseridObject addUser(body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Add User

 |\r\n    Used to add a new &#x60;User&#x60; object to the EMS database.

### Example
```java
SwagUsersApi api = new SwagUsersApi();

Map<String, Object> params = new Map<String, Object>{
    'body' => SwagUserCredentialsObject.getExample(),
    'xEmbarcaderoApplicationId' => 'xEmbarcaderoApplicationId_example',
    'xEmbarcaderoAppSecret' => 'xEmbarcaderoAppSecret_example',
    'xEmbarcaderoMasterSecret' => 'xEmbarcaderoMasterSecret_example'
};

try {
    // cross your fingers
    SwagUseridObject result = api.addUser(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SwagUserCredentialsObject**](SwagUserCredentialsObject.md)| Object to add a new EMS User in the EMS Server |
 **xEmbarcaderoApplicationId** | **String**|  | [optional]
 **xEmbarcaderoAppSecret** | **String**|  | [optional]
 **xEmbarcaderoMasterSecret** | **String**|  | [optional]

### Return type

[**SwagUseridObject**](SwagUseridObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="deleteUser"></a>
# **deleteUser**
> deleteUser(id, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Delete User

 |\r\n    Used to delete a &#x60;User&#x60;. **id** is the unique EMS User identifier (UID) in the EMS database.

### Example
```java
SwagUsersApi api = new SwagUsersApi();

Map<String, Object> params = new Map<String, Object>{
    'id' => 'id_example',
    'xEmbarcaderoApplicationId' => 'xEmbarcaderoApplicationId_example',
    'xEmbarcaderoAppSecret' => 'xEmbarcaderoAppSecret_example',
    'xEmbarcaderoMasterSecret' => 'xEmbarcaderoMasterSecret_example'
};

try {
    // cross your fingers
    api.deleteUser(params);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
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

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getUser"></a>
# **getUser**
> SwagUserObject getUser(id, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Get User

 |\r\n    Used to retrieve all data from a &#x60;User&#x60;. **id** is the unique EMS User identifier (UID) in the EMS database.

### Example
```java
SwagUsersApi api = new SwagUsersApi();

Map<String, Object> params = new Map<String, Object>{
    'id' => 'id_example',
    'xEmbarcaderoApplicationId' => 'xEmbarcaderoApplicationId_example',
    'xEmbarcaderoAppSecret' => 'xEmbarcaderoAppSecret_example',
    'xEmbarcaderoMasterSecret' => 'xEmbarcaderoMasterSecret_example'
};

try {
    // cross your fingers
    SwagUserObject result = api.getUser(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
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

[**SwagUserObject**](SwagUserObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getUserFields"></a>
# **getUserFields**
> List&lt;SwagFieldObject&gt; getUserFields(xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Get Fields

 |\r\n    Used to retrieve all the &#x60;field names&#x60; of the EMS Users (including the custom fields).

### Example
```java
SwagUsersApi api = new SwagUsersApi();

Map<String, Object> params = new Map<String, Object>{
    'xEmbarcaderoApplicationId' => 'xEmbarcaderoApplicationId_example',
    'xEmbarcaderoAppSecret' => 'xEmbarcaderoAppSecret_example',
    'xEmbarcaderoMasterSecret' => 'xEmbarcaderoMasterSecret_example'
};

try {
    // cross your fingers
    List<SwagFieldObject> result = api.getUserFields(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xEmbarcaderoApplicationId** | **String**|  | [optional]
 **xEmbarcaderoAppSecret** | **String**|  | [optional]
 **xEmbarcaderoMasterSecret** | **String**|  | [optional]

### Return type

[**List&lt;SwagFieldObject&gt;**](SwagFieldObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getUserGroups"></a>
# **getUserGroups**
> List&lt;String&gt; getUserGroups(id, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Get User Groups

 |\r\n    Used to retrieve the EMS Groups the EMS User belongs to. **id** is the unique EMS User identifier (UID) in the EMS database.

### Example
```java
SwagUsersApi api = new SwagUsersApi();

Map<String, Object> params = new Map<String, Object>{
    'id' => 'id_example',
    'xEmbarcaderoApplicationId' => 'xEmbarcaderoApplicationId_example',
    'xEmbarcaderoAppSecret' => 'xEmbarcaderoAppSecret_example',
    'xEmbarcaderoMasterSecret' => 'xEmbarcaderoMasterSecret_example'
};

try {
    // cross your fingers
    List<String> result = api.getUserGroups(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
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

**List&lt;String&gt;**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getUsers"></a>
# **getUsers**
> List&lt;SwagUserObject&gt; getUsers(xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret, skip, r_limit, order, r_where)

Get Users

 |\r\n    Used to retrieve all data from &#x60;Users&#x60;.\r\n    Optional query param of **skip, limit, order, where** determines \r\n    size of returned array, filtered and order by.

### Example
```java
SwagUsersApi api = new SwagUsersApi();

Map<String, Object> params = new Map<String, Object>{
    'xEmbarcaderoApplicationId' => 'xEmbarcaderoApplicationId_example',
    'xEmbarcaderoAppSecret' => 'xEmbarcaderoAppSecret_example',
    'xEmbarcaderoMasterSecret' => 'xEmbarcaderoMasterSecret_example',
    'skip' => 8.14,
    'r_limit' => 8.14,
    'order' => 8.14,
    'r_where' => 'r_where_example'
};

try {
    // cross your fingers
    List<SwagUserObject> result = api.getUsers(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xEmbarcaderoApplicationId** | **String**|  | [optional]
 **xEmbarcaderoAppSecret** | **String**|  | [optional]
 **xEmbarcaderoMasterSecret** | **String**|  | [optional]
 **skip** | **Double**| users skipped | [optional]
 **r_limit** | **Double**| maximum number of results to return | [optional]
 **order** | **Double**| order ascending or descending (asc, desc) | [optional]
 **r_where** | **String**| filter operators (lt, lte, gt, gte, eq, neq, like, nlike) | [optional]

### Return type

[**List&lt;SwagUserObject&gt;**](SwagUserObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="loginUser"></a>
# **loginUser**
> SwagUserTokenObject loginUser(body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Log In

 |\r\n    Logs in to the EMS Server with a specific EMS User.

### Example
```java
SwagUsersApi api = new SwagUsersApi();

Map<String, Object> params = new Map<String, Object>{
    'body' => SwagUserCredentialsObject.getExample(),
    'xEmbarcaderoApplicationId' => 'xEmbarcaderoApplicationId_example',
    'xEmbarcaderoAppSecret' => 'xEmbarcaderoAppSecret_example',
    'xEmbarcaderoMasterSecret' => 'xEmbarcaderoMasterSecret_example'
};

try {
    // cross your fingers
    SwagUserTokenObject result = api.loginUser(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SwagUserCredentialsObject**](SwagUserCredentialsObject.md)| A user object |
 **xEmbarcaderoApplicationId** | **String**|  | [optional]
 **xEmbarcaderoAppSecret** | **String**|  | [optional]
 **xEmbarcaderoMasterSecret** | **String**|  | [optional]

### Return type

[**SwagUserTokenObject**](SwagUserTokenObject.md)

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
SwagUsersApi api = new SwagUsersApi();

Map<String, Object> params = new Map<String, Object>{
    'xEmbarcaderoApplicationId' => 'xEmbarcaderoApplicationId_example',
    'xEmbarcaderoAppSecret' => 'xEmbarcaderoAppSecret_example',
    'xEmbarcaderoMasterSecret' => 'xEmbarcaderoMasterSecret_example'
};

try {
    // cross your fingers
    api.logoutUser(params);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
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
> SwagUserSignUpResponseObject signupUser(body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Sign Up  User

 |\r\n    Signs up to the EMS Server with an appropriate EMS User.

### Example
```java
SwagUsersApi api = new SwagUsersApi();

Map<String, Object> params = new Map<String, Object>{
    'body' => SwagUserCredentialsObject.getExample(),
    'xEmbarcaderoApplicationId' => 'xEmbarcaderoApplicationId_example',
    'xEmbarcaderoAppSecret' => 'xEmbarcaderoAppSecret_example',
    'xEmbarcaderoMasterSecret' => 'xEmbarcaderoMasterSecret_example'
};

try {
    // cross your fingers
    SwagUserSignUpResponseObject result = api.signupUser(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SwagUserCredentialsObject**](SwagUserCredentialsObject.md)| Object to sign up a new EMS User in the EMS Server |
 **xEmbarcaderoApplicationId** | **String**|  | [optional]
 **xEmbarcaderoAppSecret** | **String**|  | [optional]
 **xEmbarcaderoMasterSecret** | **String**|  | [optional]

### Return type

[**SwagUserSignUpResponseObject**](SwagUserSignUpResponseObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="updateUser"></a>
# **updateUser**
> SwagUpdatedObject updateUser(id, body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Update User

 |\r\n    Used to update a &#x60;User&#x60;. **id** is the unique EMS User identifier (UID) in the EMS database.

### Example
```java
SwagUsersApi api = new SwagUsersApi();

Map<String, Object> params = new Map<String, Object>{
    'id' => 'id_example',
    'body' => SwagUpdateObject.getExample(),
    'xEmbarcaderoApplicationId' => 'xEmbarcaderoApplicationId_example',
    'xEmbarcaderoAppSecret' => 'xEmbarcaderoAppSecret_example',
    'xEmbarcaderoMasterSecret' => 'xEmbarcaderoMasterSecret_example'
};

try {
    // cross your fingers
    SwagUpdatedObject result = api.updateUser(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A user ID |
 **body** | [**SwagUpdateObject**](SwagUpdateObject.md)| Add any fieldName |
 **xEmbarcaderoApplicationId** | **String**|  | [optional]
 **xEmbarcaderoAppSecret** | **String**|  | [optional]
 **xEmbarcaderoMasterSecret** | **String**|  | [optional]

### Return type

[**SwagUpdatedObject**](SwagUpdatedObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

