# \EdgeModulesApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_module**](EdgeModulesApi.md#get_module) | **Get** /edgemodules/{mname} | Get Module
[**get_module_resource**](EdgeModulesApi.md#get_module_resource) | **Get** /edgemodules/{mname}/resources/{name} | Get EdgeModule Resource
[**get_module_resources**](EdgeModulesApi.md#get_module_resources) | **Get** /edgemodules/{mname}/resources | Get EdgeModule Resources
[**get_modules**](EdgeModulesApi.md#get_modules) | **Get** /edgemodules | Get Module
[**get_modules_fields**](EdgeModulesApi.md#get_modules_fields) | **Get** /edgemodules/fields | Get Fields
[**get_resources**](EdgeModulesApi.md#get_resources) | **Get** /edgemodules/resources | Get EdgeModules Resources
[**get_resources_fields**](EdgeModulesApi.md#get_resources_fields) | **Get** /edgemodules/resources/fields | Get Resource Fields
[**register_module**](EdgeModulesApi.md#register_module) | **Post** /edgemodules | Add Module
[**register_module_resource**](EdgeModulesApi.md#register_module_resource) | **Post** /edgemodules/{mname}/resources | Add Module Resource
[**unregister_module**](EdgeModulesApi.md#unregister_module) | **Delete** /edgemodules/{mname} | Delete Module
[**unregister_module_resource**](EdgeModulesApi.md#unregister_module_resource) | **Delete** /edgemodules/{mname}/resources/{name} | Delete Module Resource
[**update_module**](EdgeModulesApi.md#update_module) | **Put** /edgemodules/{mname} | Update Module
[**update_module_resource**](EdgeModulesApi.md#update_module_resource) | **Put** /edgemodules/{mname}/resources/{name} | Update Module Resource


# **get_module**
> ::models::EdgeModuleObject get_module(mname, optional)
Get Module

 |      Used to retrieve all data from `EdgeModule`.      Optional query param of **skip, limit, order, where** determines       size of returned array, filtered and order by.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **mname** | **String**| Is the unique EMS EdgeModule identifier | 
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **String**| Is the unique EMS EdgeModule identifier | 
 **x_embarcadero_application_id** | **String**|  | 
 **x_embarcadero_app_secret** | **String**|  | 
 **x_embarcadero_master_secret** | **String**|  | 

### Return type

[**::models::EdgeModuleObject**](edgeModuleObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_module_resource**
> ::models::EdgeModuleResourceObject get_module_resource(mname, name, optional)
Get EdgeModule Resource

 |      Used to retrieve all data from a resource of an EdgeModule. **mname** is the unique EMS EdgeModule identifier in the EMS database. **resourcename** is the name of the resource.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **mname** | **String**| Is the unique EMS EdgeModule identifier | 
  **name** | **String**| Is the unique EMS EdgeModule Resource name | 
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **String**| Is the unique EMS EdgeModule identifier | 
 **name** | **String**| Is the unique EMS EdgeModule Resource name | 
 **x_embarcadero_application_id** | **String**|  | 
 **x_embarcadero_app_secret** | **String**|  | 
 **x_embarcadero_master_secret** | **String**|  | 

### Return type

[**::models::EdgeModuleResourceObject**](edgeModuleResourceObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_module_resources**
> Vec<::models::EdgeModuleResourceObject> get_module_resources(mname, optional)
Get EdgeModule Resources

 |      Used to retrieve all data from the resources of an EdgeModule.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **mname** | **String**| Is the unique EMS EdgeModule identifier | 
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **String**| Is the unique EMS EdgeModule identifier | 
 **x_embarcadero_application_id** | **String**|  | 
 **x_embarcadero_app_secret** | **String**|  | 
 **x_embarcadero_master_secret** | **String**|  | 

### Return type

[**Vec<::models::EdgeModuleResourceObject>**](edgeModuleResourceObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_modules**
> Vec<::models::EdgeModuleObject> get_modules(optional)
Get Module

 |      Used to retrieve all data from `EdgeModule`.      Optional query param of **skip, limit, order, where** determines       size of returned array, filtered and order by.

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

[**Vec<::models::EdgeModuleObject>**](edgeModuleObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_modules_fields**
> ::models::FieldsEdgeModuleObject get_modules_fields(optional)
Get Fields

 |      Used to retrieve all the `field names` of the EMS EdgeModule (including the custom fields).

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

[**::models::FieldsEdgeModuleObject**](fieldsEdgeModuleObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_resources**
> Vec<::models::EdgeModuleResourceObject> get_resources(optional)
Get EdgeModules Resources

 |      Used to retrieve all data from the resources of all EdgeModules.

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

[**Vec<::models::EdgeModuleResourceObject>**](edgeModuleResourceObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_resources_fields**
> ::models::FieldsEdgeModuleObject get_resources_fields(optional)
Get Resource Fields

 |      Used to retrieve the `field names` of all the resources of the EMS EdgeModule (including the custom fields).

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

[**::models::FieldsEdgeModuleObject**](fieldsEdgeModuleObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **register_module**
> ::models::EdgeModuleAddedObject register_module(body, optional)
Add Module

 |      Used to add a new `EdgeModule` object to the EMS database.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **body** | [**EdgeModuleAddObject**](EdgeModuleAddObject.md)| EdgeModule object to add. protocolprops example string {\\\&quot;port\\\&quot;:8082,\\\&quot;host\\\&quot;:\\\&quot;10.150.40.52\\\&quot;} | 
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**EdgeModuleAddObject**](EdgeModuleAddObject.md)| EdgeModule object to add. protocolprops example string {\\\&quot;port\\\&quot;:8082,\\\&quot;host\\\&quot;:\\\&quot;10.150.40.52\\\&quot;} | 
 **x_embarcadero_application_id** | **String**|  | 
 **x_embarcadero_app_secret** | **String**|  | 
 **x_embarcadero_master_secret** | **String**|  | 

### Return type

[**::models::EdgeModuleAddedObject**](edgeModuleAddedObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **register_module_resource**
> ::models::EdgeModuleResourceAddedObject register_module_resource(mname, body, optional)
Add Module Resource

 |      Used to register a new resource from an EMS EdgeModule. **mname** is the unique EMS EdgeModule identifier in the EMS database.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **mname** | **String**| Is the unique EMS EdgeModule identifier | 
  **body** | [**EdgeModuleResourceAddObject**](EdgeModuleResourceAddObject.md)| EdgModule Resource add object. protocolprops string example {\\\&quot;port\\\&quot;:8082,\\\&quot;host\\\&quot;:\\\&quot;10.150.40.52\\\&quot;} | 
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **String**| Is the unique EMS EdgeModule identifier | 
 **body** | [**EdgeModuleResourceAddObject**](EdgeModuleResourceAddObject.md)| EdgModule Resource add object. protocolprops string example {\\\&quot;port\\\&quot;:8082,\\\&quot;host\\\&quot;:\\\&quot;10.150.40.52\\\&quot;} | 
 **x_embarcadero_application_id** | **String**|  | 
 **x_embarcadero_app_secret** | **String**|  | 
 **x_embarcadero_master_secret** | **String**|  | 

### Return type

[**::models::EdgeModuleResourceAddedObject**](edgeModuleResourceAddedObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **unregister_module**
> unregister_module(mname, optional)
Delete Module

 |      Used to delete an `EdgeModule Resource`. **mname** is the unique EMS EdgeModule identifier (MID) in the EMS database. **resourcename** is the name of the resource.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **mname** | **String**| Is the unique EMS EdgeModule identifier | 
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **String**| Is the unique EMS EdgeModule identifier | 
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

# **unregister_module_resource**
> unregister_module_resource(mname, name, optional)
Delete Module Resource

 |      Used to delete an `EdgeModule Resource`. **mname** is the unique EMS EdgeModule identifier (MID) in the EMS database. **resourcename** is the name of the resource.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **mname** | **String**| Is the unique EMS EdgeModule identifier | 
  **name** | **String**| Is the unique EMS EdgeModule Resource name | 
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **String**| Is the unique EMS EdgeModule identifier | 
 **name** | **String**| Is the unique EMS EdgeModule Resource name | 
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

# **update_module**
> ::models::EdgeModuleUpdatedObject update_module(mname, body, optional)
Update Module

 |      Used to update an `EdgeModule`. **mname** is the unique EMS EdgeModule identifier (MID) in the EMS database.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **mname** | **String**| Is the unique EMS EdgeModule identifier | 
  **body** | [**EdgeModuleUpdateObject**](EdgeModuleUpdateObject.md)| EdgModule Resource add object. protocolprops string example {\\\&quot;port\\\&quot;:8082,\\\&quot;host\\\&quot;:\\\&quot;10.150.40.52\\\&quot;} | 
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **String**| Is the unique EMS EdgeModule identifier | 
 **body** | [**EdgeModuleUpdateObject**](EdgeModuleUpdateObject.md)| EdgModule Resource add object. protocolprops string example {\\\&quot;port\\\&quot;:8082,\\\&quot;host\\\&quot;:\\\&quot;10.150.40.52\\\&quot;} | 
 **x_embarcadero_application_id** | **String**|  | 
 **x_embarcadero_app_secret** | **String**|  | 
 **x_embarcadero_master_secret** | **String**|  | 

### Return type

[**::models::EdgeModuleUpdatedObject**](edgeModuleUpdatedObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_module_resource**
> ::models::EdgeModuleResourceUpdatedObject update_module_resource(mname, name, body, optional)
Update Module Resource

 |      Used to update an `EdgeModule`. **mname** is the unique EMS EdgeModule identifier (MID) in the EMS database.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **mname** | **String**| Is the unique EMS EdgeModule identifier | 
  **name** | **String**| Is the unique EMS EdgeModule Resource name | 
  **body** | [**EdgeModuleResourceUpdateObject**](EdgeModuleResourceUpdateObject.md)| EdgModule Resource add object. protocolprops string example {\\\&quot;port\\\&quot;:8082,\\\&quot;host\\\&quot;:\\\&quot;10.150.40.52\\\&quot;} | 
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **String**| Is the unique EMS EdgeModule identifier | 
 **name** | **String**| Is the unique EMS EdgeModule Resource name | 
 **body** | [**EdgeModuleResourceUpdateObject**](EdgeModuleResourceUpdateObject.md)| EdgModule Resource add object. protocolprops string example {\\\&quot;port\\\&quot;:8082,\\\&quot;host\\\&quot;:\\\&quot;10.150.40.52\\\&quot;} | 
 **x_embarcadero_application_id** | **String**|  | 
 **x_embarcadero_app_secret** | **String**|  | 
 **x_embarcadero_master_secret** | **String**|  | 

### Return type

[**::models::EdgeModuleResourceUpdatedObject**](edgeModuleResourceUpdatedObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

