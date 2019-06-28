# SwagGroupsApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addGroup**](SwagGroupsApi.md#addGroup) | **POST** /groups | Add Group
[**deleteGroup**](SwagGroupsApi.md#deleteGroup) | **DELETE** /groups/{item} | Delete Group
[**getGroup**](SwagGroupsApi.md#getGroup) | **GET** /groups/{item} | Get Group
[**getGroupFields**](SwagGroupsApi.md#getGroupFields) | **GET** /groups/fields | Get Fields
[**getGroups**](SwagGroupsApi.md#getGroups) | **GET** /groups | Get Groups
[**updateGroup**](SwagGroupsApi.md#updateGroup) | **PUT** /groups/{item} | Update Group


<a name="addGroup"></a>
# **addGroup**
> addGroup(body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Add Group

 |\r\n    Used to add a new &#x60;Group&#x60; object to the EMS database.

### Example
```java
SwagGroupsApi api = new SwagGroupsApi();

Map<String, Object> params = new Map<String, Object>{
    'body' => SwagGroupAddObject.getExample(),
    'xEmbarcaderoApplicationId' => 'xEmbarcaderoApplicationId_example',
    'xEmbarcaderoAppSecret' => 'xEmbarcaderoAppSecret_example',
    'xEmbarcaderoMasterSecret' => 'xEmbarcaderoMasterSecret_example'
};

try {
    // cross your fingers
    api.addGroup(params);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SwagGroupAddObject**](SwagGroupAddObject.md)| Object to sign up a new EMS User in the EMS Server |
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

<a name="deleteGroup"></a>
# **deleteGroup**
> deleteGroup(item, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Delete Group

 |\r\n    Used to delete a &#x60;Group&#x60;. **item** is the unique EMS Group name in the EMS database.

### Example
```java
SwagGroupsApi api = new SwagGroupsApi();

Map<String, Object> params = new Map<String, Object>{
    'item' => 'item_example',
    'xEmbarcaderoApplicationId' => 'xEmbarcaderoApplicationId_example',
    'xEmbarcaderoAppSecret' => 'xEmbarcaderoAppSecret_example',
    'xEmbarcaderoMasterSecret' => 'xEmbarcaderoMasterSecret_example'
};

try {
    // cross your fingers
    api.deleteGroup(params);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **item** | **String**| A group name |
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

<a name="getGroup"></a>
# **getGroup**
> SwagGroupObject getGroup(item, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Get Group

 |\r\n    Used to retrieve all data from a &#x60;Group&#x60;. **item** is the unique EMS Group name in the EMS database.

### Example
```java
SwagGroupsApi api = new SwagGroupsApi();

Map<String, Object> params = new Map<String, Object>{
    'item' => 'item_example',
    'xEmbarcaderoApplicationId' => 'xEmbarcaderoApplicationId_example',
    'xEmbarcaderoAppSecret' => 'xEmbarcaderoAppSecret_example',
    'xEmbarcaderoMasterSecret' => 'xEmbarcaderoMasterSecret_example'
};

try {
    // cross your fingers
    SwagGroupObject result = api.getGroup(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **item** | **String**| A group name |
 **xEmbarcaderoApplicationId** | **String**|  | [optional]
 **xEmbarcaderoAppSecret** | **String**|  | [optional]
 **xEmbarcaderoMasterSecret** | **String**|  | [optional]

### Return type

[**SwagGroupObject**](SwagGroupObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getGroupFields"></a>
# **getGroupFields**
> List&lt;SwagFieldGroupObject&gt; getGroupFields(xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Get Fields

 |\r\n    Used to retrieve all the &#x60;field names&#x60; of the EMS Group (including the custom fields).

### Example
```java
SwagGroupsApi api = new SwagGroupsApi();

Map<String, Object> params = new Map<String, Object>{
    'xEmbarcaderoApplicationId' => 'xEmbarcaderoApplicationId_example',
    'xEmbarcaderoAppSecret' => 'xEmbarcaderoAppSecret_example',
    'xEmbarcaderoMasterSecret' => 'xEmbarcaderoMasterSecret_example'
};

try {
    // cross your fingers
    List<SwagFieldGroupObject> result = api.getGroupFields(params);
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

[**List&lt;SwagFieldGroupObject&gt;**](SwagFieldGroupObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getGroups"></a>
# **getGroups**
> List&lt;SwagGroupObject&gt; getGroups(xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret, skip, r_limit, order, r_where)

Get Groups

 |\r\n    Used to retrieve all data from &#x60;Groups&#x60;.\r\n    Optional query param of **skip, limit, order, where** determines \r\n    size of returned array, filtered and order by.

### Example
```java
SwagGroupsApi api = new SwagGroupsApi();

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
    List<SwagGroupObject> result = api.getGroups(params);
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

[**List&lt;SwagGroupObject&gt;**](SwagGroupObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="updateGroup"></a>
# **updateGroup**
> SwagUpdatedGroupObject updateGroup(item, body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Update Group

 |\r\n    Used to update a &#x60;Group&#x60;. **item** is the unique EMS Group name in the EMS database.

### Example
```java
SwagGroupsApi api = new SwagGroupsApi();

Map<String, Object> params = new Map<String, Object>{
    'item' => 'item_example',
    'body' => SwagUpdateGroupObject.getExample(),
    'xEmbarcaderoApplicationId' => 'xEmbarcaderoApplicationId_example',
    'xEmbarcaderoAppSecret' => 'xEmbarcaderoAppSecret_example',
    'xEmbarcaderoMasterSecret' => 'xEmbarcaderoMasterSecret_example'
};

try {
    // cross your fingers
    SwagUpdatedGroupObject result = api.updateGroup(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **item** | **String**| A group name |
 **body** | [**SwagUpdateGroupObject**](SwagUpdateGroupObject.md)| Object to sign up a new EMS User in the EMS Server |
 **xEmbarcaderoApplicationId** | **String**|  | [optional]
 **xEmbarcaderoAppSecret** | **String**|  | [optional]
 **xEmbarcaderoMasterSecret** | **String**|  | [optional]

### Return type

[**SwagUpdatedGroupObject**](SwagUpdatedGroupObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

