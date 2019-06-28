# VERSION_API

All URIs are relative to *http://localhost:8080*

Feature | HTTP request | Description
------------- | ------------- | -------------
[**version**](VERSION_API.md#version) | **Get** /version | Get version


# **version**
> version (x__embarcadero__application__id:  detachable STRING_32 ; x__embarcadero__app__secret:  detachable STRING_32 ; x__embarcadero__master__secret:  detachable STRING_32 ): detachable VERSION_OBJECT
	

Get version

 |      Used to retrieve the `Version` of the EMS Server.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x__embarcadero__application__id** | **STRING_32**|  | [optional] 
 **x__embarcadero__app__secret** | **STRING_32**|  | [optional] 
 **x__embarcadero__master__secret** | **STRING_32**|  | [optional] 

### Return type

[**VERSION_OBJECT**](versionObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

