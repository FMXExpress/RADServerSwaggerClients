# EDGEMODULES_API

All URIs are relative to *http://localhost:8080*

Feature | HTTP request | Description
------------- | ------------- | -------------
[**module**](EDGEMODULES_API.md#module) | **Get** /edgemodules/{mname} | Get Module
[**module_resource**](EDGEMODULES_API.md#module_resource) | **Get** /edgemodules/{mname}/resources/{name} | Get EdgeModule Resource
[**module_resources**](EDGEMODULES_API.md#module_resources) | **Get** /edgemodules/{mname}/resources | Get EdgeModule Resources
[**modules**](EDGEMODULES_API.md#modules) | **Get** /edgemodules | Get Module
[**modules_fields**](EDGEMODULES_API.md#modules_fields) | **Get** /edgemodules/fields | Get Fields
[**register_module**](EDGEMODULES_API.md#register_module) | **Post** /edgemodules | Add Module
[**register_module_resource**](EDGEMODULES_API.md#register_module_resource) | **Post** /edgemodules/{mname}/resources | Add Module Resource
[**resources**](EDGEMODULES_API.md#resources) | **Get** /edgemodules/resources | Get EdgeModules Resources
[**resources_fields**](EDGEMODULES_API.md#resources_fields) | **Get** /edgemodules/resources/fields | Get Resource Fields
[**unregister_module**](EDGEMODULES_API.md#unregister_module) | **Delete** /edgemodules/{mname} | Delete Module
[**unregister_module_resource**](EDGEMODULES_API.md#unregister_module_resource) | **Delete** /edgemodules/{mname}/resources/{name} | Delete Module Resource
[**update_module**](EDGEMODULES_API.md#update_module) | **Put** /edgemodules/{mname} | Update Module
[**update_module_resource**](EDGEMODULES_API.md#update_module_resource) | **Put** /edgemodules/{mname}/resources/{name} | Update Module Resource


# **module**
> module (mname: STRING_32 ; x__embarcadero__application__id:  detachable STRING_32 ; x__embarcadero__app__secret:  detachable STRING_32 ; x__embarcadero__master__secret:  detachable STRING_32 ): detachable EDGE_MODULE_OBJECT
	

Get Module

 |      Used to retrieve all data from `EdgeModule`.      Optional query param of **skip, limit, order, where** determines       size of returned array, filtered and order by.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **STRING_32**| Is the unique EMS EdgeModule identifier | 
 **x__embarcadero__application__id** | **STRING_32**|  | [optional] 
 **x__embarcadero__app__secret** | **STRING_32**|  | [optional] 
 **x__embarcadero__master__secret** | **STRING_32**|  | [optional] 

### Return type

[**EDGE_MODULE_OBJECT**](edgeModuleObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **module_resource**
> module_resource (mname: STRING_32 ; name: STRING_32 ; x__embarcadero__application__id:  detachable STRING_32 ; x__embarcadero__app__secret:  detachable STRING_32 ; x__embarcadero__master__secret:  detachable STRING_32 ): detachable EDGE_MODULE_RESOURCE_OBJECT
	

Get EdgeModule Resource

 |      Used to retrieve all data from a resource of an EdgeModule. **mname** is the unique EMS EdgeModule identifier in the EMS database. **resourcename** is the name of the resource.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **STRING_32**| Is the unique EMS EdgeModule identifier | 
 **name** | **STRING_32**| Is the unique EMS EdgeModule Resource name | 
 **x__embarcadero__application__id** | **STRING_32**|  | [optional] 
 **x__embarcadero__app__secret** | **STRING_32**|  | [optional] 
 **x__embarcadero__master__secret** | **STRING_32**|  | [optional] 

### Return type

[**EDGE_MODULE_RESOURCE_OBJECT**](edgeModuleResourceObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **module_resources**
> module_resources (mname: STRING_32 ; x__embarcadero__application__id:  detachable STRING_32 ; x__embarcadero__app__secret:  detachable STRING_32 ; x__embarcadero__master__secret:  detachable STRING_32 ): detachable LIST [EDGE_MODULE_RESOURCE_OBJECT]
	

Get EdgeModule Resources

 |      Used to retrieve all data from the resources of an EdgeModule.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **STRING_32**| Is the unique EMS EdgeModule identifier | 
 **x__embarcadero__application__id** | **STRING_32**|  | [optional] 
 **x__embarcadero__app__secret** | **STRING_32**|  | [optional] 
 **x__embarcadero__master__secret** | **STRING_32**|  | [optional] 

### Return type

[**LIST [EDGE_MODULE_RESOURCE_OBJECT]**](edgeModuleResourceObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **modules**
> modules (x__embarcadero__application__id:  detachable STRING_32 ; x__embarcadero__app__secret:  detachable STRING_32 ; x__embarcadero__master__secret:  detachable STRING_32 ): detachable LIST [EDGE_MODULE_OBJECT]
	

Get Module

 |      Used to retrieve all data from `EdgeModule`.      Optional query param of **skip, limit, order, where** determines       size of returned array, filtered and order by.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x__embarcadero__application__id** | **STRING_32**|  | [optional] 
 **x__embarcadero__app__secret** | **STRING_32**|  | [optional] 
 **x__embarcadero__master__secret** | **STRING_32**|  | [optional] 

### Return type

[**LIST [EDGE_MODULE_OBJECT]**](edgeModuleObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **modules_fields**
> modules_fields (x__embarcadero__application__id:  detachable STRING_32 ; x__embarcadero__app__secret:  detachable STRING_32 ; x__embarcadero__master__secret:  detachable STRING_32 ): detachable FIELDS_EDGE_MODULE_OBJECT
	

Get Fields

 |      Used to retrieve all the `field names` of the EMS EdgeModule (including the custom fields).


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x__embarcadero__application__id** | **STRING_32**|  | [optional] 
 **x__embarcadero__app__secret** | **STRING_32**|  | [optional] 
 **x__embarcadero__master__secret** | **STRING_32**|  | [optional] 

### Return type

[**FIELDS_EDGE_MODULE_OBJECT**](fieldsEdgeModuleObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **register_module**
> register_module (body: EDGE_MODULE_ADD_OBJECT ; x__embarcadero__application__id:  detachable STRING_32 ; x__embarcadero__app__secret:  detachable STRING_32 ; x__embarcadero__master__secret:  detachable STRING_32 ): detachable EDGE_MODULE_ADDED_OBJECT
	

Add Module

 |      Used to add a new `EdgeModule` object to the EMS database.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**EDGE_MODULE_ADD_OBJECT**](EDGE_MODULE_ADD_OBJECT.md)| EdgeModule object to add. protocolprops example string {\\\&quot;port\\\&quot;:8082,\\\&quot;host\\\&quot;:\\\&quot;10.150.40.52\\\&quot;} | 
 **x__embarcadero__application__id** | **STRING_32**|  | [optional] 
 **x__embarcadero__app__secret** | **STRING_32**|  | [optional] 
 **x__embarcadero__master__secret** | **STRING_32**|  | [optional] 

### Return type

[**EDGE_MODULE_ADDED_OBJECT**](edgeModuleAddedObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **register_module_resource**
> register_module_resource (mname: STRING_32 ; body: EDGE_MODULE_RESOURCE_ADD_OBJECT ; x__embarcadero__application__id:  detachable STRING_32 ; x__embarcadero__app__secret:  detachable STRING_32 ; x__embarcadero__master__secret:  detachable STRING_32 ): detachable EDGE_MODULE_RESOURCE_ADDED_OBJECT
	

Add Module Resource

 |      Used to register a new resource from an EMS EdgeModule. **mname** is the unique EMS EdgeModule identifier in the EMS database.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **STRING_32**| Is the unique EMS EdgeModule identifier | 
 **body** | [**EDGE_MODULE_RESOURCE_ADD_OBJECT**](EDGE_MODULE_RESOURCE_ADD_OBJECT.md)| EdgModule Resource add object. protocolprops string example {\\\&quot;port\\\&quot;:8082,\\\&quot;host\\\&quot;:\\\&quot;10.150.40.52\\\&quot;} | 
 **x__embarcadero__application__id** | **STRING_32**|  | [optional] 
 **x__embarcadero__app__secret** | **STRING_32**|  | [optional] 
 **x__embarcadero__master__secret** | **STRING_32**|  | [optional] 

### Return type

[**EDGE_MODULE_RESOURCE_ADDED_OBJECT**](edgeModuleResourceAddedObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **resources**
> resources (x__embarcadero__application__id:  detachable STRING_32 ; x__embarcadero__app__secret:  detachable STRING_32 ; x__embarcadero__master__secret:  detachable STRING_32 ): detachable LIST [EDGE_MODULE_RESOURCE_OBJECT]
	

Get EdgeModules Resources

 |      Used to retrieve all data from the resources of all EdgeModules.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x__embarcadero__application__id** | **STRING_32**|  | [optional] 
 **x__embarcadero__app__secret** | **STRING_32**|  | [optional] 
 **x__embarcadero__master__secret** | **STRING_32**|  | [optional] 

### Return type

[**LIST [EDGE_MODULE_RESOURCE_OBJECT]**](edgeModuleResourceObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **resources_fields**
> resources_fields (x__embarcadero__application__id:  detachable STRING_32 ; x__embarcadero__app__secret:  detachable STRING_32 ; x__embarcadero__master__secret:  detachable STRING_32 ): detachable FIELDS_EDGE_MODULE_OBJECT
	

Get Resource Fields

 |      Used to retrieve the `field names` of all the resources of the EMS EdgeModule (including the custom fields).


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x__embarcadero__application__id** | **STRING_32**|  | [optional] 
 **x__embarcadero__app__secret** | **STRING_32**|  | [optional] 
 **x__embarcadero__master__secret** | **STRING_32**|  | [optional] 

### Return type

[**FIELDS_EDGE_MODULE_OBJECT**](fieldsEdgeModuleObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **unregister_module**
> unregister_module (mname: STRING_32 ; x__embarcadero__application__id:  detachable STRING_32 ; x__embarcadero__app__secret:  detachable STRING_32 ; x__embarcadero__master__secret:  detachable STRING_32 )
	

Delete Module

 |      Used to delete an `EdgeModule Resource`. **mname** is the unique EMS EdgeModule identifier (MID) in the EMS database. **resourcename** is the name of the resource.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **STRING_32**| Is the unique EMS EdgeModule identifier | 
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

# **unregister_module_resource**
> unregister_module_resource (mname: STRING_32 ; name: STRING_32 ; x__embarcadero__application__id:  detachable STRING_32 ; x__embarcadero__app__secret:  detachable STRING_32 ; x__embarcadero__master__secret:  detachable STRING_32 )
	

Delete Module Resource

 |      Used to delete an `EdgeModule Resource`. **mname** is the unique EMS EdgeModule identifier (MID) in the EMS database. **resourcename** is the name of the resource.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **STRING_32**| Is the unique EMS EdgeModule identifier | 
 **name** | **STRING_32**| Is the unique EMS EdgeModule Resource name | 
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

# **update_module**
> update_module (mname: STRING_32 ; body: EDGE_MODULE_UPDATE_OBJECT ; x__embarcadero__application__id:  detachable STRING_32 ; x__embarcadero__app__secret:  detachable STRING_32 ; x__embarcadero__master__secret:  detachable STRING_32 ): detachable EDGE_MODULE_UPDATED_OBJECT
	

Update Module

 |      Used to update an `EdgeModule`. **mname** is the unique EMS EdgeModule identifier (MID) in the EMS database.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **STRING_32**| Is the unique EMS EdgeModule identifier | 
 **body** | [**EDGE_MODULE_UPDATE_OBJECT**](EDGE_MODULE_UPDATE_OBJECT.md)| EdgModule Resource add object. protocolprops string example {\\\&quot;port\\\&quot;:8082,\\\&quot;host\\\&quot;:\\\&quot;10.150.40.52\\\&quot;} | 
 **x__embarcadero__application__id** | **STRING_32**|  | [optional] 
 **x__embarcadero__app__secret** | **STRING_32**|  | [optional] 
 **x__embarcadero__master__secret** | **STRING_32**|  | [optional] 

### Return type

[**EDGE_MODULE_UPDATED_OBJECT**](edgeModuleUpdatedObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_module_resource**
> update_module_resource (mname: STRING_32 ; name: STRING_32 ; body: EDGE_MODULE_RESOURCE_UPDATE_OBJECT ; x__embarcadero__application__id:  detachable STRING_32 ; x__embarcadero__app__secret:  detachable STRING_32 ; x__embarcadero__master__secret:  detachable STRING_32 ): detachable EDGE_MODULE_RESOURCE_UPDATED_OBJECT
	

Update Module Resource

 |      Used to update an `EdgeModule`. **mname** is the unique EMS EdgeModule identifier (MID) in the EMS database.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **STRING_32**| Is the unique EMS EdgeModule identifier | 
 **name** | **STRING_32**| Is the unique EMS EdgeModule Resource name | 
 **body** | [**EDGE_MODULE_RESOURCE_UPDATE_OBJECT**](EDGE_MODULE_RESOURCE_UPDATE_OBJECT.md)| EdgModule Resource add object. protocolprops string example {\\\&quot;port\\\&quot;:8082,\\\&quot;host\\\&quot;:\\\&quot;10.150.40.52\\\&quot;} | 
 **x__embarcadero__application__id** | **STRING_32**|  | [optional] 
 **x__embarcadero__app__secret** | **STRING_32**|  | [optional] 
 **x__embarcadero__master__secret** | **STRING_32**|  | [optional] 

### Return type

[**EDGE_MODULE_RESOURCE_UPDATED_OBJECT**](edgeModuleResourceUpdatedObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

