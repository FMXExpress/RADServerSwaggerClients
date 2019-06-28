# \ApiDocApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**API**](ApiDocApi.md#API) | **Get** /api | Get API EndPoints
[**GetAPIJSONFormat**](ApiDocApi.md#GetAPIJSONFormat) | **Get** /api/apidoc.json | Get JSON
[**GetAPIYAMLFormat**](ApiDocApi.md#GetAPIYAMLFormat) | **Get** /api/apidoc.yaml | Get YAML
[**GetAPIYAMLFormatEndPoint**](ApiDocApi.md#GetAPIYAMLFormatEndPoint) | **Get** /api/{item}/apidoc.yaml | Get API EndPoint


# **API**
> API(ctx, optional)
Get API EndPoints

 |      Used to retrieve all the API EndPoints.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
 **optional** | ***APIOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a APIOpts struct

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xEmbarcaderoApplicationId** | **optional.String**|  | 
 **xEmbarcaderoAppSecret** | **optional.String**|  | 
 **xEmbarcaderoMasterSecret** | **optional.String**|  | 

### Return type

 (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **GetAPIJSONFormat**
> GetAPIJSONFormat(ctx, optional)
Get JSON

Get API in JSON format

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
 **optional** | ***GetAPIJSONFormatOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a GetAPIJSONFormatOpts struct

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xEmbarcaderoApplicationId** | **optional.String**|  | 
 **xEmbarcaderoAppSecret** | **optional.String**|  | 
 **xEmbarcaderoMasterSecret** | **optional.String**|  | 

### Return type

 (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **GetAPIYAMLFormat**
> GetAPIYAMLFormat(ctx, optional)
Get YAML

Get API in YAML format

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
 **optional** | ***GetAPIYAMLFormatOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a GetAPIYAMLFormatOpts struct

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xEmbarcaderoApplicationId** | **optional.String**|  | 
 **xEmbarcaderoAppSecret** | **optional.String**|  | 
 **xEmbarcaderoMasterSecret** | **optional.String**|  | 

### Return type

 (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **GetAPIYAMLFormatEndPoint**
> GetAPIYAMLFormatEndPoint(ctx, item, optional)
Get API EndPoint

 |      Used to retrieve an EndPoint for the API EndPoints.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **item** | **string**| Path Segment to an EndPoint | 
 **optional** | ***GetAPIYAMLFormatEndPointOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a GetAPIYAMLFormatEndPointOpts struct

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **xEmbarcaderoApplicationId** | **optional.String**|  | 
 **xEmbarcaderoAppSecret** | **optional.String**|  | 
 **xEmbarcaderoMasterSecret** | **optional.String**|  | 

### Return type

 (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

