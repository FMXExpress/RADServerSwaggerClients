# SwagApiDocApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**aPI**](SwagApiDocApi.md#aPI) | **GET** /api | Get API EndPoints
[**getAPIJSONFormat**](SwagApiDocApi.md#getAPIJSONFormat) | **GET** /api/apidoc.json | Get JSON
[**getAPIYAMLFormat**](SwagApiDocApi.md#getAPIYAMLFormat) | **GET** /api/apidoc.yaml | Get YAML
[**getAPIYAMLFormatEndPoint**](SwagApiDocApi.md#getAPIYAMLFormatEndPoint) | **GET** /api/{item}/apidoc.yaml | Get API EndPoint


<a name="aPI"></a>
# **aPI**
> aPI(xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Get API EndPoints

 |\r\n    Used to retrieve all the API EndPoints.

### Example
```java
SwagApiDocApi api = new SwagApiDocApi();

Map<String, Object> params = new Map<String, Object>{
    'xEmbarcaderoApplicationId' => 'xEmbarcaderoApplicationId_example',
    'xEmbarcaderoAppSecret' => 'xEmbarcaderoAppSecret_example',
    'xEmbarcaderoMasterSecret' => 'xEmbarcaderoMasterSecret_example'
};

try {
    // cross your fingers
    api.aPI(params);
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

<a name="getAPIJSONFormat"></a>
# **getAPIJSONFormat**
> getAPIJSONFormat(xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Get JSON

Get API in JSON format

### Example
```java
SwagApiDocApi api = new SwagApiDocApi();

Map<String, Object> params = new Map<String, Object>{
    'xEmbarcaderoApplicationId' => 'xEmbarcaderoApplicationId_example',
    'xEmbarcaderoAppSecret' => 'xEmbarcaderoAppSecret_example',
    'xEmbarcaderoMasterSecret' => 'xEmbarcaderoMasterSecret_example'
};

try {
    // cross your fingers
    api.getAPIJSONFormat(params);
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

<a name="getAPIYAMLFormat"></a>
# **getAPIYAMLFormat**
> getAPIYAMLFormat(xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Get YAML

Get API in YAML format

### Example
```java
SwagApiDocApi api = new SwagApiDocApi();

Map<String, Object> params = new Map<String, Object>{
    'xEmbarcaderoApplicationId' => 'xEmbarcaderoApplicationId_example',
    'xEmbarcaderoAppSecret' => 'xEmbarcaderoAppSecret_example',
    'xEmbarcaderoMasterSecret' => 'xEmbarcaderoMasterSecret_example'
};

try {
    // cross your fingers
    api.getAPIYAMLFormat(params);
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

<a name="getAPIYAMLFormatEndPoint"></a>
# **getAPIYAMLFormatEndPoint**
> getAPIYAMLFormatEndPoint(item, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Get API EndPoint

 |\r\n    Used to retrieve an EndPoint for the API EndPoints.

### Example
```java
SwagApiDocApi api = new SwagApiDocApi();

Map<String, Object> params = new Map<String, Object>{
    'item' => 'item_example',
    'xEmbarcaderoApplicationId' => 'xEmbarcaderoApplicationId_example',
    'xEmbarcaderoAppSecret' => 'xEmbarcaderoAppSecret_example',
    'xEmbarcaderoMasterSecret' => 'xEmbarcaderoMasterSecret_example'
};

try {
    // cross your fingers
    api.getAPIYAMLFormatEndPoint(params);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **item** | **String**| Path Segment to an EndPoint |
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

