# GROUPS_API

All URIs are relative to *http://localhost:8080*

Feature | HTTP request | Description
------------- | ------------- | -------------
[**add_group**](GROUPS_API.md#add_group) | **Post** /groups | Add Group
[**delete_group**](GROUPS_API.md#delete_group) | **Delete** /groups/{item} | Delete Group
[**group**](GROUPS_API.md#group) | **Get** /groups/{item} | Get Group
[**group_fields**](GROUPS_API.md#group_fields) | **Get** /groups/fields | Get Fields
[**groups**](GROUPS_API.md#groups) | **Get** /groups | Get Groups
[**update_group**](GROUPS_API.md#update_group) | **Put** /groups/{item} | Update Group


# **add_group**
> add_group (body: GROUP_ADD_OBJECT ; x__embarcadero__application__id:  detachable STRING_32 ; x__embarcadero__app__secret:  detachable STRING_32 ; x__embarcadero__master__secret:  detachable STRING_32 )
	

Add Group

 |      Used to add a new `Group` object to the EMS database.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**GROUP_ADD_OBJECT**](GROUP_ADD_OBJECT.md)| Object to sign up a new EMS User in the EMS Server | 
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

# **delete_group**
> delete_group (item: STRING_32 ; x__embarcadero__application__id:  detachable STRING_32 ; x__embarcadero__app__secret:  detachable STRING_32 ; x__embarcadero__master__secret:  detachable STRING_32 )
	

Delete Group

 |      Used to delete a `Group`. **item** is the unique EMS Group name in the EMS database.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **item** | **STRING_32**| A group name | 
 **x__embarcadero__application__id** | **STRING_32**|  | [optional] 
 **x__embarcadero__app__secret** | **STRING_32**|  | [optional] 
 **x__embarcadero__master__secret** | **STRING_32**|  | [optional] 

### Return type

{empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **group**
> group (item: STRING_32 ; x__embarcadero__application__id:  detachable STRING_32 ; x__embarcadero__app__secret:  detachable STRING_32 ; x__embarcadero__master__secret:  detachable STRING_32 ): detachable GROUP_OBJECT
	

Get Group

 |      Used to retrieve all data from a `Group`. **item** is the unique EMS Group name in the EMS database.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **item** | **STRING_32**| A group name | 
 **x__embarcadero__application__id** | **STRING_32**|  | [optional] 
 **x__embarcadero__app__secret** | **STRING_32**|  | [optional] 
 **x__embarcadero__master__secret** | **STRING_32**|  | [optional] 

### Return type

[**GROUP_OBJECT**](groupObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **group_fields**
> group_fields (x__embarcadero__application__id:  detachable STRING_32 ; x__embarcadero__app__secret:  detachable STRING_32 ; x__embarcadero__master__secret:  detachable STRING_32 ): detachable LIST [FIELD_GROUP_OBJECT]
	

Get Fields

 |      Used to retrieve all the `field names` of the EMS Group (including the custom fields).


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x__embarcadero__application__id** | **STRING_32**|  | [optional] 
 **x__embarcadero__app__secret** | **STRING_32**|  | [optional] 
 **x__embarcadero__master__secret** | **STRING_32**|  | [optional] 

### Return type

[**LIST [FIELD_GROUP_OBJECT]**](fieldGroupObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **groups**
> groups (x__embarcadero__application__id:  detachable STRING_32 ; x__embarcadero__app__secret:  detachable STRING_32 ; x__embarcadero__master__secret:  detachable STRING_32 ; skip:  detachable REAL_32 ; limit:  detachable REAL_32 ; order:  detachable REAL_32 ; where:  detachable STRING_32 ): detachable LIST [GROUP_OBJECT]
	

Get Groups

 |      Used to retrieve all data from `Groups`.      Optional query param of **skip, limit, order, where** determines       size of returned array, filtered and order by.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x__embarcadero__application__id** | **STRING_32**|  | [optional] 
 **x__embarcadero__app__secret** | **STRING_32**|  | [optional] 
 **x__embarcadero__master__secret** | **STRING_32**|  | [optional] 
 **skip** | **REAL_32**| users skipped | [optional] 
 **limit** | **REAL_32**| maximum number of results to return | [optional] 
 **order** | **REAL_32**| order ascending or descending (asc, desc) | [optional] 
 **where** | **STRING_32**| filter operators (lt, lte, gt, gte, eq, neq, like, nlike) | [optional] 

### Return type

[**LIST [GROUP_OBJECT]**](groupObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_group**
> update_group (item: STRING_32 ; body: UPDATE_GROUP_OBJECT ; x__embarcadero__application__id:  detachable STRING_32 ; x__embarcadero__app__secret:  detachable STRING_32 ; x__embarcadero__master__secret:  detachable STRING_32 ): detachable UPDATED_GROUP_OBJECT
	

Update Group

 |      Used to update a `Group`. **item** is the unique EMS Group name in the EMS database.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **item** | **STRING_32**| A group name | 
 **body** | [**UPDATE_GROUP_OBJECT**](UPDATE_GROUP_OBJECT.md)| Object to sign up a new EMS User in the EMS Server | 
 **x__embarcadero__application__id** | **STRING_32**|  | [optional] 
 **x__embarcadero__app__secret** | **STRING_32**|  | [optional] 
 **x__embarcadero__master__secret** | **STRING_32**|  | [optional] 

### Return type

[**UPDATED_GROUP_OBJECT**](updatedGroupObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

