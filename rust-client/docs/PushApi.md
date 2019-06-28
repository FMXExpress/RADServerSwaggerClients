# \PushApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**send**](PushApi.md#send) | **Post** /push | Send Push


# **send**
> send(body, optional)
Send Push

Used to send a push notification message to a registered device

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **body** | [**PushObject**](PushObject.md)| Object containing the Push Message data structure | 
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PushObject**](PushObject.md)| Object containing the Push Message data structure | 
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

