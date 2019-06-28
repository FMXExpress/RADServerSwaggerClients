# \PushApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Send**](PushApi.md#Send) | **Post** /push | Send Push


# **Send**
> Send(ctx, body, optional)
Send Push

Used to send a push notification message to a registered device

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **body** | [**PushObject**](PushObject.md)| Object containing the Push Message data structure | 
 **optional** | ***SendOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a SendOpts struct

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

