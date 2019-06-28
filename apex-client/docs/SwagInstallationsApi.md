# SwagInstallationsApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addInstallation**](SwagInstallationsApi.md#addInstallation) | **POST** /installations | Add Installation
[**deleteInstallation**](SwagInstallationsApi.md#deleteInstallation) | **DELETE** /installations/{id} | Delete Installation
[**getChannels**](SwagInstallationsApi.md#getChannels) | **GET** /installations/channels | Get Installation Channels
[**getInstallation**](SwagInstallationsApi.md#getInstallation) | **GET** /installations/{id} | Get Installation
[**getInstallationFields**](SwagInstallationsApi.md#getInstallationFields) | **GET** /installations/fields | Get Fields
[**getInstallations**](SwagInstallationsApi.md#getInstallations) | **GET** /installations | Get Installations
[**updateInstallation**](SwagInstallationsApi.md#updateInstallation) | **PUT** /installations/{id} | Update Installation


<a name="addInstallation"></a>
# **addInstallation**
> SwagInstallationAddedObject addInstallation(body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Add Installation

 |\r\n    Used to add a new &#x60;Installation&#x60; object to the EMS database.

### Example
```java
SwagInstallationsApi api = new SwagInstallationsApi();

Map<String, Object> params = new Map<String, Object>{
    'body' => SwagInstallationAddObject.getExample(),
    'xEmbarcaderoApplicationId' => 'xEmbarcaderoApplicationId_example',
    'xEmbarcaderoAppSecret' => 'xEmbarcaderoAppSecret_example',
    'xEmbarcaderoMasterSecret' => 'xEmbarcaderoMasterSecret_example'
};

try {
    // cross your fingers
    SwagInstallationAddedObject result = api.addInstallation(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SwagInstallationAddObject**](SwagInstallationAddObject.md)| Object to sign up a new EMS User in the EMS Server |
 **xEmbarcaderoApplicationId** | **String**|  | [optional]
 **xEmbarcaderoAppSecret** | **String**|  | [optional]
 **xEmbarcaderoMasterSecret** | **String**|  | [optional]

### Return type

[**SwagInstallationAddedObject**](SwagInstallationAddedObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="deleteInstallation"></a>
# **deleteInstallation**
> deleteInstallation(id, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Delete Installation

 |\r\n    Used to delete an &#x60;Installation&#x60;. **id** is the unique EMS Installation identifier (IID) in the EMS database.

### Example
```java
SwagInstallationsApi api = new SwagInstallationsApi();

Map<String, Object> params = new Map<String, Object>{
    'id' => 'id_example',
    'xEmbarcaderoApplicationId' => 'xEmbarcaderoApplicationId_example',
    'xEmbarcaderoAppSecret' => 'xEmbarcaderoAppSecret_example',
    'xEmbarcaderoMasterSecret' => 'xEmbarcaderoMasterSecret_example'
};

try {
    // cross your fingers
    api.deleteInstallation(params);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A Installation ID |
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

<a name="getChannels"></a>
# **getChannels**
> List&lt;String&gt; getChannels(xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Get Installation Channels

 |\r\n     Used to retrieve the available channels to which the device has subscribed. **id** is the unique EMS Installation identifier (InstallationID) in the EMS database.

### Example
```java
SwagInstallationsApi api = new SwagInstallationsApi();

Map<String, Object> params = new Map<String, Object>{
    'xEmbarcaderoApplicationId' => 'xEmbarcaderoApplicationId_example',
    'xEmbarcaderoAppSecret' => 'xEmbarcaderoAppSecret_example',
    'xEmbarcaderoMasterSecret' => 'xEmbarcaderoMasterSecret_example'
};

try {
    // cross your fingers
    List<String> result = api.getChannels(params);
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

**List&lt;String&gt;**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getInstallation"></a>
# **getInstallation**
> SwagInstallationObject getInstallation(id, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Get Installation

 |\r\n    Used to retrieve all data from a specific &#x60;Installation&#x60; (registered device). **id** is the unique EMS Installation identifier (InstallationID) in the EMS database.

### Example
```java
SwagInstallationsApi api = new SwagInstallationsApi();

Map<String, Object> params = new Map<String, Object>{
    'id' => 'id_example',
    'xEmbarcaderoApplicationId' => 'xEmbarcaderoApplicationId_example',
    'xEmbarcaderoAppSecret' => 'xEmbarcaderoAppSecret_example',
    'xEmbarcaderoMasterSecret' => 'xEmbarcaderoMasterSecret_example'
};

try {
    // cross your fingers
    SwagInstallationObject result = api.getInstallation(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A Installation ID |
 **xEmbarcaderoApplicationId** | **String**|  | [optional]
 **xEmbarcaderoAppSecret** | **String**|  | [optional]
 **xEmbarcaderoMasterSecret** | **String**|  | [optional]

### Return type

[**SwagInstallationObject**](SwagInstallationObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getInstallationFields"></a>
# **getInstallationFields**
> List&lt;SwagFieldInstallationObject&gt; getInstallationFields(xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Get Fields

 |\r\n    Used to retrieve all the &#x60;field names&#x60; of the EMS Installation (including the custom fields).

### Example
```java
SwagInstallationsApi api = new SwagInstallationsApi();

Map<String, Object> params = new Map<String, Object>{
    'xEmbarcaderoApplicationId' => 'xEmbarcaderoApplicationId_example',
    'xEmbarcaderoAppSecret' => 'xEmbarcaderoAppSecret_example',
    'xEmbarcaderoMasterSecret' => 'xEmbarcaderoMasterSecret_example'
};

try {
    // cross your fingers
    List<SwagFieldInstallationObject> result = api.getInstallationFields(params);
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

[**List&lt;SwagFieldInstallationObject&gt;**](SwagFieldInstallationObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getInstallations"></a>
# **getInstallations**
> List&lt;SwagInstallationObject&gt; getInstallations(xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret, skip, r_limit, order, r_where)

Get Installations

 |\r\n    Used to retrieve all data from &#x60;Installation&#x60;.\r\n    Optional query param of **skip, limit, order, where** determines \r\n    size of returned array, filtered and order by.

### Example
```java
SwagInstallationsApi api = new SwagInstallationsApi();

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
    List<SwagInstallationObject> result = api.getInstallations(params);
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

[**List&lt;SwagInstallationObject&gt;**](SwagInstallationObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="updateInstallation"></a>
# **updateInstallation**
> SwagUpdatedInstallationObject updateInstallation(id, body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Update Installation

 |\r\n    Used to update an &#x60;Installation&#x60;. **id** is the unique EMS Installation identifier (IID) in the EMS database.

### Example
```java
SwagInstallationsApi api = new SwagInstallationsApi();

Map<String, Object> params = new Map<String, Object>{
    'id' => 'id_example',
    'body' => SwagUpdateInstallationObject.getExample(),
    'xEmbarcaderoApplicationId' => 'xEmbarcaderoApplicationId_example',
    'xEmbarcaderoAppSecret' => 'xEmbarcaderoAppSecret_example',
    'xEmbarcaderoMasterSecret' => 'xEmbarcaderoMasterSecret_example'
};

try {
    // cross your fingers
    SwagUpdatedInstallationObject result = api.updateInstallation(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A Installation ID |
 **body** | [**SwagUpdateInstallationObject**](SwagUpdateInstallationObject.md)| Installation fields to update |
 **xEmbarcaderoApplicationId** | **String**|  | [optional]
 **xEmbarcaderoAppSecret** | **String**|  | [optional]
 **xEmbarcaderoMasterSecret** | **String**|  | [optional]

### Return type

[**SwagUpdatedInstallationObject**](SwagUpdatedInstallationObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

