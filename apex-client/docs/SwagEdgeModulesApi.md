# SwagEdgeModulesApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getModule**](SwagEdgeModulesApi.md#getModule) | **GET** /edgemodules/{mname} | Get Module
[**getModuleResource**](SwagEdgeModulesApi.md#getModuleResource) | **GET** /edgemodules/{mname}/resources/{name} | Get EdgeModule Resource
[**getModuleResources**](SwagEdgeModulesApi.md#getModuleResources) | **GET** /edgemodules/{mname}/resources | Get EdgeModule Resources
[**getModules**](SwagEdgeModulesApi.md#getModules) | **GET** /edgemodules | Get Module
[**getModulesFields**](SwagEdgeModulesApi.md#getModulesFields) | **GET** /edgemodules/fields | Get Fields
[**getResources**](SwagEdgeModulesApi.md#getResources) | **GET** /edgemodules/resources | Get EdgeModules Resources
[**getResourcesFields**](SwagEdgeModulesApi.md#getResourcesFields) | **GET** /edgemodules/resources/fields | Get Resource Fields
[**registerModule**](SwagEdgeModulesApi.md#registerModule) | **POST** /edgemodules | Add Module
[**registerModuleResource**](SwagEdgeModulesApi.md#registerModuleResource) | **POST** /edgemodules/{mname}/resources | Add Module Resource
[**unregisterModule**](SwagEdgeModulesApi.md#unregisterModule) | **DELETE** /edgemodules/{mname} | Delete Module
[**unregisterModuleResource**](SwagEdgeModulesApi.md#unregisterModuleResource) | **DELETE** /edgemodules/{mname}/resources/{name} | Delete Module Resource
[**updateModule**](SwagEdgeModulesApi.md#updateModule) | **PUT** /edgemodules/{mname} | Update Module
[**updateModuleResource**](SwagEdgeModulesApi.md#updateModuleResource) | **PUT** /edgemodules/{mname}/resources/{name} | Update Module Resource


<a name="getModule"></a>
# **getModule**
> SwagEdgeModuleObject getModule(mname, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Get Module

 |\r\n    Used to retrieve all data from &#x60;EdgeModule&#x60;.\r\n    Optional query param of **skip, limit, order, where** determines \r\n    size of returned array, filtered and order by.

### Example
```java
SwagEdgeModulesApi api = new SwagEdgeModulesApi();

Map<String, Object> params = new Map<String, Object>{
    'mname' => 'mname_example',
    'xEmbarcaderoApplicationId' => 'xEmbarcaderoApplicationId_example',
    'xEmbarcaderoAppSecret' => 'xEmbarcaderoAppSecret_example',
    'xEmbarcaderoMasterSecret' => 'xEmbarcaderoMasterSecret_example'
};

try {
    // cross your fingers
    SwagEdgeModuleObject result = api.getModule(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **String**| Is the unique EMS EdgeModule identifier |
 **xEmbarcaderoApplicationId** | **String**|  | [optional]
 **xEmbarcaderoAppSecret** | **String**|  | [optional]
 **xEmbarcaderoMasterSecret** | **String**|  | [optional]

### Return type

[**SwagEdgeModuleObject**](SwagEdgeModuleObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getModuleResource"></a>
# **getModuleResource**
> SwagEdgeModuleResourceObject getModuleResource(mname, name, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Get EdgeModule Resource

 |\r\n    Used to retrieve all data from a resource of an EdgeModule. **mname** is the unique EMS EdgeModule identifier in the EMS database. **resourcename** is the name of the resource.

### Example
```java
SwagEdgeModulesApi api = new SwagEdgeModulesApi();

Map<String, Object> params = new Map<String, Object>{
    'mname' => 'mname_example',
    'name' => 'name_example',
    'xEmbarcaderoApplicationId' => 'xEmbarcaderoApplicationId_example',
    'xEmbarcaderoAppSecret' => 'xEmbarcaderoAppSecret_example',
    'xEmbarcaderoMasterSecret' => 'xEmbarcaderoMasterSecret_example'
};

try {
    // cross your fingers
    SwagEdgeModuleResourceObject result = api.getModuleResource(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **String**| Is the unique EMS EdgeModule identifier |
 **name** | **String**| Is the unique EMS EdgeModule Resource name |
 **xEmbarcaderoApplicationId** | **String**|  | [optional]
 **xEmbarcaderoAppSecret** | **String**|  | [optional]
 **xEmbarcaderoMasterSecret** | **String**|  | [optional]

### Return type

[**SwagEdgeModuleResourceObject**](SwagEdgeModuleResourceObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getModuleResources"></a>
# **getModuleResources**
> List&lt;SwagEdgeModuleResourceObject&gt; getModuleResources(mname, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Get EdgeModule Resources

 |\r\n    Used to retrieve all data from the resources of an EdgeModule.

### Example
```java
SwagEdgeModulesApi api = new SwagEdgeModulesApi();

Map<String, Object> params = new Map<String, Object>{
    'mname' => 'mname_example',
    'xEmbarcaderoApplicationId' => 'xEmbarcaderoApplicationId_example',
    'xEmbarcaderoAppSecret' => 'xEmbarcaderoAppSecret_example',
    'xEmbarcaderoMasterSecret' => 'xEmbarcaderoMasterSecret_example'
};

try {
    // cross your fingers
    List<SwagEdgeModuleResourceObject> result = api.getModuleResources(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **String**| Is the unique EMS EdgeModule identifier |
 **xEmbarcaderoApplicationId** | **String**|  | [optional]
 **xEmbarcaderoAppSecret** | **String**|  | [optional]
 **xEmbarcaderoMasterSecret** | **String**|  | [optional]

### Return type

[**List&lt;SwagEdgeModuleResourceObject&gt;**](SwagEdgeModuleResourceObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getModules"></a>
# **getModules**
> List&lt;SwagEdgeModuleObject&gt; getModules(xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Get Module

 |\r\n    Used to retrieve all data from &#x60;EdgeModule&#x60;.\r\n    Optional query param of **skip, limit, order, where** determines \r\n    size of returned array, filtered and order by.

### Example
```java
SwagEdgeModulesApi api = new SwagEdgeModulesApi();

Map<String, Object> params = new Map<String, Object>{
    'xEmbarcaderoApplicationId' => 'xEmbarcaderoApplicationId_example',
    'xEmbarcaderoAppSecret' => 'xEmbarcaderoAppSecret_example',
    'xEmbarcaderoMasterSecret' => 'xEmbarcaderoMasterSecret_example'
};

try {
    // cross your fingers
    List<SwagEdgeModuleObject> result = api.getModules(params);
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

[**List&lt;SwagEdgeModuleObject&gt;**](SwagEdgeModuleObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getModulesFields"></a>
# **getModulesFields**
> SwagFieldsEdgeModuleObject getModulesFields(xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Get Fields

 |\r\n    Used to retrieve all the &#x60;field names&#x60; of the EMS EdgeModule (including the custom fields).

### Example
```java
SwagEdgeModulesApi api = new SwagEdgeModulesApi();

Map<String, Object> params = new Map<String, Object>{
    'xEmbarcaderoApplicationId' => 'xEmbarcaderoApplicationId_example',
    'xEmbarcaderoAppSecret' => 'xEmbarcaderoAppSecret_example',
    'xEmbarcaderoMasterSecret' => 'xEmbarcaderoMasterSecret_example'
};

try {
    // cross your fingers
    SwagFieldsEdgeModuleObject result = api.getModulesFields(params);
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

[**SwagFieldsEdgeModuleObject**](SwagFieldsEdgeModuleObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getResources"></a>
# **getResources**
> List&lt;SwagEdgeModuleResourceObject&gt; getResources(xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Get EdgeModules Resources

 |\r\n    Used to retrieve all data from the resources of all EdgeModules.

### Example
```java
SwagEdgeModulesApi api = new SwagEdgeModulesApi();

Map<String, Object> params = new Map<String, Object>{
    'xEmbarcaderoApplicationId' => 'xEmbarcaderoApplicationId_example',
    'xEmbarcaderoAppSecret' => 'xEmbarcaderoAppSecret_example',
    'xEmbarcaderoMasterSecret' => 'xEmbarcaderoMasterSecret_example'
};

try {
    // cross your fingers
    List<SwagEdgeModuleResourceObject> result = api.getResources(params);
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

[**List&lt;SwagEdgeModuleResourceObject&gt;**](SwagEdgeModuleResourceObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getResourcesFields"></a>
# **getResourcesFields**
> SwagFieldsEdgeModuleObject getResourcesFields(xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Get Resource Fields

 |\r\n    Used to retrieve the &#x60;field names&#x60; of all the resources of the EMS EdgeModule (including the custom fields).

### Example
```java
SwagEdgeModulesApi api = new SwagEdgeModulesApi();

Map<String, Object> params = new Map<String, Object>{
    'xEmbarcaderoApplicationId' => 'xEmbarcaderoApplicationId_example',
    'xEmbarcaderoAppSecret' => 'xEmbarcaderoAppSecret_example',
    'xEmbarcaderoMasterSecret' => 'xEmbarcaderoMasterSecret_example'
};

try {
    // cross your fingers
    SwagFieldsEdgeModuleObject result = api.getResourcesFields(params);
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

[**SwagFieldsEdgeModuleObject**](SwagFieldsEdgeModuleObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="registerModule"></a>
# **registerModule**
> SwagEdgeModuleAddedObject registerModule(body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Add Module

 |\r\n    Used to add a new &#x60;EdgeModule&#x60; object to the EMS database.

### Example
```java
SwagEdgeModulesApi api = new SwagEdgeModulesApi();

Map<String, Object> params = new Map<String, Object>{
    'body' => SwagEdgeModuleAddObject.getExample(),
    'xEmbarcaderoApplicationId' => 'xEmbarcaderoApplicationId_example',
    'xEmbarcaderoAppSecret' => 'xEmbarcaderoAppSecret_example',
    'xEmbarcaderoMasterSecret' => 'xEmbarcaderoMasterSecret_example'
};

try {
    // cross your fingers
    SwagEdgeModuleAddedObject result = api.registerModule(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SwagEdgeModuleAddObject**](SwagEdgeModuleAddObject.md)| EdgeModule object to add. protocolprops example string {\&quot;port\&quot;:8082,\&quot;host\&quot;:\&quot;10.150.40.52\&quot;} |
 **xEmbarcaderoApplicationId** | **String**|  | [optional]
 **xEmbarcaderoAppSecret** | **String**|  | [optional]
 **xEmbarcaderoMasterSecret** | **String**|  | [optional]

### Return type

[**SwagEdgeModuleAddedObject**](SwagEdgeModuleAddedObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="registerModuleResource"></a>
# **registerModuleResource**
> SwagEdgeModuleResourceAddedObject registerModuleResource(mname, body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Add Module Resource

 |\r\n    Used to register a new resource from an EMS EdgeModule. **mname** is the unique EMS EdgeModule identifier in the EMS database.

### Example
```java
SwagEdgeModulesApi api = new SwagEdgeModulesApi();

Map<String, Object> params = new Map<String, Object>{
    'mname' => 'mname_example',
    'body' => SwagEdgeModuleResourceAddObject.getExample(),
    'xEmbarcaderoApplicationId' => 'xEmbarcaderoApplicationId_example',
    'xEmbarcaderoAppSecret' => 'xEmbarcaderoAppSecret_example',
    'xEmbarcaderoMasterSecret' => 'xEmbarcaderoMasterSecret_example'
};

try {
    // cross your fingers
    SwagEdgeModuleResourceAddedObject result = api.registerModuleResource(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **String**| Is the unique EMS EdgeModule identifier |
 **body** | [**SwagEdgeModuleResourceAddObject**](SwagEdgeModuleResourceAddObject.md)| EdgModule Resource add object. protocolprops string example {\&quot;port\&quot;:8082,\&quot;host\&quot;:\&quot;10.150.40.52\&quot;} |
 **xEmbarcaderoApplicationId** | **String**|  | [optional]
 **xEmbarcaderoAppSecret** | **String**|  | [optional]
 **xEmbarcaderoMasterSecret** | **String**|  | [optional]

### Return type

[**SwagEdgeModuleResourceAddedObject**](SwagEdgeModuleResourceAddedObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="unregisterModule"></a>
# **unregisterModule**
> unregisterModule(mname, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Delete Module

 |\r\n    Used to delete an &#x60;EdgeModule Resource&#x60;. **mname** is the unique EMS EdgeModule identifier (MID) in the EMS database. **resourcename** is the name of the resource.

### Example
```java
SwagEdgeModulesApi api = new SwagEdgeModulesApi();

Map<String, Object> params = new Map<String, Object>{
    'mname' => 'mname_example',
    'xEmbarcaderoApplicationId' => 'xEmbarcaderoApplicationId_example',
    'xEmbarcaderoAppSecret' => 'xEmbarcaderoAppSecret_example',
    'xEmbarcaderoMasterSecret' => 'xEmbarcaderoMasterSecret_example'
};

try {
    // cross your fingers
    api.unregisterModule(params);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **String**| Is the unique EMS EdgeModule identifier |
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

<a name="unregisterModuleResource"></a>
# **unregisterModuleResource**
> unregisterModuleResource(mname, name, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Delete Module Resource

 |\r\n    Used to delete an &#x60;EdgeModule Resource&#x60;. **mname** is the unique EMS EdgeModule identifier (MID) in the EMS database. **resourcename** is the name of the resource.

### Example
```java
SwagEdgeModulesApi api = new SwagEdgeModulesApi();

Map<String, Object> params = new Map<String, Object>{
    'mname' => 'mname_example',
    'name' => 'name_example',
    'xEmbarcaderoApplicationId' => 'xEmbarcaderoApplicationId_example',
    'xEmbarcaderoAppSecret' => 'xEmbarcaderoAppSecret_example',
    'xEmbarcaderoMasterSecret' => 'xEmbarcaderoMasterSecret_example'
};

try {
    // cross your fingers
    api.unregisterModuleResource(params);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **String**| Is the unique EMS EdgeModule identifier |
 **name** | **String**| Is the unique EMS EdgeModule Resource name |
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

<a name="updateModule"></a>
# **updateModule**
> SwagEdgeModuleUpdatedObject updateModule(mname, body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Update Module

 |\r\n    Used to update an &#x60;EdgeModule&#x60;. **mname** is the unique EMS EdgeModule identifier (MID) in the EMS database.

### Example
```java
SwagEdgeModulesApi api = new SwagEdgeModulesApi();

Map<String, Object> params = new Map<String, Object>{
    'mname' => 'mname_example',
    'body' => SwagEdgeModuleUpdateObject.getExample(),
    'xEmbarcaderoApplicationId' => 'xEmbarcaderoApplicationId_example',
    'xEmbarcaderoAppSecret' => 'xEmbarcaderoAppSecret_example',
    'xEmbarcaderoMasterSecret' => 'xEmbarcaderoMasterSecret_example'
};

try {
    // cross your fingers
    SwagEdgeModuleUpdatedObject result = api.updateModule(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **String**| Is the unique EMS EdgeModule identifier |
 **body** | [**SwagEdgeModuleUpdateObject**](SwagEdgeModuleUpdateObject.md)| EdgModule Resource add object. protocolprops string example {\&quot;port\&quot;:8082,\&quot;host\&quot;:\&quot;10.150.40.52\&quot;} |
 **xEmbarcaderoApplicationId** | **String**|  | [optional]
 **xEmbarcaderoAppSecret** | **String**|  | [optional]
 **xEmbarcaderoMasterSecret** | **String**|  | [optional]

### Return type

[**SwagEdgeModuleUpdatedObject**](SwagEdgeModuleUpdatedObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="updateModuleResource"></a>
# **updateModuleResource**
> SwagEdgeModuleResourceUpdatedObject updateModuleResource(mname, name, body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Update Module Resource

 |\r\n    Used to update an &#x60;EdgeModule&#x60;. **mname** is the unique EMS EdgeModule identifier (MID) in the EMS database.

### Example
```java
SwagEdgeModulesApi api = new SwagEdgeModulesApi();

Map<String, Object> params = new Map<String, Object>{
    'mname' => 'mname_example',
    'name' => 'name_example',
    'body' => SwagEdgeModuleResourceUpdateObject.getExample(),
    'xEmbarcaderoApplicationId' => 'xEmbarcaderoApplicationId_example',
    'xEmbarcaderoAppSecret' => 'xEmbarcaderoAppSecret_example',
    'xEmbarcaderoMasterSecret' => 'xEmbarcaderoMasterSecret_example'
};

try {
    // cross your fingers
    SwagEdgeModuleResourceUpdatedObject result = api.updateModuleResource(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **String**| Is the unique EMS EdgeModule identifier |
 **name** | **String**| Is the unique EMS EdgeModule Resource name |
 **body** | [**SwagEdgeModuleResourceUpdateObject**](SwagEdgeModuleResourceUpdateObject.md)| EdgModule Resource add object. protocolprops string example {\&quot;port\&quot;:8082,\&quot;host\&quot;:\&quot;10.150.40.52\&quot;} |
 **xEmbarcaderoApplicationId** | **String**|  | [optional]
 **xEmbarcaderoAppSecret** | **String**|  | [optional]
 **xEmbarcaderoMasterSecret** | **String**|  | [optional]

### Return type

[**SwagEdgeModuleResourceUpdatedObject**](SwagEdgeModuleResourceUpdatedObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

