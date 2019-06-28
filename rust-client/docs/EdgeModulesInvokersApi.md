# \EdgeModulesInvokersApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_resource_endpoint**](EdgeModulesInvokersApi.md#delete_resource_endpoint) | **Delete** /edgemodules/{mname}/{rname} | Invoke Resource Delete Method
[**delete_resource_endpoint_item**](EdgeModulesInvokersApi.md#delete_resource_endpoint_item) | **Delete** /edgemodules/{mname}/{rname}/{wildcard} | Invoke Resource/_* Delete Method
[**get_resource_endpoint**](EdgeModulesInvokersApi.md#get_resource_endpoint) | **Get** /edgemodules/{mname}/{rname} | Invoke Resource Get Method
[**get_resource_endpoint_item**](EdgeModulesInvokersApi.md#get_resource_endpoint_item) | **Get** /edgemodules/{mname}/{rname}/{wildcard} | Invoke Resource/_* Get Method
[**patch_resource_endpoint**](EdgeModulesInvokersApi.md#patch_resource_endpoint) | **Patch** /edgemodules/{mname}/{rname} | Invoke Resource Patch Method
[**patch_resource_endpoint_item**](EdgeModulesInvokersApi.md#patch_resource_endpoint_item) | **Patch** /edgemodules/{mname}/{rname}/{wildcard} | Invoke Resource/_* Patch Method
[**post_resource_endpoint**](EdgeModulesInvokersApi.md#post_resource_endpoint) | **Post** /edgemodules/{mname}/{rname} | Invoke Resource Post Method
[**post_resource_endpoint_item**](EdgeModulesInvokersApi.md#post_resource_endpoint_item) | **Post** /edgemodules/{mname}/{rname}/{wildcard} | Invoke Resource/_* Post Method
[**put_resource_endpoint**](EdgeModulesInvokersApi.md#put_resource_endpoint) | **Put** /edgemodules/{mname}/{rname} | Invoke Resource Put Method
[**put_resource_endpoint_item**](EdgeModulesInvokersApi.md#put_resource_endpoint_item) | **Put** /edgemodules/{mname}/{rname}/{wildcard} | Invoke Resource/_* Put Method


# **delete_resource_endpoint**
> delete_resource_endpoint(mname, rname, optional)
Invoke Resource Delete Method

Used to invoke the DELETE method of the resource from an existing EMS EdgeModule.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **mname** | **String**| Is the EMS EdgeModule name | 
  **rname** | **String**| Is the unique EMS EdgeModule Resource name | 
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **String**| Is the EMS EdgeModule name | 
 **rname** | **String**| Is the unique EMS EdgeModule Resource name | 
 **x_embarcadero_application_id** | **String**|  | 
 **x_embarcadero_app_secret** | **String**|  | 
 **x_embarcadero_master_secret** | **String**|  | 

### Return type

 (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_resource_endpoint_item**
> delete_resource_endpoint_item(mname, rname, wildcard, optional)
Invoke Resource/_* Delete Method

Used to invoke the DELETE method of the resource from an existing EMS EdgeModule.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **mname** | **String**| Is the EMS EdgeModule name | 
  **rname** | **String**| Is the unique EMS EdgeModule Resource name | 
  **wildcard** | **String**| Is the Wild card part of the URL | 
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **String**| Is the EMS EdgeModule name | 
 **rname** | **String**| Is the unique EMS EdgeModule Resource name | 
 **wildcard** | **String**| Is the Wild card part of the URL | 
 **x_embarcadero_application_id** | **String**|  | 
 **x_embarcadero_app_secret** | **String**|  | 
 **x_embarcadero_master_secret** | **String**|  | 

### Return type

 (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_resource_endpoint**
> get_resource_endpoint(mname, rname, optional)
Invoke Resource Get Method

Used to invoke the GET method of the resource from an existing EMS EdgeModule.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **mname** | **String**| Is the EMS EdgeModule name | 
  **rname** | **String**| Is the unique EMS EdgeModule Resource name | 
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **String**| Is the EMS EdgeModule name | 
 **rname** | **String**| Is the unique EMS EdgeModule Resource name | 
 **x_embarcadero_application_id** | **String**|  | 
 **x_embarcadero_app_secret** | **String**|  | 
 **x_embarcadero_master_secret** | **String**|  | 

### Return type

 (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_resource_endpoint_item**
> get_resource_endpoint_item(mname, rname, wildcard, optional)
Invoke Resource/_* Get Method

Used to invoke the GET method of the resource from an existing EMS EdgeModule.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **mname** | **String**| Is the EMS EdgeModule name | 
  **rname** | **String**| Is the unique EMS EdgeModule Resource name | 
  **wildcard** | **String**| Is the Wild card part of the URL | 
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **String**| Is the EMS EdgeModule name | 
 **rname** | **String**| Is the unique EMS EdgeModule Resource name | 
 **wildcard** | **String**| Is the Wild card part of the URL | 
 **x_embarcadero_application_id** | **String**|  | 
 **x_embarcadero_app_secret** | **String**|  | 
 **x_embarcadero_master_secret** | **String**|  | 

### Return type

 (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patch_resource_endpoint**
> patch_resource_endpoint(mname, rname, body, optional)
Invoke Resource Patch Method

Used to invoke the PATCH method of the resource from an existing EMS EdgeModule.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **mname** | **String**| Is the EMS EdgeModule name | 
  **rname** | **String**| Is the unique EMS EdgeModule Resource name | 
  **body** | [**Value**](Value.md)| Body Object | 
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **String**| Is the EMS EdgeModule name | 
 **rname** | **String**| Is the unique EMS EdgeModule Resource name | 
 **body** | [**Value**](Value.md)| Body Object | 
 **x_embarcadero_application_id** | **String**|  | 
 **x_embarcadero_app_secret** | **String**|  | 
 **x_embarcadero_master_secret** | **String**|  | 

### Return type

 (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patch_resource_endpoint_item**
> patch_resource_endpoint_item(mname, rname, wildcard, body, optional)
Invoke Resource/_* Patch Method

Used to invoke the PATCH method of the resource from an existing EMS EdgeModule.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **mname** | **String**| Is the EMS EdgeModule name | 
  **rname** | **String**| Is the unique EMS EdgeModule Resource name | 
  **wildcard** | **String**| Is the Wild card part of the URL | 
  **body** | [**Value**](Value.md)| Body Object | 
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **String**| Is the EMS EdgeModule name | 
 **rname** | **String**| Is the unique EMS EdgeModule Resource name | 
 **wildcard** | **String**| Is the Wild card part of the URL | 
 **body** | [**Value**](Value.md)| Body Object | 
 **x_embarcadero_application_id** | **String**|  | 
 **x_embarcadero_app_secret** | **String**|  | 
 **x_embarcadero_master_secret** | **String**|  | 

### Return type

 (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_resource_endpoint**
> post_resource_endpoint(mname, rname, body, optional)
Invoke Resource Post Method

Used to invoke the POST method of the resource from an existing EMS EdgeModule.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **mname** | **String**| Is the EMS EdgeModule name | 
  **rname** | **String**| Is the unique EMS EdgeModule Resource name | 
  **body** | [**Value**](Value.md)| Body Object | 
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **String**| Is the EMS EdgeModule name | 
 **rname** | **String**| Is the unique EMS EdgeModule Resource name | 
 **body** | [**Value**](Value.md)| Body Object | 
 **x_embarcadero_application_id** | **String**|  | 
 **x_embarcadero_app_secret** | **String**|  | 
 **x_embarcadero_master_secret** | **String**|  | 

### Return type

 (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_resource_endpoint_item**
> post_resource_endpoint_item(mname, rname, wildcard, body, optional)
Invoke Resource/_* Post Method

Used to invoke the POST method of the resource from an existing EMS EdgeModule.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **mname** | **String**| Is the EMS EdgeModule name | 
  **rname** | **String**| Is the unique EMS EdgeModule Resource name | 
  **wildcard** | **String**| Is the Wild card part of the URL | 
  **body** | [**Value**](Value.md)| Body Object | 
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **String**| Is the EMS EdgeModule name | 
 **rname** | **String**| Is the unique EMS EdgeModule Resource name | 
 **wildcard** | **String**| Is the Wild card part of the URL | 
 **body** | [**Value**](Value.md)| Body Object | 
 **x_embarcadero_application_id** | **String**|  | 
 **x_embarcadero_app_secret** | **String**|  | 
 **x_embarcadero_master_secret** | **String**|  | 

### Return type

 (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **put_resource_endpoint**
> put_resource_endpoint(mname, rname, body, optional)
Invoke Resource Put Method

Used to invoke the PUT method of the resource from an existing EMS EdgeModule.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **mname** | **String**| Is the EMS EdgeModule name | 
  **rname** | **String**| Is the unique EMS EdgeModule Resource name | 
  **body** | [**Value**](Value.md)| Body Object | 
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **String**| Is the EMS EdgeModule name | 
 **rname** | **String**| Is the unique EMS EdgeModule Resource name | 
 **body** | [**Value**](Value.md)| Body Object | 
 **x_embarcadero_application_id** | **String**|  | 
 **x_embarcadero_app_secret** | **String**|  | 
 **x_embarcadero_master_secret** | **String**|  | 

### Return type

 (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **put_resource_endpoint_item**
> put_resource_endpoint_item(mname, rname, wildcard, body, optional)
Invoke Resource/_* Put Method

Used to invoke the PUT method of the resource from an existing EMS EdgeModule.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **mname** | **String**| Is the EMS EdgeModule name | 
  **rname** | **String**| Is the unique EMS EdgeModule Resource name | 
  **wildcard** | **String**| Is the Wild card part of the URL | 
  **body** | [**Value**](Value.md)| Body Object | 
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **String**| Is the EMS EdgeModule name | 
 **rname** | **String**| Is the unique EMS EdgeModule Resource name | 
 **wildcard** | **String**| Is the Wild card part of the URL | 
 **body** | [**Value**](Value.md)| Body Object | 
 **x_embarcadero_application_id** | **String**|  | 
 **x_embarcadero_app_secret** | **String**|  | 
 **x_embarcadero_master_secret** | **String**|  | 

### Return type

 (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

