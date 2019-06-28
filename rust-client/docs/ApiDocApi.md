# \ApiDocApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**a_pi**](ApiDocApi.md#a_pi) | **Get** /api | Get API EndPoints
[**get_apijson_format**](ApiDocApi.md#get_apijson_format) | **Get** /api/apidoc.json | Get JSON
[**get_apiyaml_format**](ApiDocApi.md#get_apiyaml_format) | **Get** /api/apidoc.yaml | Get YAML
[**get_apiyaml_format_end_point**](ApiDocApi.md#get_apiyaml_format_end_point) | **Get** /api/{item}/apidoc.yaml | Get API EndPoint


# **a_pi**
> a_pi(optional)
Get API EndPoints

 |      Used to retrieve all the API EndPoints.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
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

# **get_apijson_format**
> get_apijson_format(optional)
Get JSON

Get API in JSON format

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
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

# **get_apiyaml_format**
> get_apiyaml_format(optional)
Get YAML

Get API in YAML format

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
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

# **get_apiyaml_format_end_point**
> get_apiyaml_format_end_point(item, optional)
Get API EndPoint

 |      Used to retrieve an EndPoint for the API EndPoints.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **item** | **String**| Path Segment to an EndPoint | 
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **item** | **String**| Path Segment to an EndPoint | 
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

