# swagger.api.UsersApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addUser**](UsersApi.md#addUser) | **POST** /users | Add User
[**deleteUser**](UsersApi.md#deleteUser) | **DELETE** /users/{id} | Delete User
[**getUser**](UsersApi.md#getUser) | **GET** /users/{id} | Get User
[**getUserFields**](UsersApi.md#getUserFields) | **GET** /users/fields | Get Fields
[**getUserGroups**](UsersApi.md#getUserGroups) | **GET** /users/{id}/groups | Get User Groups
[**getUsers**](UsersApi.md#getUsers) | **GET** /users | Get Users
[**loginUser**](UsersApi.md#loginUser) | **POST** /users/login | Log In
[**logoutUser**](UsersApi.md#logoutUser) | **POST** /users/logout | sPostLogoutSummaryTitle
[**signupUser**](UsersApi.md#signupUser) | **POST** /users/signup | Sign Up  User
[**updateUser**](UsersApi.md#updateUser) | **PUT** /users/{id} | Update User


# **addUser**
> UseridObject addUser(body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Add User

 |      Used to add a new `User` object to the EMS database.

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UsersApi();
var body = new UserCredentialsObject(); // UserCredentialsObject | Object to add a new EMS User in the EMS Server
var xEmbarcaderoApplicationId = xEmbarcaderoApplicationId_example; // String | 
var xEmbarcaderoAppSecret = xEmbarcaderoAppSecret_example; // String | 
var xEmbarcaderoMasterSecret = xEmbarcaderoMasterSecret_example; // String | 

try { 
    var result = api_instance.addUser(body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
    print(result);
} catch (e) {
    print("Exception when calling UsersApi->addUser: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**UserCredentialsObject**](UserCredentialsObject.md)| Object to add a new EMS User in the EMS Server | 
 **xEmbarcaderoApplicationId** | **String**|  | [optional] 
 **xEmbarcaderoAppSecret** | **String**|  | [optional] 
 **xEmbarcaderoMasterSecret** | **String**|  | [optional] 

### Return type

[**UseridObject**](UseridObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteUser**
> deleteUser(id, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Delete User

 |      Used to delete a `User`. **id** is the unique EMS User identifier (UID) in the EMS database.

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UsersApi();
var id = id_example; // String | A user ID
var xEmbarcaderoApplicationId = xEmbarcaderoApplicationId_example; // String | 
var xEmbarcaderoAppSecret = xEmbarcaderoAppSecret_example; // String | 
var xEmbarcaderoMasterSecret = xEmbarcaderoMasterSecret_example; // String | 

try { 
    api_instance.deleteUser(id, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
} catch (e) {
    print("Exception when calling UsersApi->deleteUser: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A user ID | 
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

# **getUser**
> UserObject getUser(id, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Get User

 |      Used to retrieve all data from a `User`. **id** is the unique EMS User identifier (UID) in the EMS database.

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UsersApi();
var id = id_example; // String | A user ID
var xEmbarcaderoApplicationId = xEmbarcaderoApplicationId_example; // String | 
var xEmbarcaderoAppSecret = xEmbarcaderoAppSecret_example; // String | 
var xEmbarcaderoMasterSecret = xEmbarcaderoMasterSecret_example; // String | 

try { 
    var result = api_instance.getUser(id, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
    print(result);
} catch (e) {
    print("Exception when calling UsersApi->getUser: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A user ID | 
 **xEmbarcaderoApplicationId** | **String**|  | [optional] 
 **xEmbarcaderoAppSecret** | **String**|  | [optional] 
 **xEmbarcaderoMasterSecret** | **String**|  | [optional] 

### Return type

[**UserObject**](UserObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserFields**
> List<FieldObject> getUserFields(xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Get Fields

 |      Used to retrieve all the `field names` of the EMS Users (including the custom fields).

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UsersApi();
var xEmbarcaderoApplicationId = xEmbarcaderoApplicationId_example; // String | 
var xEmbarcaderoAppSecret = xEmbarcaderoAppSecret_example; // String | 
var xEmbarcaderoMasterSecret = xEmbarcaderoMasterSecret_example; // String | 

try { 
    var result = api_instance.getUserFields(xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
    print(result);
} catch (e) {
    print("Exception when calling UsersApi->getUserFields: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xEmbarcaderoApplicationId** | **String**|  | [optional] 
 **xEmbarcaderoAppSecret** | **String**|  | [optional] 
 **xEmbarcaderoMasterSecret** | **String**|  | [optional] 

### Return type

[**List<FieldObject>**](FieldObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserGroups**
> List<GroupName> getUserGroups(id, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Get User Groups

 |      Used to retrieve the EMS Groups the EMS User belongs to. **id** is the unique EMS User identifier (UID) in the EMS database.

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UsersApi();
var id = id_example; // String | A user ID
var xEmbarcaderoApplicationId = xEmbarcaderoApplicationId_example; // String | 
var xEmbarcaderoAppSecret = xEmbarcaderoAppSecret_example; // String | 
var xEmbarcaderoMasterSecret = xEmbarcaderoMasterSecret_example; // String | 

try { 
    var result = api_instance.getUserGroups(id, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
    print(result);
} catch (e) {
    print("Exception when calling UsersApi->getUserGroups: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A user ID | 
 **xEmbarcaderoApplicationId** | **String**|  | [optional] 
 **xEmbarcaderoAppSecret** | **String**|  | [optional] 
 **xEmbarcaderoMasterSecret** | **String**|  | [optional] 

### Return type

[**List<GroupName>**](GroupName.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUsers**
> List<UserObject> getUsers(xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret, skip, limit, order, where)

Get Users

 |      Used to retrieve all data from `Users`.      Optional query param of **skip, limit, order, where** determines       size of returned array, filtered and order by.

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UsersApi();
var xEmbarcaderoApplicationId = xEmbarcaderoApplicationId_example; // String | 
var xEmbarcaderoAppSecret = xEmbarcaderoAppSecret_example; // String | 
var xEmbarcaderoMasterSecret = xEmbarcaderoMasterSecret_example; // String | 
var skip = 8.14; // num | users skipped
var limit = 8.14; // num | maximum number of results to return
var order = 8.14; // num | order ascending or descending (asc, desc)
var where = where_example; // String | filter operators (lt, lte, gt, gte, eq, neq, like, nlike)

try { 
    var result = api_instance.getUsers(xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret, skip, limit, order, where);
    print(result);
} catch (e) {
    print("Exception when calling UsersApi->getUsers: $e\n");
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

[**List<UserObject>**](UserObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **loginUser**
> UserTokenObject loginUser(body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Log In

 |      Logs in to the EMS Server with a specific EMS User.

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UsersApi();
var body = new UserCredentialsObject(); // UserCredentialsObject | A user object
var xEmbarcaderoApplicationId = xEmbarcaderoApplicationId_example; // String | 
var xEmbarcaderoAppSecret = xEmbarcaderoAppSecret_example; // String | 
var xEmbarcaderoMasterSecret = xEmbarcaderoMasterSecret_example; // String | 

try { 
    var result = api_instance.loginUser(body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
    print(result);
} catch (e) {
    print("Exception when calling UsersApi->loginUser: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**UserCredentialsObject**](UserCredentialsObject.md)| A user object | 
 **xEmbarcaderoApplicationId** | **String**|  | [optional] 
 **xEmbarcaderoAppSecret** | **String**|  | [optional] 
 **xEmbarcaderoMasterSecret** | **String**|  | [optional] 

### Return type

[**UserTokenObject**](UserTokenObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **logoutUser**
> logoutUser(xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

sPostLogoutSummaryTitle

sPostLogoutSummaryDesc

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UsersApi();
var xEmbarcaderoApplicationId = xEmbarcaderoApplicationId_example; // String | 
var xEmbarcaderoAppSecret = xEmbarcaderoAppSecret_example; // String | 
var xEmbarcaderoMasterSecret = xEmbarcaderoMasterSecret_example; // String | 

try { 
    api_instance.logoutUser(xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
} catch (e) {
    print("Exception when calling UsersApi->logoutUser: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
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

# **signupUser**
> UserSignUpResponseObject signupUser(body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Sign Up  User

 |      Signs up to the EMS Server with an appropriate EMS User.

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UsersApi();
var body = new UserCredentialsObject(); // UserCredentialsObject | Object to sign up a new EMS User in the EMS Server
var xEmbarcaderoApplicationId = xEmbarcaderoApplicationId_example; // String | 
var xEmbarcaderoAppSecret = xEmbarcaderoAppSecret_example; // String | 
var xEmbarcaderoMasterSecret = xEmbarcaderoMasterSecret_example; // String | 

try { 
    var result = api_instance.signupUser(body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
    print(result);
} catch (e) {
    print("Exception when calling UsersApi->signupUser: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**UserCredentialsObject**](UserCredentialsObject.md)| Object to sign up a new EMS User in the EMS Server | 
 **xEmbarcaderoApplicationId** | **String**|  | [optional] 
 **xEmbarcaderoAppSecret** | **String**|  | [optional] 
 **xEmbarcaderoMasterSecret** | **String**|  | [optional] 

### Return type

[**UserSignUpResponseObject**](UserSignUpResponseObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateUser**
> UpdatedObject updateUser(id, body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Update User

 |      Used to update a `User`. **id** is the unique EMS User identifier (UID) in the EMS database.

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UsersApi();
var id = id_example; // String | A user ID
var body = new UpdateObject(); // UpdateObject | Add any fieldName
var xEmbarcaderoApplicationId = xEmbarcaderoApplicationId_example; // String | 
var xEmbarcaderoAppSecret = xEmbarcaderoAppSecret_example; // String | 
var xEmbarcaderoMasterSecret = xEmbarcaderoMasterSecret_example; // String | 

try { 
    var result = api_instance.updateUser(id, body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
    print(result);
} catch (e) {
    print("Exception when calling UsersApi->updateUser: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A user ID | 
 **body** | [**UpdateObject**](UpdateObject.md)| Add any fieldName | 
 **xEmbarcaderoApplicationId** | **String**|  | [optional] 
 **xEmbarcaderoAppSecret** | **String**|  | [optional] 
 **xEmbarcaderoMasterSecret** | **String**|  | [optional] 

### Return type

[**UpdatedObject**](UpdatedObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

