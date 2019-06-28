# \GroupsApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_group**](GroupsApi.md#add_group) | **Post** /groups | Add Group
[**delete_group**](GroupsApi.md#delete_group) | **Delete** /groups/{item} | Delete Group
[**get_group**](GroupsApi.md#get_group) | **Get** /groups/{item} | Get Group
[**get_group_fields**](GroupsApi.md#get_group_fields) | **Get** /groups/fields | Get Fields
[**get_groups**](GroupsApi.md#get_groups) | **Get** /groups | Get Groups
[**update_group**](GroupsApi.md#update_group) | **Put** /groups/{item} | Update Group


# **add_group**
> add_group(body, optional)
Add Group

 |      Used to add a new `Group` object to the EMS database.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **body** | [**GroupAddObject**](GroupAddObject.md)| Object to sign up a new EMS User in the EMS Server | 
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**GroupAddObject**](GroupAddObject.md)| Object to sign up a new EMS User in the EMS Server | 
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

# **delete_group**
> delete_group(item, optional)
Delete Group

 |      Used to delete a `Group`. **item** is the unique EMS Group name in the EMS database.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **item** | **String**| A group name | 
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **item** | **String**| A group name | 
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

# **get_group**
> ::models::GroupObject get_group(item, optional)
Get Group

 |      Used to retrieve all data from a `Group`. **item** is the unique EMS Group name in the EMS database.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **item** | **String**| A group name | 
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **item** | **String**| A group name | 
 **x_embarcadero_application_id** | **String**|  | 
 **x_embarcadero_app_secret** | **String**|  | 
 **x_embarcadero_master_secret** | **String**|  | 

### Return type

[**::models::GroupObject**](groupObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_group_fields**
> Vec<::models::FieldGroupObject> get_group_fields(optional)
Get Fields

 |      Used to retrieve all the `field names` of the EMS Group (including the custom fields).

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

[**Vec<::models::FieldGroupObject>**](fieldGroupObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_groups**
> Vec<::models::GroupObject> get_groups(optional)
Get Groups

 |      Used to retrieve all data from `Groups`.      Optional query param of **skip, limit, order, where** determines       size of returned array, filtered and order by.

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
 **skip** | **f32**| users skipped | 
 **limit** | **f32**| maximum number of results to return | 
 **order** | **f32**| order ascending or descending (asc, desc) | 
 **_where** | **String**| filter operators (lt, lte, gt, gte, eq, neq, like, nlike) | 

### Return type

[**Vec<::models::GroupObject>**](groupObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_group**
> ::models::UpdatedGroupObject update_group(item, body, optional)
Update Group

 |      Used to update a `Group`. **item** is the unique EMS Group name in the EMS database.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **item** | **String**| A group name | 
  **body** | [**UpdateGroupObject**](UpdateGroupObject.md)| Object to sign up a new EMS User in the EMS Server | 
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **item** | **String**| A group name | 
 **body** | [**UpdateGroupObject**](UpdateGroupObject.md)| Object to sign up a new EMS User in the EMS Server | 
 **x_embarcadero_application_id** | **String**|  | 
 **x_embarcadero_app_secret** | **String**|  | 
 **x_embarcadero_master_secret** | **String**|  | 

### Return type

[**::models::UpdatedGroupObject**](updatedGroupObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

