# \VersionApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetVersion**](VersionApi.md#GetVersion) | **Get** /version | Get version


# **GetVersion**
> VersionObject GetVersion(ctx, optional)
Get version

 |      Used to retrieve the `Version` of the EMS Server.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
 **optional** | ***GetVersionOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a GetVersionOpts struct

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xEmbarcaderoApplicationId** | **optional.String**|  | 
 **xEmbarcaderoAppSecret** | **optional.String**|  | 
 **xEmbarcaderoMasterSecret** | **optional.String**|  | 

### Return type

[**VersionObject**](versionObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

