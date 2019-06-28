# swagger.api.InstallationsApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addInstallation**](InstallationsApi.md#addInstallation) | **Post** /installations | Add Installation
[**deleteInstallation**](InstallationsApi.md#deleteInstallation) | **Delete** /installations/:id | Delete Installation
[**getChannels**](InstallationsApi.md#getChannels) | **Get** /installations/channels | Get Installation Channels
[**getInstallation**](InstallationsApi.md#getInstallation) | **Get** /installations/:id | Get Installation
[**getInstallationFields**](InstallationsApi.md#getInstallationFields) | **Get** /installations/fields | Get Fields
[**getInstallations**](InstallationsApi.md#getInstallations) | **Get** /installations | Get Installations
[**updateInstallation**](InstallationsApi.md#updateInstallation) | **Put** /installations/:id | Update Installation


# **addInstallation**
> InstallationAddedObject addInstallation(body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Add Installation

 |      Used to add a new `Installation` object to the EMS database.

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new InstallationsApi();
var body = new InstallationAddObject(); // InstallationAddObject | Object to sign up a new EMS User in the EMS Server
var xEmbarcaderoApplicationId = xEmbarcaderoApplicationId_example; // String | 
var xEmbarcaderoAppSecret = xEmbarcaderoAppSecret_example; // String | 
var xEmbarcaderoMasterSecret = xEmbarcaderoMasterSecret_example; // String | 

try { 
    var result = api_instance.addInstallation(body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
    print(result);
} catch (e) {
    print("Exception when calling InstallationsApi->addInstallation: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**InstallationAddObject**](InstallationAddObject.md)| Object to sign up a new EMS User in the EMS Server | 
 **xEmbarcaderoApplicationId** | **String**|  | [optional] 
 **xEmbarcaderoAppSecret** | **String**|  | [optional] 
 **xEmbarcaderoMasterSecret** | **String**|  | [optional] 

### Return type

[**InstallationAddedObject**](InstallationAddedObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteInstallation**
> deleteInstallation(id, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Delete Installation

 |      Used to delete an `Installation`. **id** is the unique EMS Installation identifier (IID) in the EMS database.

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new InstallationsApi();
var id = id_example; // String | A Installation ID
var xEmbarcaderoApplicationId = xEmbarcaderoApplicationId_example; // String | 
var xEmbarcaderoAppSecret = xEmbarcaderoAppSecret_example; // String | 
var xEmbarcaderoMasterSecret = xEmbarcaderoMasterSecret_example; // String | 

try { 
    api_instance.deleteInstallation(id, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
} catch (e) {
    print("Exception when calling InstallationsApi->deleteInstallation: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A Installation ID | 
 **xEmbarcaderoApplicationId** | **String**|  | [optional] 
 **xEmbarcaderoAppSecret** | **String**|  | [optional] 
 **xEmbarcaderoMasterSecret** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getChannels**
> List<ChannelName> getChannels(xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Get Installation Channels

 |       Used to retrieve the available channels to which the device has subscribed. **id** is the unique EMS Installation identifier (InstallationID) in the EMS database.

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new InstallationsApi();
var xEmbarcaderoApplicationId = xEmbarcaderoApplicationId_example; // String | 
var xEmbarcaderoAppSecret = xEmbarcaderoAppSecret_example; // String | 
var xEmbarcaderoMasterSecret = xEmbarcaderoMasterSecret_example; // String | 

try { 
    var result = api_instance.getChannels(xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
    print(result);
} catch (e) {
    print("Exception when calling InstallationsApi->getChannels: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xEmbarcaderoApplicationId** | **String**|  | [optional] 
 **xEmbarcaderoAppSecret** | **String**|  | [optional] 
 **xEmbarcaderoMasterSecret** | **String**|  | [optional] 

### Return type

[**List<ChannelName>**](ChannelName.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getInstallation**
> InstallationObject getInstallation(id, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Get Installation

 |      Used to retrieve all data from a specific `Installation` (registered device). **id** is the unique EMS Installation identifier (InstallationID) in the EMS database.

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new InstallationsApi();
var id = id_example; // String | A Installation ID
var xEmbarcaderoApplicationId = xEmbarcaderoApplicationId_example; // String | 
var xEmbarcaderoAppSecret = xEmbarcaderoAppSecret_example; // String | 
var xEmbarcaderoMasterSecret = xEmbarcaderoMasterSecret_example; // String | 

try { 
    var result = api_instance.getInstallation(id, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
    print(result);
} catch (e) {
    print("Exception when calling InstallationsApi->getInstallation: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A Installation ID | 
 **xEmbarcaderoApplicationId** | **String**|  | [optional] 
 **xEmbarcaderoAppSecret** | **String**|  | [optional] 
 **xEmbarcaderoMasterSecret** | **String**|  | [optional] 

### Return type

[**InstallationObject**](InstallationObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getInstallationFields**
> List<FieldInstallationObject> getInstallationFields(xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Get Fields

 |      Used to retrieve all the `field names` of the EMS Installation (including the custom fields).

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new InstallationsApi();
var xEmbarcaderoApplicationId = xEmbarcaderoApplicationId_example; // String | 
var xEmbarcaderoAppSecret = xEmbarcaderoAppSecret_example; // String | 
var xEmbarcaderoMasterSecret = xEmbarcaderoMasterSecret_example; // String | 

try { 
    var result = api_instance.getInstallationFields(xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
    print(result);
} catch (e) {
    print("Exception when calling InstallationsApi->getInstallationFields: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xEmbarcaderoApplicationId** | **String**|  | [optional] 
 **xEmbarcaderoAppSecret** | **String**|  | [optional] 
 **xEmbarcaderoMasterSecret** | **String**|  | [optional] 

### Return type

[**List<FieldInstallationObject>**](FieldInstallationObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getInstallations**
> List<InstallationObject> getInstallations(xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret, skip, limit, order, where)

Get Installations

 |      Used to retrieve all data from `Installation`.      Optional query param of **skip, limit, order, where** determines       size of returned array, filtered and order by.

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new InstallationsApi();
var xEmbarcaderoApplicationId = xEmbarcaderoApplicationId_example; // String | 
var xEmbarcaderoAppSecret = xEmbarcaderoAppSecret_example; // String | 
var xEmbarcaderoMasterSecret = xEmbarcaderoMasterSecret_example; // String | 
var skip = 8.14; // num | users skipped
var limit = 8.14; // num | maximum number of results to return
var order = 8.14; // num | order ascending or descending (asc, desc)
var where = where_example; // String | filter operators (lt, lte, gt, gte, eq, neq, like, nlike)

try { 
    var result = api_instance.getInstallations(xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret, skip, limit, order, where);
    print(result);
} catch (e) {
    print("Exception when calling InstallationsApi->getInstallations: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xEmbarcaderoApplicationId** | **String**|  | [optional] 
 **xEmbarcaderoAppSecret** | **String**|  | [optional] 
 **xEmbarcaderoMasterSecret** | **String**|  | [optional] 
 **skip** | **num**| users skipped | [optional] 
 **limit** | **num**| maximum number of results to return | [optional] 
 **order** | **num**| order ascending or descending (asc, desc) | [optional] 
 **where** | **String**| filter operators (lt, lte, gt, gte, eq, neq, like, nlike) | [optional] 

### Return type

[**List<InstallationObject>**](InstallationObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateInstallation**
> UpdatedInstallationObject updateInstallation(id, body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Update Installation

 |      Used to update an `Installation`. **id** is the unique EMS Installation identifier (IID) in the EMS database.

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new InstallationsApi();
var id = id_example; // String | A Installation ID
var body = new UpdateInstallationObject(); // UpdateInstallationObject | Installation fields to update
var xEmbarcaderoApplicationId = xEmbarcaderoApplicationId_example; // String | 
var xEmbarcaderoAppSecret = xEmbarcaderoAppSecret_example; // String | 
var xEmbarcaderoMasterSecret = xEmbarcaderoMasterSecret_example; // String | 

try { 
    var result = api_instance.updateInstallation(id, body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
    print(result);
} catch (e) {
    print("Exception when calling InstallationsApi->updateInstallation: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A Installation ID | 
 **body** | [**UpdateInstallationObject**](UpdateInstallationObject.md)| Installation fields to update | 
 **xEmbarcaderoApplicationId** | **String**|  | [optional] 
 **xEmbarcaderoAppSecret** | **String**|  | [optional] 
 **xEmbarcaderoMasterSecret** | **String**|  | [optional] 

### Return type

[**UpdatedInstallationObject**](UpdatedInstallationObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

