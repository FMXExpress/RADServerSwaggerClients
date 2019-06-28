# \EdgeModulesInvokersApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**DeleteResourceEndpoint**](EdgeModulesInvokersApi.md#DeleteResourceEndpoint) | **Delete** /edgemodules/{mname}/{rname} | Invoke Resource Delete Method
[**DeleteResourceEndpointItem**](EdgeModulesInvokersApi.md#DeleteResourceEndpointItem) | **Delete** /edgemodules/{mname}/{rname}/{wildcard} | Invoke Resource/_* Delete Method
[**GetResourceEndpoint**](EdgeModulesInvokersApi.md#GetResourceEndpoint) | **Get** /edgemodules/{mname}/{rname} | Invoke Resource Get Method
[**GetResourceEndpointItem**](EdgeModulesInvokersApi.md#GetResourceEndpointItem) | **Get** /edgemodules/{mname}/{rname}/{wildcard} | Invoke Resource/_* Get Method
[**PatchResourceEndpoint**](EdgeModulesInvokersApi.md#PatchResourceEndpoint) | **Patch** /edgemodules/{mname}/{rname} | Invoke Resource Patch Method
[**PatchResourceEndpointItem**](EdgeModulesInvokersApi.md#PatchResourceEndpointItem) | **Patch** /edgemodules/{mname}/{rname}/{wildcard} | Invoke Resource/_* Patch Method
[**PostResourceEndpoint**](EdgeModulesInvokersApi.md#PostResourceEndpoint) | **Post** /edgemodules/{mname}/{rname} | Invoke Resource Post Method
[**PostResourceEndpointItem**](EdgeModulesInvokersApi.md#PostResourceEndpointItem) | **Post** /edgemodules/{mname}/{rname}/{wildcard} | Invoke Resource/_* Post Method
[**PutResourceEndpoint**](EdgeModulesInvokersApi.md#PutResourceEndpoint) | **Put** /edgemodules/{mname}/{rname} | Invoke Resource Put Method
[**PutResourceEndpointItem**](EdgeModulesInvokersApi.md#PutResourceEndpointItem) | **Put** /edgemodules/{mname}/{rname}/{wildcard} | Invoke Resource/_* Put Method


# **DeleteResourceEndpoint**
> DeleteResourceEndpoint(ctx, mname, rname, optional)
Invoke Resource Delete Method

Used to invoke the DELETE method of the resource from an existing EMS EdgeModule.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **mname** | **string**| Is the EMS EdgeModule name | 
  **rname** | **string**| Is the unique EMS EdgeModule Resource name | 
 **optional** | ***DeleteResourceEndpointOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a DeleteResourceEndpointOpts struct

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

# **DeleteResourceEndpointItem**
> DeleteResourceEndpointItem(ctx, mname, rname, wildcard, optional)
Invoke Resource/_* Delete Method

Used to invoke the DELETE method of the resource from an existing EMS EdgeModule.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **mname** | **string**| Is the EMS EdgeModule name | 
  **rname** | **string**| Is the unique EMS EdgeModule Resource name | 
  **wildcard** | **string**| Is the Wild card part of the URL | 
 **optional** | ***DeleteResourceEndpointItemOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a DeleteResourceEndpointItemOpts struct

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

# **GetResourceEndpoint**
> GetResourceEndpoint(ctx, mname, rname, optional)
Invoke Resource Get Method

Used to invoke the GET method of the resource from an existing EMS EdgeModule.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **mname** | **string**| Is the EMS EdgeModule name | 
  **rname** | **string**| Is the unique EMS EdgeModule Resource name | 
 **optional** | ***GetResourceEndpointOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a GetResourceEndpointOpts struct

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

# **GetResourceEndpointItem**
> GetResourceEndpointItem(ctx, mname, rname, wildcard, optional)
Invoke Resource/_* Get Method

Used to invoke the GET method of the resource from an existing EMS EdgeModule.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **mname** | **string**| Is the EMS EdgeModule name | 
  **rname** | **string**| Is the unique EMS EdgeModule Resource name | 
  **wildcard** | **string**| Is the Wild card part of the URL | 
 **optional** | ***GetResourceEndpointItemOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a GetResourceEndpointItemOpts struct

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

# **PatchResourceEndpoint**
> PatchResourceEndpoint(ctx, mname, rname, body, optional)
Invoke Resource Patch Method

Used to invoke the PATCH method of the resource from an existing EMS EdgeModule.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **mname** | **string**| Is the EMS EdgeModule name | 
  **rname** | **string**| Is the unique EMS EdgeModule Resource name | 
  **body** | [**interface{}**](interface{}.md)| Body Object | 
 **optional** | ***PatchResourceEndpointOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a PatchResourceEndpointOpts struct

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

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **PatchResourceEndpointItem**
> PatchResourceEndpointItem(ctx, mname, rname, wildcard, body, optional)
Invoke Resource/_* Patch Method

Used to invoke the PATCH method of the resource from an existing EMS EdgeModule.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **mname** | **string**| Is the EMS EdgeModule name | 
  **rname** | **string**| Is the unique EMS EdgeModule Resource name | 
  **wildcard** | **string**| Is the Wild card part of the URL | 
  **body** | [**interface{}**](interface{}.md)| Body Object | 
 **optional** | ***PatchResourceEndpointItemOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a PatchResourceEndpointItemOpts struct

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

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **PostResourceEndpoint**
> PostResourceEndpoint(ctx, mname, rname, body, optional)
Invoke Resource Post Method

Used to invoke the POST method of the resource from an existing EMS EdgeModule.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **mname** | **string**| Is the EMS EdgeModule name | 
  **rname** | **string**| Is the unique EMS EdgeModule Resource name | 
  **body** | [**interface{}**](interface{}.md)| Body Object | 
 **optional** | ***PostResourceEndpointOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a PostResourceEndpointOpts struct

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

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **PostResourceEndpointItem**
> PostResourceEndpointItem(ctx, mname, rname, wildcard, body, optional)
Invoke Resource/_* Post Method

Used to invoke the POST method of the resource from an existing EMS EdgeModule.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **mname** | **string**| Is the EMS EdgeModule name | 
  **rname** | **string**| Is the unique EMS EdgeModule Resource name | 
  **wildcard** | **string**| Is the Wild card part of the URL | 
  **body** | [**interface{}**](interface{}.md)| Body Object | 
 **optional** | ***PostResourceEndpointItemOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a PostResourceEndpointItemOpts struct

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

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **PutResourceEndpoint**
> PutResourceEndpoint(ctx, mname, rname, body, optional)
Invoke Resource Put Method

Used to invoke the PUT method of the resource from an existing EMS EdgeModule.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **mname** | **string**| Is the EMS EdgeModule name | 
  **rname** | **string**| Is the unique EMS EdgeModule Resource name | 
  **body** | [**interface{}**](interface{}.md)| Body Object | 
 **optional** | ***PutResourceEndpointOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a PutResourceEndpointOpts struct

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

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **PutResourceEndpointItem**
> PutResourceEndpointItem(ctx, mname, rname, wildcard, body, optional)
Invoke Resource/_* Put Method

Used to invoke the PUT method of the resource from an existing EMS EdgeModule.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **mname** | **string**| Is the EMS EdgeModule name | 
  **rname** | **string**| Is the unique EMS EdgeModule Resource name | 
  **wildcard** | **string**| Is the Wild card part of the URL | 
  **body** | [**interface{}**](interface{}.md)| Body Object | 
 **optional** | ***PutResourceEndpointItemOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a PutResourceEndpointItemOpts struct

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

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

