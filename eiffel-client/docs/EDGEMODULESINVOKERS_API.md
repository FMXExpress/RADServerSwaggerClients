# EDGEMODULESINVOKERS_API

All URIs are relative to *http://localhost:8080*

Feature | HTTP request | Description
------------- | ------------- | -------------
[**delete_resource_endpoint**](EDGEMODULESINVOKERS_API.md#delete_resource_endpoint) | **Delete** /edgemodules/{mname}/{rname} | Invoke Resource Delete Method
[**delete_resource_endpoint_item**](EDGEMODULESINVOKERS_API.md#delete_resource_endpoint_item) | **Delete** /edgemodules/{mname}/{rname}/{wildcard} | Invoke Resource/_* Delete Method
[**patch_resource_endpoint**](EDGEMODULESINVOKERS_API.md#patch_resource_endpoint) | **Patch** /edgemodules/{mname}/{rname} | Invoke Resource Patch Method
[**patch_resource_endpoint_item**](EDGEMODULESINVOKERS_API.md#patch_resource_endpoint_item) | **Patch** /edgemodules/{mname}/{rname}/{wildcard} | Invoke Resource/_* Patch Method
[**post_resource_endpoint**](EDGEMODULESINVOKERS_API.md#post_resource_endpoint) | **Post** /edgemodules/{mname}/{rname} | Invoke Resource Post Method
[**post_resource_endpoint_item**](EDGEMODULESINVOKERS_API.md#post_resource_endpoint_item) | **Post** /edgemodules/{mname}/{rname}/{wildcard} | Invoke Resource/_* Post Method
[**put_resource_endpoint**](EDGEMODULESINVOKERS_API.md#put_resource_endpoint) | **Put** /edgemodules/{mname}/{rname} | Invoke Resource Put Method
[**put_resource_endpoint_item**](EDGEMODULESINVOKERS_API.md#put_resource_endpoint_item) | **Put** /edgemodules/{mname}/{rname}/{wildcard} | Invoke Resource/_* Put Method
[**resource_endpoint**](EDGEMODULESINVOKERS_API.md#resource_endpoint) | **Get** /edgemodules/{mname}/{rname} | Invoke Resource Get Method
[**resource_endpoint_item**](EDGEMODULESINVOKERS_API.md#resource_endpoint_item) | **Get** /edgemodules/{mname}/{rname}/{wildcard} | Invoke Resource/_* Get Method


# **delete_resource_endpoint**
> delete_resource_endpoint (mname: STRING_32 ; rname: STRING_32 ; x__embarcadero__application__id:  detachable STRING_32 ; x__embarcadero__app__secret:  detachable STRING_32 ; x__embarcadero__master__secret:  detachable STRING_32 )
	

Invoke Resource Delete Method

Used to invoke the DELETE method of the resource from an existing EMS EdgeModule.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **STRING_32**| Is the EMS EdgeModule name | 
 **rname** | **STRING_32**| Is the unique EMS EdgeModule Resource name | 
 **x__embarcadero__application__id** | **STRING_32**|  | [optional] 
 **x__embarcadero__app__secret** | **STRING_32**|  | [optional] 
 **x__embarcadero__master__secret** | **STRING_32**|  | [optional] 

### Return type

{empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_resource_endpoint_item**
> delete_resource_endpoint_item (mname: STRING_32 ; rname: STRING_32 ; wildcard: STRING_32 ; x__embarcadero__application__id:  detachable STRING_32 ; x__embarcadero__app__secret:  detachable STRING_32 ; x__embarcadero__master__secret:  detachable STRING_32 )
	

Invoke Resource/_* Delete Method

Used to invoke the DELETE method of the resource from an existing EMS EdgeModule.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **STRING_32**| Is the EMS EdgeModule name | 
 **rname** | **STRING_32**| Is the unique EMS EdgeModule Resource name | 
 **wildcard** | **STRING_32**| Is the Wild card part of the URL | 
 **x__embarcadero__application__id** | **STRING_32**|  | [optional] 
 **x__embarcadero__app__secret** | **STRING_32**|  | [optional] 
 **x__embarcadero__master__secret** | **STRING_32**|  | [optional] 

### Return type

{empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patch_resource_endpoint**
> patch_resource_endpoint (mname: STRING_32 ; rname: STRING_32 ; body: ANY ; x__embarcadero__application__id:  detachable STRING_32 ; x__embarcadero__app__secret:  detachable STRING_32 ; x__embarcadero__master__secret:  detachable STRING_32 )
	

Invoke Resource Patch Method

Used to invoke the PATCH method of the resource from an existing EMS EdgeModule.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **STRING_32**| Is the EMS EdgeModule name | 
 **rname** | **STRING_32**| Is the unique EMS EdgeModule Resource name | 
 **body** | [**ANY**](ANY.md)| Body Object | 
 **x__embarcadero__application__id** | **STRING_32**|  | [optional] 
 **x__embarcadero__app__secret** | **STRING_32**|  | [optional] 
 **x__embarcadero__master__secret** | **STRING_32**|  | [optional] 

### Return type

{empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patch_resource_endpoint_item**
> patch_resource_endpoint_item (mname: STRING_32 ; rname: STRING_32 ; wildcard: STRING_32 ; body: ANY ; x__embarcadero__application__id:  detachable STRING_32 ; x__embarcadero__app__secret:  detachable STRING_32 ; x__embarcadero__master__secret:  detachable STRING_32 )
	

Invoke Resource/_* Patch Method

Used to invoke the PATCH method of the resource from an existing EMS EdgeModule.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **STRING_32**| Is the EMS EdgeModule name | 
 **rname** | **STRING_32**| Is the unique EMS EdgeModule Resource name | 
 **wildcard** | **STRING_32**| Is the Wild card part of the URL | 
 **body** | [**ANY**](ANY.md)| Body Object | 
 **x__embarcadero__application__id** | **STRING_32**|  | [optional] 
 **x__embarcadero__app__secret** | **STRING_32**|  | [optional] 
 **x__embarcadero__master__secret** | **STRING_32**|  | [optional] 

### Return type

{empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_resource_endpoint**
> post_resource_endpoint (mname: STRING_32 ; rname: STRING_32 ; body: ANY ; x__embarcadero__application__id:  detachable STRING_32 ; x__embarcadero__app__secret:  detachable STRING_32 ; x__embarcadero__master__secret:  detachable STRING_32 )
	

Invoke Resource Post Method

Used to invoke the POST method of the resource from an existing EMS EdgeModule.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **STRING_32**| Is the EMS EdgeModule name | 
 **rname** | **STRING_32**| Is the unique EMS EdgeModule Resource name | 
 **body** | [**ANY**](ANY.md)| Body Object | 
 **x__embarcadero__application__id** | **STRING_32**|  | [optional] 
 **x__embarcadero__app__secret** | **STRING_32**|  | [optional] 
 **x__embarcadero__master__secret** | **STRING_32**|  | [optional] 

### Return type

{empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_resource_endpoint_item**
> post_resource_endpoint_item (mname: STRING_32 ; rname: STRING_32 ; wildcard: STRING_32 ; body: ANY ; x__embarcadero__application__id:  detachable STRING_32 ; x__embarcadero__app__secret:  detachable STRING_32 ; x__embarcadero__master__secret:  detachable STRING_32 )
	

Invoke Resource/_* Post Method

Used to invoke the POST method of the resource from an existing EMS EdgeModule.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **STRING_32**| Is the EMS EdgeModule name | 
 **rname** | **STRING_32**| Is the unique EMS EdgeModule Resource name | 
 **wildcard** | **STRING_32**| Is the Wild card part of the URL | 
 **body** | [**ANY**](ANY.md)| Body Object | 
 **x__embarcadero__application__id** | **STRING_32**|  | [optional] 
 **x__embarcadero__app__secret** | **STRING_32**|  | [optional] 
 **x__embarcadero__master__secret** | **STRING_32**|  | [optional] 

### Return type

{empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **put_resource_endpoint**
> put_resource_endpoint (mname: STRING_32 ; rname: STRING_32 ; body: ANY ; x__embarcadero__application__id:  detachable STRING_32 ; x__embarcadero__app__secret:  detachable STRING_32 ; x__embarcadero__master__secret:  detachable STRING_32 )
	

Invoke Resource Put Method

Used to invoke the PUT method of the resource from an existing EMS EdgeModule.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **STRING_32**| Is the EMS EdgeModule name | 
 **rname** | **STRING_32**| Is the unique EMS EdgeModule Resource name | 
 **body** | [**ANY**](ANY.md)| Body Object | 
 **x__embarcadero__application__id** | **STRING_32**|  | [optional] 
 **x__embarcadero__app__secret** | **STRING_32**|  | [optional] 
 **x__embarcadero__master__secret** | **STRING_32**|  | [optional] 

### Return type

{empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **put_resource_endpoint_item**
> put_resource_endpoint_item (mname: STRING_32 ; rname: STRING_32 ; wildcard: STRING_32 ; body: ANY ; x__embarcadero__application__id:  detachable STRING_32 ; x__embarcadero__app__secret:  detachable STRING_32 ; x__embarcadero__master__secret:  detachable STRING_32 )
	

Invoke Resource/_* Put Method

Used to invoke the PUT method of the resource from an existing EMS EdgeModule.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **STRING_32**| Is the EMS EdgeModule name | 
 **rname** | **STRING_32**| Is the unique EMS EdgeModule Resource name | 
 **wildcard** | **STRING_32**| Is the Wild card part of the URL | 
 **body** | [**ANY**](ANY.md)| Body Object | 
 **x__embarcadero__application__id** | **STRING_32**|  | [optional] 
 **x__embarcadero__app__secret** | **STRING_32**|  | [optional] 
 **x__embarcadero__master__secret** | **STRING_32**|  | [optional] 

### Return type

{empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **resource_endpoint**
> resource_endpoint (mname: STRING_32 ; rname: STRING_32 ; x__embarcadero__application__id:  detachable STRING_32 ; x__embarcadero__app__secret:  detachable STRING_32 ; x__embarcadero__master__secret:  detachable STRING_32 )
	

Invoke Resource Get Method

Used to invoke the GET method of the resource from an existing EMS EdgeModule.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **STRING_32**| Is the EMS EdgeModule name | 
 **rname** | **STRING_32**| Is the unique EMS EdgeModule Resource name | 
 **x__embarcadero__application__id** | **STRING_32**|  | [optional] 
 **x__embarcadero__app__secret** | **STRING_32**|  | [optional] 
 **x__embarcadero__master__secret** | **STRING_32**|  | [optional] 

### Return type

{empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **resource_endpoint_item**
> resource_endpoint_item (mname: STRING_32 ; rname: STRING_32 ; wildcard: STRING_32 ; x__embarcadero__application__id:  detachable STRING_32 ; x__embarcadero__app__secret:  detachable STRING_32 ; x__embarcadero__master__secret:  detachable STRING_32 )
	

Invoke Resource/_* Get Method

Used to invoke the GET method of the resource from an existing EMS EdgeModule.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **STRING_32**| Is the EMS EdgeModule name | 
 **rname** | **STRING_32**| Is the unique EMS EdgeModule Resource name | 
 **wildcard** | **STRING_32**| Is the Wild card part of the URL | 
 **x__embarcadero__application__id** | **STRING_32**|  | [optional] 
 **x__embarcadero__app__secret** | **STRING_32**|  | [optional] 
 **x__embarcadero__master__secret** | **STRING_32**|  | [optional] 

### Return type

{empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

