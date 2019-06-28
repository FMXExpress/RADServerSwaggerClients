# swagger.api.GroupsApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addGroup**](GroupsApi.md#addGroup) | **POST** /groups | Add Group
[**deleteGroup**](GroupsApi.md#deleteGroup) | **DELETE** /groups/{item} | Delete Group
[**getGroup**](GroupsApi.md#getGroup) | **GET** /groups/{item} | Get Group
[**getGroupFields**](GroupsApi.md#getGroupFields) | **GET** /groups/fields | Get Fields
[**getGroups**](GroupsApi.md#getGroups) | **GET** /groups | Get Groups
[**updateGroup**](GroupsApi.md#updateGroup) | **PUT** /groups/{item} | Update Group


# **addGroup**
> addGroup(body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Add Group

 |      Used to add a new `Group` object to the EMS database.

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new GroupsApi();
var body = new GroupAddObject(); // GroupAddObject | Object to sign up a new EMS User in the EMS Server
var xEmbarcaderoApplicationId = xEmbarcaderoApplicationId_example; // String | 
var xEmbarcaderoAppSecret = xEmbarcaderoAppSecret_example; // String | 
var xEmbarcaderoMasterSecret = xEmbarcaderoMasterSecret_example; // String | 

try { 
    api_instance.addGroup(body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
} catch (e) {
    print("Exception when calling GroupsApi->addGroup: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**GroupAddObject**](GroupAddObject.md)| Object to sign up a new EMS User in the EMS Server | 
 **xEmbarcaderoApplicationId** | **String**|  | [optional] 
 **xEmbarcaderoAppSecret** | **String**|  | [optional] 
 **xEmbarcaderoMasterSecret** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteGroup**
> deleteGroup(item, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Delete Group

 |      Used to delete a `Group`. **item** is the unique EMS Group name in the EMS database.

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new GroupsApi();
var item = item_example; // String | A group name
var xEmbarcaderoApplicationId = xEmbarcaderoApplicationId_example; // String | 
var xEmbarcaderoAppSecret = xEmbarcaderoAppSecret_example; // String | 
var xEmbarcaderoMasterSecret = xEmbarcaderoMasterSecret_example; // String | 

try { 
    api_instance.deleteGroup(item, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
} catch (e) {
    print("Exception when calling GroupsApi->deleteGroup: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **item** | **String**| A group name | 
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

# **getGroup**
> GroupObject getGroup(item, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Get Group

 |      Used to retrieve all data from a `Group`. **item** is the unique EMS Group name in the EMS database.

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new GroupsApi();
var item = item_example; // String | A group name
var xEmbarcaderoApplicationId = xEmbarcaderoApplicationId_example; // String | 
var xEmbarcaderoAppSecret = xEmbarcaderoAppSecret_example; // String | 
var xEmbarcaderoMasterSecret = xEmbarcaderoMasterSecret_example; // String | 

try { 
    var result = api_instance.getGroup(item, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
    print(result);
} catch (e) {
    print("Exception when calling GroupsApi->getGroup: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **item** | **String**| A group name | 
 **xEmbarcaderoApplicationId** | **String**|  | [optional] 
 **xEmbarcaderoAppSecret** | **String**|  | [optional] 
 **xEmbarcaderoMasterSecret** | **String**|  | [optional] 

### Return type

[**GroupObject**](GroupObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGroupFields**
> List<FieldGroupObject> getGroupFields(xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Get Fields

 |      Used to retrieve all the `field names` of the EMS Group (including the custom fields).

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new GroupsApi();
var xEmbarcaderoApplicationId = xEmbarcaderoApplicationId_example; // String | 
var xEmbarcaderoAppSecret = xEmbarcaderoAppSecret_example; // String | 
var xEmbarcaderoMasterSecret = xEmbarcaderoMasterSecret_example; // String | 

try { 
    var result = api_instance.getGroupFields(xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
    print(result);
} catch (e) {
    print("Exception when calling GroupsApi->getGroupFields: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xEmbarcaderoApplicationId** | **String**|  | [optional] 
 **xEmbarcaderoAppSecret** | **String**|  | [optional] 
 **xEmbarcaderoMasterSecret** | **String**|  | [optional] 

### Return type

[**List<FieldGroupObject>**](FieldGroupObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGroups**
> List<GroupObject> getGroups(xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret, skip, limit, order, where)

Get Groups

 |      Used to retrieve all data from `Groups`.      Optional query param of **skip, limit, order, where** determines       size of returned array, filtered and order by.

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new GroupsApi();
var xEmbarcaderoApplicationId = xEmbarcaderoApplicationId_example; // String | 
var xEmbarcaderoAppSecret = xEmbarcaderoAppSecret_example; // String | 
var xEmbarcaderoMasterSecret = xEmbarcaderoMasterSecret_example; // String | 
var skip = 8.14; // num | users skipped
var limit = 8.14; // num | maximum number of results to return
var order = 8.14; // num | order ascending or descending (asc, desc)
var where = where_example; // String | filter operators (lt, lte, gt, gte, eq, neq, like, nlike)

try { 
    var result = api_instance.getGroups(xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret, skip, limit, order, where);
    print(result);
} catch (e) {
    print("Exception when calling GroupsApi->getGroups: $e\n");
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

[**List<GroupObject>**](GroupObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateGroup**
> UpdatedGroupObject updateGroup(item, body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Update Group

 |      Used to update a `Group`. **item** is the unique EMS Group name in the EMS database.

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new GroupsApi();
var item = item_example; // String | A group name
var body = new UpdateGroupObject(); // UpdateGroupObject | Object to sign up a new EMS User in the EMS Server
var xEmbarcaderoApplicationId = xEmbarcaderoApplicationId_example; // String | 
var xEmbarcaderoAppSecret = xEmbarcaderoAppSecret_example; // String | 
var xEmbarcaderoMasterSecret = xEmbarcaderoMasterSecret_example; // String | 

try { 
    var result = api_instance.updateGroup(item, body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
    print(result);
} catch (e) {
    print("Exception when calling GroupsApi->updateGroup: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **item** | **String**| A group name | 
 **body** | [**UpdateGroupObject**](UpdateGroupObject.md)| Object to sign up a new EMS User in the EMS Server | 
 **xEmbarcaderoApplicationId** | **String**|  | [optional] 
 **xEmbarcaderoAppSecret** | **String**|  | [optional] 
 **xEmbarcaderoMasterSecret** | **String**|  | [optional] 

### Return type

[**UpdatedGroupObject**](UpdatedGroupObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

