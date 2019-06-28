# SwagEdgeModulesInvokersApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteResourceEndpoint**](SwagEdgeModulesInvokersApi.md#deleteResourceEndpoint) | **DELETE** /edgemodules/{mname}/{rname} | Invoke Resource Delete Method
[**deleteResourceEndpointItem**](SwagEdgeModulesInvokersApi.md#deleteResourceEndpointItem) | **DELETE** /edgemodules/{mname}/{rname}/{wildcard} | Invoke Resource/* Delete Method
[**getResourceEndpoint**](SwagEdgeModulesInvokersApi.md#getResourceEndpoint) | **GET** /edgemodules/{mname}/{rname} | Invoke Resource Get Method
[**getResourceEndpointItem**](SwagEdgeModulesInvokersApi.md#getResourceEndpointItem) | **GET** /edgemodules/{mname}/{rname}/{wildcard} | Invoke Resource/* Get Method
[**patchResourceEndpoint**](SwagEdgeModulesInvokersApi.md#patchResourceEndpoint) | **PATCH** /edgemodules/{mname}/{rname} | Invoke Resource Patch Method
[**patchResourceEndpointItem**](SwagEdgeModulesInvokersApi.md#patchResourceEndpointItem) | **PATCH** /edgemodules/{mname}/{rname}/{wildcard} | Invoke Resource/* Patch Method
[**postResourceEndpoint**](SwagEdgeModulesInvokersApi.md#postResourceEndpoint) | **POST** /edgemodules/{mname}/{rname} | Invoke Resource Post Method
[**postResourceEndpointItem**](SwagEdgeModulesInvokersApi.md#postResourceEndpointItem) | **POST** /edgemodules/{mname}/{rname}/{wildcard} | Invoke Resource/* Post Method
[**putResourceEndpoint**](SwagEdgeModulesInvokersApi.md#putResourceEndpoint) | **PUT** /edgemodules/{mname}/{rname} | Invoke Resource Put Method
[**putResourceEndpointItem**](SwagEdgeModulesInvokersApi.md#putResourceEndpointItem) | **PUT** /edgemodules/{mname}/{rname}/{wildcard} | Invoke Resource/* Put Method


<a name="deleteResourceEndpoint"></a>
# **deleteResourceEndpoint**
> deleteResourceEndpoint(mname, rname, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Invoke Resource Delete Method

Used to invoke the DELETE method of the resource from an existing EMS EdgeModule.

### Example
```java
SwagEdgeModulesInvokersApi api = new SwagEdgeModulesInvokersApi();

Map<String, Object> params = new Map<String, Object>{
    'mname' => 'mname_example',
    'rname' => 'rname_example',
    'xEmbarcaderoApplicationId' => 'xEmbarcaderoApplicationId_example',
    'xEmbarcaderoAppSecret' => 'xEmbarcaderoAppSecret_example',
    'xEmbarcaderoMasterSecret' => 'xEmbarcaderoMasterSecret_example'
};

try {
    // cross your fingers
    api.deleteResourceEndpoint(params);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **String**| Is the EMS EdgeModule name |
 **rname** | **String**| Is the unique EMS EdgeModule Resource name |
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

<a name="deleteResourceEndpointItem"></a>
# **deleteResourceEndpointItem**
> deleteResourceEndpointItem(mname, rname, wildcard, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Invoke Resource/* Delete Method

Used to invoke the DELETE method of the resource from an existing EMS EdgeModule.

### Example
```java
SwagEdgeModulesInvokersApi api = new SwagEdgeModulesInvokersApi();

Map<String, Object> params = new Map<String, Object>{
    'mname' => 'mname_example',
    'rname' => 'rname_example',
    'wildcard' => 'wildcard_example',
    'xEmbarcaderoApplicationId' => 'xEmbarcaderoApplicationId_example',
    'xEmbarcaderoAppSecret' => 'xEmbarcaderoAppSecret_example',
    'xEmbarcaderoMasterSecret' => 'xEmbarcaderoMasterSecret_example'
};

try {
    // cross your fingers
    api.deleteResourceEndpointItem(params);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **String**| Is the EMS EdgeModule name |
 **rname** | **String**| Is the unique EMS EdgeModule Resource name |
 **wildcard** | **String**| Is the Wild card part of the URL |
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

<a name="getResourceEndpoint"></a>
# **getResourceEndpoint**
> getResourceEndpoint(mname, rname, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Invoke Resource Get Method

Used to invoke the GET method of the resource from an existing EMS EdgeModule.

### Example
```java
SwagEdgeModulesInvokersApi api = new SwagEdgeModulesInvokersApi();

Map<String, Object> params = new Map<String, Object>{
    'mname' => 'mname_example',
    'rname' => 'rname_example',
    'xEmbarcaderoApplicationId' => 'xEmbarcaderoApplicationId_example',
    'xEmbarcaderoAppSecret' => 'xEmbarcaderoAppSecret_example',
    'xEmbarcaderoMasterSecret' => 'xEmbarcaderoMasterSecret_example'
};

try {
    // cross your fingers
    api.getResourceEndpoint(params);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **String**| Is the EMS EdgeModule name |
 **rname** | **String**| Is the unique EMS EdgeModule Resource name |
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

<a name="getResourceEndpointItem"></a>
# **getResourceEndpointItem**
> getResourceEndpointItem(mname, rname, wildcard, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Invoke Resource/* Get Method

Used to invoke the GET method of the resource from an existing EMS EdgeModule.

### Example
```java
SwagEdgeModulesInvokersApi api = new SwagEdgeModulesInvokersApi();

Map<String, Object> params = new Map<String, Object>{
    'mname' => 'mname_example',
    'rname' => 'rname_example',
    'wildcard' => 'wildcard_example',
    'xEmbarcaderoApplicationId' => 'xEmbarcaderoApplicationId_example',
    'xEmbarcaderoAppSecret' => 'xEmbarcaderoAppSecret_example',
    'xEmbarcaderoMasterSecret' => 'xEmbarcaderoMasterSecret_example'
};

try {
    // cross your fingers
    api.getResourceEndpointItem(params);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **String**| Is the EMS EdgeModule name |
 **rname** | **String**| Is the unique EMS EdgeModule Resource name |
 **wildcard** | **String**| Is the Wild card part of the URL |
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

<a name="patchResourceEndpoint"></a>
# **patchResourceEndpoint**
> patchResourceEndpoint(mname, rname, body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Invoke Resource Patch Method

Used to invoke the PATCH method of the resource from an existing EMS EdgeModule.

### Example
```java
SwagEdgeModulesInvokersApi api = new SwagEdgeModulesInvokersApi();

Map<String, Object> params = new Map<String, Object>{
    'mname' => 'mname_example',
    'rname' => 'rname_example',
    'body' => Object.getExample(),
    'xEmbarcaderoApplicationId' => 'xEmbarcaderoApplicationId_example',
    'xEmbarcaderoAppSecret' => 'xEmbarcaderoAppSecret_example',
    'xEmbarcaderoMasterSecret' => 'xEmbarcaderoMasterSecret_example'
};

try {
    // cross your fingers
    api.patchResourceEndpoint(params);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **String**| Is the EMS EdgeModule name |
 **rname** | **String**| Is the unique EMS EdgeModule Resource name |
 **body** | **Object**| Body Object |
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

<a name="patchResourceEndpointItem"></a>
# **patchResourceEndpointItem**
> patchResourceEndpointItem(mname, rname, wildcard, body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Invoke Resource/* Patch Method

Used to invoke the PATCH method of the resource from an existing EMS EdgeModule.

### Example
```java
SwagEdgeModulesInvokersApi api = new SwagEdgeModulesInvokersApi();

Map<String, Object> params = new Map<String, Object>{
    'mname' => 'mname_example',
    'rname' => 'rname_example',
    'wildcard' => 'wildcard_example',
    'body' => Object.getExample(),
    'xEmbarcaderoApplicationId' => 'xEmbarcaderoApplicationId_example',
    'xEmbarcaderoAppSecret' => 'xEmbarcaderoAppSecret_example',
    'xEmbarcaderoMasterSecret' => 'xEmbarcaderoMasterSecret_example'
};

try {
    // cross your fingers
    api.patchResourceEndpointItem(params);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **String**| Is the EMS EdgeModule name |
 **rname** | **String**| Is the unique EMS EdgeModule Resource name |
 **wildcard** | **String**| Is the Wild card part of the URL |
 **body** | **Object**| Body Object |
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

<a name="postResourceEndpoint"></a>
# **postResourceEndpoint**
> postResourceEndpoint(mname, rname, body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Invoke Resource Post Method

Used to invoke the POST method of the resource from an existing EMS EdgeModule.

### Example
```java
SwagEdgeModulesInvokersApi api = new SwagEdgeModulesInvokersApi();

Map<String, Object> params = new Map<String, Object>{
    'mname' => 'mname_example',
    'rname' => 'rname_example',
    'body' => Object.getExample(),
    'xEmbarcaderoApplicationId' => 'xEmbarcaderoApplicationId_example',
    'xEmbarcaderoAppSecret' => 'xEmbarcaderoAppSecret_example',
    'xEmbarcaderoMasterSecret' => 'xEmbarcaderoMasterSecret_example'
};

try {
    // cross your fingers
    api.postResourceEndpoint(params);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **String**| Is the EMS EdgeModule name |
 **rname** | **String**| Is the unique EMS EdgeModule Resource name |
 **body** | **Object**| Body Object |
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

<a name="postResourceEndpointItem"></a>
# **postResourceEndpointItem**
> postResourceEndpointItem(mname, rname, wildcard, body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Invoke Resource/* Post Method

Used to invoke the POST method of the resource from an existing EMS EdgeModule.

### Example
```java
SwagEdgeModulesInvokersApi api = new SwagEdgeModulesInvokersApi();

Map<String, Object> params = new Map<String, Object>{
    'mname' => 'mname_example',
    'rname' => 'rname_example',
    'wildcard' => 'wildcard_example',
    'body' => Object.getExample(),
    'xEmbarcaderoApplicationId' => 'xEmbarcaderoApplicationId_example',
    'xEmbarcaderoAppSecret' => 'xEmbarcaderoAppSecret_example',
    'xEmbarcaderoMasterSecret' => 'xEmbarcaderoMasterSecret_example'
};

try {
    // cross your fingers
    api.postResourceEndpointItem(params);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **String**| Is the EMS EdgeModule name |
 **rname** | **String**| Is the unique EMS EdgeModule Resource name |
 **wildcard** | **String**| Is the Wild card part of the URL |
 **body** | **Object**| Body Object |
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

<a name="putResourceEndpoint"></a>
# **putResourceEndpoint**
> putResourceEndpoint(mname, rname, body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Invoke Resource Put Method

Used to invoke the PUT method of the resource from an existing EMS EdgeModule.

### Example
```java
SwagEdgeModulesInvokersApi api = new SwagEdgeModulesInvokersApi();

Map<String, Object> params = new Map<String, Object>{
    'mname' => 'mname_example',
    'rname' => 'rname_example',
    'body' => Object.getExample(),
    'xEmbarcaderoApplicationId' => 'xEmbarcaderoApplicationId_example',
    'xEmbarcaderoAppSecret' => 'xEmbarcaderoAppSecret_example',
    'xEmbarcaderoMasterSecret' => 'xEmbarcaderoMasterSecret_example'
};

try {
    // cross your fingers
    api.putResourceEndpoint(params);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **String**| Is the EMS EdgeModule name |
 **rname** | **String**| Is the unique EMS EdgeModule Resource name |
 **body** | **Object**| Body Object |
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

<a name="putResourceEndpointItem"></a>
# **putResourceEndpointItem**
> putResourceEndpointItem(mname, rname, wildcard, body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Invoke Resource/* Put Method

Used to invoke the PUT method of the resource from an existing EMS EdgeModule.

### Example
```java
SwagEdgeModulesInvokersApi api = new SwagEdgeModulesInvokersApi();

Map<String, Object> params = new Map<String, Object>{
    'mname' => 'mname_example',
    'rname' => 'rname_example',
    'wildcard' => 'wildcard_example',
    'body' => Object.getExample(),
    'xEmbarcaderoApplicationId' => 'xEmbarcaderoApplicationId_example',
    'xEmbarcaderoAppSecret' => 'xEmbarcaderoAppSecret_example',
    'xEmbarcaderoMasterSecret' => 'xEmbarcaderoMasterSecret_example'
};

try {
    // cross your fingers
    api.putResourceEndpointItem(params);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **String**| Is the EMS EdgeModule name |
 **rname** | **String**| Is the unique EMS EdgeModule Resource name |
 **wildcard** | **String**| Is the Wild card part of the URL |
 **body** | **Object**| Body Object |
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

