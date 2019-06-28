# EdgeModulesInvokersApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteResourceEndpoint**](EdgeModulesInvokersApi.md#deleteResourceEndpoint) | **DELETE** /edgemodules/{mname}/{rname} | Invoke Resource Delete Method
[**deleteResourceEndpointItem**](EdgeModulesInvokersApi.md#deleteResourceEndpointItem) | **DELETE** /edgemodules/{mname}/{rname}/{wildcard} | Invoke Resource/* Delete Method
[**getResourceEndpoint**](EdgeModulesInvokersApi.md#getResourceEndpoint) | **GET** /edgemodules/{mname}/{rname} | Invoke Resource Get Method
[**getResourceEndpointItem**](EdgeModulesInvokersApi.md#getResourceEndpointItem) | **GET** /edgemodules/{mname}/{rname}/{wildcard} | Invoke Resource/* Get Method
[**patchResourceEndpoint**](EdgeModulesInvokersApi.md#patchResourceEndpoint) | **PATCH** /edgemodules/{mname}/{rname} | Invoke Resource Patch Method
[**patchResourceEndpointItem**](EdgeModulesInvokersApi.md#patchResourceEndpointItem) | **PATCH** /edgemodules/{mname}/{rname}/{wildcard} | Invoke Resource/* Patch Method
[**postResourceEndpoint**](EdgeModulesInvokersApi.md#postResourceEndpoint) | **POST** /edgemodules/{mname}/{rname} | Invoke Resource Post Method
[**postResourceEndpointItem**](EdgeModulesInvokersApi.md#postResourceEndpointItem) | **POST** /edgemodules/{mname}/{rname}/{wildcard} | Invoke Resource/* Post Method
[**putResourceEndpoint**](EdgeModulesInvokersApi.md#putResourceEndpoint) | **PUT** /edgemodules/{mname}/{rname} | Invoke Resource Put Method
[**putResourceEndpointItem**](EdgeModulesInvokersApi.md#putResourceEndpointItem) | **PUT** /edgemodules/{mname}/{rname}/{wildcard} | Invoke Resource/* Put Method


## **deleteResourceEndpoint**

Invoke Resource Delete Method

Used to invoke the DELETE method of the resource from an existing EMS EdgeModule.

### Example
```bash
 deleteResourceEndpoint mname=value rname=value X-Embarcadero-Application-Id:value X-Embarcadero-App-Secret:value X-Embarcadero-Master-Secret:value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **string** | Is the EMS EdgeModule name |
 **rname** | **string** | Is the unique EMS EdgeModule Resource name |
 **xEmbarcaderoApplicationId** | **string** |  | [optional]
 **xEmbarcaderoAppSecret** | **string** |  | [optional]
 **xEmbarcaderoMasterSecret** | **string** |  | [optional]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not Applicable
 - **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

## **deleteResourceEndpointItem**

Invoke Resource/* Delete Method

Used to invoke the DELETE method of the resource from an existing EMS EdgeModule.

### Example
```bash
 deleteResourceEndpointItem mname=value rname=value wildcard=value X-Embarcadero-Application-Id:value X-Embarcadero-App-Secret:value X-Embarcadero-Master-Secret:value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **string** | Is the EMS EdgeModule name |
 **rname** | **string** | Is the unique EMS EdgeModule Resource name |
 **wildcard** | **string** | Is the Wild card part of the URL |
 **xEmbarcaderoApplicationId** | **string** |  | [optional]
 **xEmbarcaderoAppSecret** | **string** |  | [optional]
 **xEmbarcaderoMasterSecret** | **string** |  | [optional]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not Applicable
 - **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

## **getResourceEndpoint**

Invoke Resource Get Method

Used to invoke the GET method of the resource from an existing EMS EdgeModule.

### Example
```bash
 getResourceEndpoint mname=value rname=value X-Embarcadero-Application-Id:value X-Embarcadero-App-Secret:value X-Embarcadero-Master-Secret:value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **string** | Is the EMS EdgeModule name |
 **rname** | **string** | Is the unique EMS EdgeModule Resource name |
 **xEmbarcaderoApplicationId** | **string** |  | [optional]
 **xEmbarcaderoAppSecret** | **string** |  | [optional]
 **xEmbarcaderoMasterSecret** | **string** |  | [optional]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not Applicable
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

## **getResourceEndpointItem**

Invoke Resource/* Get Method

Used to invoke the GET method of the resource from an existing EMS EdgeModule.

### Example
```bash
 getResourceEndpointItem mname=value rname=value wildcard=value X-Embarcadero-Application-Id:value X-Embarcadero-App-Secret:value X-Embarcadero-Master-Secret:value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **string** | Is the EMS EdgeModule name |
 **rname** | **string** | Is the unique EMS EdgeModule Resource name |
 **wildcard** | **string** | Is the Wild card part of the URL |
 **xEmbarcaderoApplicationId** | **string** |  | [optional]
 **xEmbarcaderoAppSecret** | **string** |  | [optional]
 **xEmbarcaderoMasterSecret** | **string** |  | [optional]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not Applicable
 - **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

## **patchResourceEndpoint**

Invoke Resource Patch Method

Used to invoke the PATCH method of the resource from an existing EMS EdgeModule.

### Example
```bash
 patchResourceEndpoint mname=value rname=value X-Embarcadero-Application-Id:value X-Embarcadero-App-Secret:value X-Embarcadero-Master-Secret:value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **string** | Is the EMS EdgeModule name |
 **rname** | **string** | Is the unique EMS EdgeModule Resource name |
 **body** | **map** | Body Object |
 **xEmbarcaderoApplicationId** | **string** |  | [optional]
 **xEmbarcaderoAppSecret** | **string** |  | [optional]
 **xEmbarcaderoMasterSecret** | **string** |  | [optional]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

## **patchResourceEndpointItem**

Invoke Resource/* Patch Method

Used to invoke the PATCH method of the resource from an existing EMS EdgeModule.

### Example
```bash
 patchResourceEndpointItem mname=value rname=value wildcard=value X-Embarcadero-Application-Id:value X-Embarcadero-App-Secret:value X-Embarcadero-Master-Secret:value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **string** | Is the EMS EdgeModule name |
 **rname** | **string** | Is the unique EMS EdgeModule Resource name |
 **wildcard** | **string** | Is the Wild card part of the URL |
 **body** | **map** | Body Object |
 **xEmbarcaderoApplicationId** | **string** |  | [optional]
 **xEmbarcaderoAppSecret** | **string** |  | [optional]
 **xEmbarcaderoMasterSecret** | **string** |  | [optional]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

## **postResourceEndpoint**

Invoke Resource Post Method

Used to invoke the POST method of the resource from an existing EMS EdgeModule.

### Example
```bash
 postResourceEndpoint mname=value rname=value X-Embarcadero-Application-Id:value X-Embarcadero-App-Secret:value X-Embarcadero-Master-Secret:value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **string** | Is the EMS EdgeModule name |
 **rname** | **string** | Is the unique EMS EdgeModule Resource name |
 **body** | **map** | Body Object |
 **xEmbarcaderoApplicationId** | **string** |  | [optional]
 **xEmbarcaderoAppSecret** | **string** |  | [optional]
 **xEmbarcaderoMasterSecret** | **string** |  | [optional]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

## **postResourceEndpointItem**

Invoke Resource/* Post Method

Used to invoke the POST method of the resource from an existing EMS EdgeModule.

### Example
```bash
 postResourceEndpointItem mname=value rname=value wildcard=value X-Embarcadero-Application-Id:value X-Embarcadero-App-Secret:value X-Embarcadero-Master-Secret:value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **string** | Is the EMS EdgeModule name |
 **rname** | **string** | Is the unique EMS EdgeModule Resource name |
 **wildcard** | **string** | Is the Wild card part of the URL |
 **body** | **map** | Body Object |
 **xEmbarcaderoApplicationId** | **string** |  | [optional]
 **xEmbarcaderoAppSecret** | **string** |  | [optional]
 **xEmbarcaderoMasterSecret** | **string** |  | [optional]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

## **putResourceEndpoint**

Invoke Resource Put Method

Used to invoke the PUT method of the resource from an existing EMS EdgeModule.

### Example
```bash
 putResourceEndpoint mname=value rname=value X-Embarcadero-Application-Id:value X-Embarcadero-App-Secret:value X-Embarcadero-Master-Secret:value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **string** | Is the EMS EdgeModule name |
 **rname** | **string** | Is the unique EMS EdgeModule Resource name |
 **body** | **map** | Body Object |
 **xEmbarcaderoApplicationId** | **string** |  | [optional]
 **xEmbarcaderoAppSecret** | **string** |  | [optional]
 **xEmbarcaderoMasterSecret** | **string** |  | [optional]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

## **putResourceEndpointItem**

Invoke Resource/* Put Method

Used to invoke the PUT method of the resource from an existing EMS EdgeModule.

### Example
```bash
 putResourceEndpointItem mname=value rname=value wildcard=value X-Embarcadero-Application-Id:value X-Embarcadero-App-Secret:value X-Embarcadero-Master-Secret:value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **string** | Is the EMS EdgeModule name |
 **rname** | **string** | Is the unique EMS EdgeModule Resource name |
 **wildcard** | **string** | Is the Wild card part of the URL |
 **body** | **map** | Body Object |
 **xEmbarcaderoApplicationId** | **string** |  | [optional]
 **xEmbarcaderoAppSecret** | **string** |  | [optional]
 **xEmbarcaderoMasterSecret** | **string** |  | [optional]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

