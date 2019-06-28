# PUSH_API

All URIs are relative to *http://localhost:8080*

Feature | HTTP request | Description
------------- | ------------- | -------------
[**send**](PUSH_API.md#send) | **Post** /push | Send Push


# **send**
> send (body: PUSH_OBJECT ; x__embarcadero__application__id:  detachable STRING_32 ; x__embarcadero__app__secret:  detachable STRING_32 ; x__embarcadero__master__secret:  detachable STRING_32 )
	

Send Push

Used to send a push notification message to a registered device


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PUSH_OBJECT**](PUSH_OBJECT.md)| Object containing the Push Message data structure | 
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

