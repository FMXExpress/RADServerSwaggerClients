# \EdgeModulesApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetModule**](EdgeModulesApi.md#GetModule) | **Get** /edgemodules/{mname} | Get Module
[**GetModuleResource**](EdgeModulesApi.md#GetModuleResource) | **Get** /edgemodules/{mname}/resources/{name} | Get EdgeModule Resource
[**GetModuleResources**](EdgeModulesApi.md#GetModuleResources) | **Get** /edgemodules/{mname}/resources | Get EdgeModule Resources
[**GetModules**](EdgeModulesApi.md#GetModules) | **Get** /edgemodules | Get Module
[**GetModulesFields**](EdgeModulesApi.md#GetModulesFields) | **Get** /edgemodules/fields | Get Fields
[**GetResources**](EdgeModulesApi.md#GetResources) | **Get** /edgemodules/resources | Get EdgeModules Resources
[**GetResourcesFields**](EdgeModulesApi.md#GetResourcesFields) | **Get** /edgemodules/resources/fields | Get Resource Fields
[**RegisterModule**](EdgeModulesApi.md#RegisterModule) | **Post** /edgemodules | Add Module
[**RegisterModuleResource**](EdgeModulesApi.md#RegisterModuleResource) | **Post** /edgemodules/{mname}/resources | Add Module Resource
[**UnregisterModule**](EdgeModulesApi.md#UnregisterModule) | **Delete** /edgemodules/{mname} | Delete Module
[**UnregisterModuleResource**](EdgeModulesApi.md#UnregisterModuleResource) | **Delete** /edgemodules/{mname}/resources/{name} | Delete Module Resource
[**UpdateModule**](EdgeModulesApi.md#UpdateModule) | **Put** /edgemodules/{mname} | Update Module
[**UpdateModuleResource**](EdgeModulesApi.md#UpdateModuleResource) | **Put** /edgemodules/{mname}/resources/{name} | Update Module Resource


# **GetModule**
> EdgeModuleObject GetModule(ctx, mname, optional)
Get Module

 |      Used to retrieve all data from `EdgeModule`.      Optional query param of **skip, limit, order, where** determines       size of returned array, filtered and order by.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **mname** | **string**| Is the unique EMS EdgeModule identifier | 
 **optional** | ***GetModuleOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a GetModuleOpts struct

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **xEmbarcaderoApplicationId** | **optional.String**|  | 
 **xEmbarcaderoAppSecret** | **optional.String**|  | 
 **xEmbarcaderoMasterSecret** | **optional.String**|  | 

### Return type

[**EdgeModuleObject**](edgeModuleObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **GetModuleResource**
> EdgeModuleResourceObject GetModuleResource(ctx, mname, name, optional)
Get EdgeModule Resource

 |      Used to retrieve all data from a resource of an EdgeModule. **mname** is the unique EMS EdgeModule identifier in the EMS database. **resourcename** is the name of the resource.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **mname** | **string**| Is the unique EMS EdgeModule identifier | 
  **name** | **string**| Is the unique EMS EdgeModule Resource name | 
 **optional** | ***GetModuleResourceOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a GetModuleResourceOpts struct

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


 **xEmbarcaderoApplicationId** | **optional.String**|  | 
 **xEmbarcaderoAppSecret** | **optional.String**|  | 
 **xEmbarcaderoMasterSecret** | **optional.String**|  | 

### Return type

[**EdgeModuleResourceObject**](edgeModuleResourceObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **GetModuleResources**
> []EdgeModuleResourceObject GetModuleResources(ctx, mname, optional)
Get EdgeModule Resources

 |      Used to retrieve all data from the resources of an EdgeModule.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **mname** | **string**| Is the unique EMS EdgeModule identifier | 
 **optional** | ***GetModuleResourcesOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a GetModuleResourcesOpts struct

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **xEmbarcaderoApplicationId** | **optional.String**|  | 
 **xEmbarcaderoAppSecret** | **optional.String**|  | 
 **xEmbarcaderoMasterSecret** | **optional.String**|  | 

### Return type

[**[]EdgeModuleResourceObject**](edgeModuleResourceObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **GetModules**
> []EdgeModuleObject GetModules(ctx, optional)
Get Module

 |      Used to retrieve all data from `EdgeModule`.      Optional query param of **skip, limit, order, where** determines       size of returned array, filtered and order by.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
 **optional** | ***GetModulesOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a GetModulesOpts struct

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xEmbarcaderoApplicationId** | **optional.String**|  | 
 **xEmbarcaderoAppSecret** | **optional.String**|  | 
 **xEmbarcaderoMasterSecret** | **optional.String**|  | 

### Return type

[**[]EdgeModuleObject**](edgeModuleObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **GetModulesFields**
> FieldsEdgeModuleObject GetModulesFields(ctx, optional)
Get Fields

 |      Used to retrieve all the `field names` of the EMS EdgeModule (including the custom fields).

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
 **optional** | ***GetModulesFieldsOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a GetModulesFieldsOpts struct

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xEmbarcaderoApplicationId** | **optional.String**|  | 
 **xEmbarcaderoAppSecret** | **optional.String**|  | 
 **xEmbarcaderoMasterSecret** | **optional.String**|  | 

### Return type

[**FieldsEdgeModuleObject**](fieldsEdgeModuleObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **GetResources**
> []EdgeModuleResourceObject GetResources(ctx, optional)
Get EdgeModules Resources

 |      Used to retrieve all data from the resources of all EdgeModules.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
 **optional** | ***GetResourcesOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a GetResourcesOpts struct

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xEmbarcaderoApplicationId** | **optional.String**|  | 
 **xEmbarcaderoAppSecret** | **optional.String**|  | 
 **xEmbarcaderoMasterSecret** | **optional.String**|  | 

### Return type

[**[]EdgeModuleResourceObject**](edgeModuleResourceObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **GetResourcesFields**
> FieldsEdgeModuleObject GetResourcesFields(ctx, optional)
Get Resource Fields

 |      Used to retrieve the `field names` of all the resources of the EMS EdgeModule (including the custom fields).

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
 **optional** | ***GetResourcesFieldsOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a GetResourcesFieldsOpts struct

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xEmbarcaderoApplicationId** | **optional.String**|  | 
 **xEmbarcaderoAppSecret** | **optional.String**|  | 
 **xEmbarcaderoMasterSecret** | **optional.String**|  | 

### Return type

[**FieldsEdgeModuleObject**](fieldsEdgeModuleObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **RegisterModule**
> EdgeModuleAddedObject RegisterModule(ctx, body, optional)
Add Module

 |      Used to add a new `EdgeModule` object to the EMS database.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **body** | [**EdgeModuleAddObject**](EdgeModuleAddObject.md)| EdgeModule object to add. protocolprops example string {\\\&quot;port\\\&quot;:8082,\\\&quot;host\\\&quot;:\\\&quot;10.150.40.52\\\&quot;} | 
 **optional** | ***RegisterModuleOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a RegisterModuleOpts struct

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **xEmbarcaderoApplicationId** | **optional.String**|  | 
 **xEmbarcaderoAppSecret** | **optional.String**|  | 
 **xEmbarcaderoMasterSecret** | **optional.String**|  | 

### Return type

[**EdgeModuleAddedObject**](edgeModuleAddedObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **RegisterModuleResource**
> EdgeModuleResourceAddedObject RegisterModuleResource(ctx, mname, body, optional)
Add Module Resource

 |      Used to register a new resource from an EMS EdgeModule. **mname** is the unique EMS EdgeModule identifier in the EMS database.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **mname** | **string**| Is the unique EMS EdgeModule identifier | 
  **body** | [**EdgeModuleResourceAddObject**](EdgeModuleResourceAddObject.md)| EdgModule Resource add object. protocolprops string example {\\\&quot;port\\\&quot;:8082,\\\&quot;host\\\&quot;:\\\&quot;10.150.40.52\\\&quot;} | 
 **optional** | ***RegisterModuleResourceOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a RegisterModuleResourceOpts struct

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


 **xEmbarcaderoApplicationId** | **optional.String**|  | 
 **xEmbarcaderoAppSecret** | **optional.String**|  | 
 **xEmbarcaderoMasterSecret** | **optional.String**|  | 

### Return type

[**EdgeModuleResourceAddedObject**](edgeModuleResourceAddedObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **UnregisterModule**
> UnregisterModule(ctx, mname, optional)
Delete Module

 |      Used to delete an `EdgeModule Resource`. **mname** is the unique EMS EdgeModule identifier (MID) in the EMS database. **resourcename** is the name of the resource.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **mname** | **string**| Is the unique EMS EdgeModule identifier | 
 **optional** | ***UnregisterModuleOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a UnregisterModuleOpts struct

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

# **UnregisterModuleResource**
> UnregisterModuleResource(ctx, mname, name, optional)
Delete Module Resource

 |      Used to delete an `EdgeModule Resource`. **mname** is the unique EMS EdgeModule identifier (MID) in the EMS database. **resourcename** is the name of the resource.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **mname** | **string**| Is the unique EMS EdgeModule identifier | 
  **name** | **string**| Is the unique EMS EdgeModule Resource name | 
 **optional** | ***UnregisterModuleResourceOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a UnregisterModuleResourceOpts struct

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

# **UpdateModule**
> EdgeModuleUpdatedObject UpdateModule(ctx, mname, body, optional)
Update Module

 |      Used to update an `EdgeModule`. **mname** is the unique EMS EdgeModule identifier (MID) in the EMS database.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **mname** | **string**| Is the unique EMS EdgeModule identifier | 
  **body** | [**EdgeModuleUpdateObject**](EdgeModuleUpdateObject.md)| EdgModule Resource add object. protocolprops string example {\\\&quot;port\\\&quot;:8082,\\\&quot;host\\\&quot;:\\\&quot;10.150.40.52\\\&quot;} | 
 **optional** | ***UpdateModuleOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a UpdateModuleOpts struct

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


 **xEmbarcaderoApplicationId** | **optional.String**|  | 
 **xEmbarcaderoAppSecret** | **optional.String**|  | 
 **xEmbarcaderoMasterSecret** | **optional.String**|  | 

### Return type

[**EdgeModuleUpdatedObject**](edgeModuleUpdatedObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **UpdateModuleResource**
> EdgeModuleResourceUpdatedObject UpdateModuleResource(ctx, mname, name, body, optional)
Update Module Resource

 |      Used to update an `EdgeModule`. **mname** is the unique EMS EdgeModule identifier (MID) in the EMS database.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **mname** | **string**| Is the unique EMS EdgeModule identifier | 
  **name** | **string**| Is the unique EMS EdgeModule Resource name | 
  **body** | [**EdgeModuleResourceUpdateObject**](EdgeModuleResourceUpdateObject.md)| EdgModule Resource add object. protocolprops string example {\\\&quot;port\\\&quot;:8082,\\\&quot;host\\\&quot;:\\\&quot;10.150.40.52\\\&quot;} | 
 **optional** | ***UpdateModuleResourceOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a UpdateModuleResourceOpts struct

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



 **xEmbarcaderoApplicationId** | **optional.String**|  | 
 **xEmbarcaderoAppSecret** | **optional.String**|  | 
 **xEmbarcaderoMasterSecret** | **optional.String**|  | 

### Return type

[**EdgeModuleResourceUpdatedObject**](edgeModuleResourceUpdatedObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

