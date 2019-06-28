# INSTALLATIONS_API

All URIs are relative to *http://localhost:8080*

Feature | HTTP request | Description
------------- | ------------- | -------------
[**add_installation**](INSTALLATIONS_API.md#add_installation) | **Post** /installations | Add Installation
[**channels**](INSTALLATIONS_API.md#channels) | **Get** /installations/channels | Get Installation Channels
[**delete_installation**](INSTALLATIONS_API.md#delete_installation) | **Delete** /installations/{id} | Delete Installation
[**installation**](INSTALLATIONS_API.md#installation) | **Get** /installations/{id} | Get Installation
[**installation_fields**](INSTALLATIONS_API.md#installation_fields) | **Get** /installations/fields | Get Fields
[**installations**](INSTALLATIONS_API.md#installations) | **Get** /installations | Get Installations
[**update_installation**](INSTALLATIONS_API.md#update_installation) | **Put** /installations/{id} | Update Installation


# **add_installation**
> add_installation (body: INSTALLATION_ADD_OBJECT ; x__embarcadero__application__id:  detachable STRING_32 ; x__embarcadero__app__secret:  detachable STRING_32 ; x__embarcadero__master__secret:  detachable STRING_32 ): detachable INSTALLATION_ADDED_OBJECT
	

Add Installation

 |      Used to add a new `Installation` object to the EMS database.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**INSTALLATION_ADD_OBJECT**](INSTALLATION_ADD_OBJECT.md)| Object to sign up a new EMS User in the EMS Server | 
 **x__embarcadero__application__id** | **STRING_32**|  | [optional] 
 **x__embarcadero__app__secret** | **STRING_32**|  | [optional] 
 **x__embarcadero__master__secret** | **STRING_32**|  | [optional] 

### Return type

[**INSTALLATION_ADDED_OBJECT**](installationAddedObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **channels**
> channels (x__embarcadero__application__id:  detachable STRING_32 ; x__embarcadero__app__secret:  detachable STRING_32 ; x__embarcadero__master__secret:  detachable STRING_32 ): detachable LIST [CHANNEL_NAME]
	

Get Installation Channels

 |       Used to retrieve the available channels to which the device has subscribed. **id** is the unique EMS Installation identifier (InstallationID) in the EMS database.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x__embarcadero__application__id** | **STRING_32**|  | [optional] 
 **x__embarcadero__app__secret** | **STRING_32**|  | [optional] 
 **x__embarcadero__master__secret** | **STRING_32**|  | [optional] 

### Return type

[**LIST [CHANNEL_NAME]**](channelName.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_installation**
> delete_installation (id: STRING_32 ; x__embarcadero__application__id:  detachable STRING_32 ; x__embarcadero__app__secret:  detachable STRING_32 ; x__embarcadero__master__secret:  detachable STRING_32 )
	

Delete Installation

 |      Used to delete an `Installation`. **id** is the unique EMS Installation identifier (IID) in the EMS database.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **STRING_32**| A Installation ID | 
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

# **installation**
> installation (id: STRING_32 ; x__embarcadero__application__id:  detachable STRING_32 ; x__embarcadero__app__secret:  detachable STRING_32 ; x__embarcadero__master__secret:  detachable STRING_32 ): detachable INSTALLATION_OBJECT
	

Get Installation

 |      Used to retrieve all data from a specific `Installation` (registered device). **id** is the unique EMS Installation identifier (InstallationID) in the EMS database.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **STRING_32**| A Installation ID | 
 **x__embarcadero__application__id** | **STRING_32**|  | [optional] 
 **x__embarcadero__app__secret** | **STRING_32**|  | [optional] 
 **x__embarcadero__master__secret** | **STRING_32**|  | [optional] 

### Return type

[**INSTALLATION_OBJECT**](installationObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **installation_fields**
> installation_fields (x__embarcadero__application__id:  detachable STRING_32 ; x__embarcadero__app__secret:  detachable STRING_32 ; x__embarcadero__master__secret:  detachable STRING_32 ): detachable LIST [FIELD_INSTALLATION_OBJECT]
	

Get Fields

 |      Used to retrieve all the `field names` of the EMS Installation (including the custom fields).


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x__embarcadero__application__id** | **STRING_32**|  | [optional] 
 **x__embarcadero__app__secret** | **STRING_32**|  | [optional] 
 **x__embarcadero__master__secret** | **STRING_32**|  | [optional] 

### Return type

[**LIST [FIELD_INSTALLATION_OBJECT]**](fieldInstallationObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **installations**
> installations (x__embarcadero__application__id:  detachable STRING_32 ; x__embarcadero__app__secret:  detachable STRING_32 ; x__embarcadero__master__secret:  detachable STRING_32 ; skip:  detachable REAL_32 ; limit:  detachable REAL_32 ; order:  detachable REAL_32 ; where:  detachable STRING_32 ): detachable LIST [INSTALLATION_OBJECT]
	

Get Installations

 |      Used to retrieve all data from `Installation`.      Optional query param of **skip, limit, order, where** determines       size of returned array, filtered and order by.


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

[**LIST [INSTALLATION_OBJECT]**](installationObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_installation**
> update_installation (id: STRING_32 ; body: UPDATE_INSTALLATION_OBJECT ; x__embarcadero__application__id:  detachable STRING_32 ; x__embarcadero__app__secret:  detachable STRING_32 ; x__embarcadero__master__secret:  detachable STRING_32 ): detachable UPDATED_INSTALLATION_OBJECT
	

Update Installation

 |      Used to update an `Installation`. **id** is the unique EMS Installation identifier (IID) in the EMS database.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **STRING_32**| A Installation ID | 
 **body** | [**UPDATE_INSTALLATION_OBJECT**](UPDATE_INSTALLATION_OBJECT.md)| Installation fields to update | 
 **x__embarcadero__application__id** | **STRING_32**|  | [optional] 
 **x__embarcadero__app__secret** | **STRING_32**|  | [optional] 
 **x__embarcadero__master__secret** | **STRING_32**|  | [optional] 

### Return type

[**UPDATED_INSTALLATION_OBJECT**](updatedInstallationObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

