# Swagger\Client\UsersApi

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
> \Swagger\Client\Model\UseridObject addUser($body, $x_embarcadero_application_id, $x_embarcadero_app_secret, $x_embarcadero_master_secret)

Add User

|      Used to add a new `User` object to the EMS database.

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$apiInstance = new Swagger\Client\Api\UsersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$body = new \Swagger\Client\Model\UserCredentialsObject(); // \Swagger\Client\Model\UserCredentialsObject | Object to add a new EMS User in the EMS Server
$x_embarcadero_application_id = "x_embarcadero_application_id_example"; // string | 
$x_embarcadero_app_secret = "x_embarcadero_app_secret_example"; // string | 
$x_embarcadero_master_secret = "x_embarcadero_master_secret_example"; // string | 

try {
    $result = $apiInstance->addUser($body, $x_embarcadero_application_id, $x_embarcadero_app_secret, $x_embarcadero_master_secret);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UsersApi->addUser: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**\Swagger\Client\Model\UserCredentialsObject**](../Model/UserCredentialsObject.md)| Object to add a new EMS User in the EMS Server |
 **x_embarcadero_application_id** | **string**|  | [optional]
 **x_embarcadero_app_secret** | **string**|  | [optional]
 **x_embarcadero_master_secret** | **string**|  | [optional]

### Return type

[**\Swagger\Client\Model\UseridObject**](../Model/UseridObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **deleteUser**
> deleteUser($id, $x_embarcadero_application_id, $x_embarcadero_app_secret, $x_embarcadero_master_secret)

Delete User

|      Used to delete a `User`. **id** is the unique EMS User identifier (UID) in the EMS database.

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$apiInstance = new Swagger\Client\Api\UsersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$id = "id_example"; // string | A user ID
$x_embarcadero_application_id = "x_embarcadero_application_id_example"; // string | 
$x_embarcadero_app_secret = "x_embarcadero_app_secret_example"; // string | 
$x_embarcadero_master_secret = "x_embarcadero_master_secret_example"; // string | 

try {
    $apiInstance->deleteUser($id, $x_embarcadero_application_id, $x_embarcadero_app_secret, $x_embarcadero_master_secret);
} catch (Exception $e) {
    echo 'Exception when calling UsersApi->deleteUser: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| A user ID |
 **x_embarcadero_application_id** | **string**|  | [optional]
 **x_embarcadero_app_secret** | **string**|  | [optional]
 **x_embarcadero_master_secret** | **string**|  | [optional]

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getUser**
> \Swagger\Client\Model\UserObject getUser($id, $x_embarcadero_application_id, $x_embarcadero_app_secret, $x_embarcadero_master_secret)

Get User

|      Used to retrieve all data from a `User`. **id** is the unique EMS User identifier (UID) in the EMS database.

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$apiInstance = new Swagger\Client\Api\UsersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$id = "id_example"; // string | A user ID
$x_embarcadero_application_id = "x_embarcadero_application_id_example"; // string | 
$x_embarcadero_app_secret = "x_embarcadero_app_secret_example"; // string | 
$x_embarcadero_master_secret = "x_embarcadero_master_secret_example"; // string | 

try {
    $result = $apiInstance->getUser($id, $x_embarcadero_application_id, $x_embarcadero_app_secret, $x_embarcadero_master_secret);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UsersApi->getUser: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| A user ID |
 **x_embarcadero_application_id** | **string**|  | [optional]
 **x_embarcadero_app_secret** | **string**|  | [optional]
 **x_embarcadero_master_secret** | **string**|  | [optional]

### Return type

[**\Swagger\Client\Model\UserObject**](../Model/UserObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getUserFields**
> \Swagger\Client\Model\FieldObject[] getUserFields($x_embarcadero_application_id, $x_embarcadero_app_secret, $x_embarcadero_master_secret)

Get Fields

|      Used to retrieve all the `field names` of the EMS Users (including the custom fields).

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$apiInstance = new Swagger\Client\Api\UsersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$x_embarcadero_application_id = "x_embarcadero_application_id_example"; // string | 
$x_embarcadero_app_secret = "x_embarcadero_app_secret_example"; // string | 
$x_embarcadero_master_secret = "x_embarcadero_master_secret_example"; // string | 

try {
    $result = $apiInstance->getUserFields($x_embarcadero_application_id, $x_embarcadero_app_secret, $x_embarcadero_master_secret);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UsersApi->getUserFields: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_embarcadero_application_id** | **string**|  | [optional]
 **x_embarcadero_app_secret** | **string**|  | [optional]
 **x_embarcadero_master_secret** | **string**|  | [optional]

### Return type

[**\Swagger\Client\Model\FieldObject[]**](../Model/FieldObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getUserGroups**
> \Swagger\Client\Model\GroupName[] getUserGroups($id, $x_embarcadero_application_id, $x_embarcadero_app_secret, $x_embarcadero_master_secret)

Get User Groups

|      Used to retrieve the EMS Groups the EMS User belongs to. **id** is the unique EMS User identifier (UID) in the EMS database.

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$apiInstance = new Swagger\Client\Api\UsersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$id = "id_example"; // string | A user ID
$x_embarcadero_application_id = "x_embarcadero_application_id_example"; // string | 
$x_embarcadero_app_secret = "x_embarcadero_app_secret_example"; // string | 
$x_embarcadero_master_secret = "x_embarcadero_master_secret_example"; // string | 

try {
    $result = $apiInstance->getUserGroups($id, $x_embarcadero_application_id, $x_embarcadero_app_secret, $x_embarcadero_master_secret);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UsersApi->getUserGroups: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| A user ID |
 **x_embarcadero_application_id** | **string**|  | [optional]
 **x_embarcadero_app_secret** | **string**|  | [optional]
 **x_embarcadero_master_secret** | **string**|  | [optional]

### Return type

[**\Swagger\Client\Model\GroupName[]**](../Model/GroupName.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getUsers**
> \Swagger\Client\Model\UserObject[] getUsers($x_embarcadero_application_id, $x_embarcadero_app_secret, $x_embarcadero_master_secret, $skip, $limit, $order, $where)

Get Users

|      Used to retrieve all data from `Users`.      Optional query param of **skip, limit, order, where** determines       size of returned array, filtered and order by.

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$apiInstance = new Swagger\Client\Api\UsersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$x_embarcadero_application_id = "x_embarcadero_application_id_example"; // string | 
$x_embarcadero_app_secret = "x_embarcadero_app_secret_example"; // string | 
$x_embarcadero_master_secret = "x_embarcadero_master_secret_example"; // string | 
$skip = 8.14; // float | users skipped
$limit = 8.14; // float | maximum number of results to return
$order = 8.14; // float | order ascending or descending (asc, desc)
$where = "where_example"; // string | filter operators (lt, lte, gt, gte, eq, neq, like, nlike)

try {
    $result = $apiInstance->getUsers($x_embarcadero_application_id, $x_embarcadero_app_secret, $x_embarcadero_master_secret, $skip, $limit, $order, $where);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UsersApi->getUsers: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_embarcadero_application_id** | **string**|  | [optional]
 **x_embarcadero_app_secret** | **string**|  | [optional]
 **x_embarcadero_master_secret** | **string**|  | [optional]
 **skip** | **float**| users skipped | [optional]
 **limit** | **float**| maximum number of results to return | [optional]
 **order** | **float**| order ascending or descending (asc, desc) | [optional]
 **where** | **string**| filter operators (lt, lte, gt, gte, eq, neq, like, nlike) | [optional]

### Return type

[**\Swagger\Client\Model\UserObject[]**](../Model/UserObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **loginUser**
> \Swagger\Client\Model\UserTokenObject loginUser($body, $x_embarcadero_application_id, $x_embarcadero_app_secret, $x_embarcadero_master_secret)

Log In

|      Logs in to the EMS Server with a specific EMS User.

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$apiInstance = new Swagger\Client\Api\UsersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$body = new \Swagger\Client\Model\UserCredentialsObject(); // \Swagger\Client\Model\UserCredentialsObject | A user object
$x_embarcadero_application_id = "x_embarcadero_application_id_example"; // string | 
$x_embarcadero_app_secret = "x_embarcadero_app_secret_example"; // string | 
$x_embarcadero_master_secret = "x_embarcadero_master_secret_example"; // string | 

try {
    $result = $apiInstance->loginUser($body, $x_embarcadero_application_id, $x_embarcadero_app_secret, $x_embarcadero_master_secret);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UsersApi->loginUser: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**\Swagger\Client\Model\UserCredentialsObject**](../Model/UserCredentialsObject.md)| A user object |
 **x_embarcadero_application_id** | **string**|  | [optional]
 **x_embarcadero_app_secret** | **string**|  | [optional]
 **x_embarcadero_master_secret** | **string**|  | [optional]

### Return type

[**\Swagger\Client\Model\UserTokenObject**](../Model/UserTokenObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **logoutUser**
> logoutUser($x_embarcadero_application_id, $x_embarcadero_app_secret, $x_embarcadero_master_secret)

sPostLogoutSummaryTitle

sPostLogoutSummaryDesc

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$apiInstance = new Swagger\Client\Api\UsersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$x_embarcadero_application_id = "x_embarcadero_application_id_example"; // string | 
$x_embarcadero_app_secret = "x_embarcadero_app_secret_example"; // string | 
$x_embarcadero_master_secret = "x_embarcadero_master_secret_example"; // string | 

try {
    $apiInstance->logoutUser($x_embarcadero_application_id, $x_embarcadero_app_secret, $x_embarcadero_master_secret);
} catch (Exception $e) {
    echo 'Exception when calling UsersApi->logoutUser: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_embarcadero_application_id** | **string**|  | [optional]
 **x_embarcadero_app_secret** | **string**|  | [optional]
 **x_embarcadero_master_secret** | **string**|  | [optional]

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **signupUser**
> \Swagger\Client\Model\UserSignUpResponseObject signupUser($body, $x_embarcadero_application_id, $x_embarcadero_app_secret, $x_embarcadero_master_secret)

Sign Up  User

|      Signs up to the EMS Server with an appropriate EMS User.

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$apiInstance = new Swagger\Client\Api\UsersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$body = new \Swagger\Client\Model\UserCredentialsObject(); // \Swagger\Client\Model\UserCredentialsObject | Object to sign up a new EMS User in the EMS Server
$x_embarcadero_application_id = "x_embarcadero_application_id_example"; // string | 
$x_embarcadero_app_secret = "x_embarcadero_app_secret_example"; // string | 
$x_embarcadero_master_secret = "x_embarcadero_master_secret_example"; // string | 

try {
    $result = $apiInstance->signupUser($body, $x_embarcadero_application_id, $x_embarcadero_app_secret, $x_embarcadero_master_secret);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UsersApi->signupUser: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**\Swagger\Client\Model\UserCredentialsObject**](../Model/UserCredentialsObject.md)| Object to sign up a new EMS User in the EMS Server |
 **x_embarcadero_application_id** | **string**|  | [optional]
 **x_embarcadero_app_secret** | **string**|  | [optional]
 **x_embarcadero_master_secret** | **string**|  | [optional]

### Return type

[**\Swagger\Client\Model\UserSignUpResponseObject**](../Model/UserSignUpResponseObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **updateUser**
> \Swagger\Client\Model\UpdatedObject updateUser($id, $body, $x_embarcadero_application_id, $x_embarcadero_app_secret, $x_embarcadero_master_secret)

Update User

|      Used to update a `User`. **id** is the unique EMS User identifier (UID) in the EMS database.

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$apiInstance = new Swagger\Client\Api\UsersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$id = "id_example"; // string | A user ID
$body = new \Swagger\Client\Model\UpdateObject(); // \Swagger\Client\Model\UpdateObject | Add any fieldName
$x_embarcadero_application_id = "x_embarcadero_application_id_example"; // string | 
$x_embarcadero_app_secret = "x_embarcadero_app_secret_example"; // string | 
$x_embarcadero_master_secret = "x_embarcadero_master_secret_example"; // string | 

try {
    $result = $apiInstance->updateUser($id, $body, $x_embarcadero_application_id, $x_embarcadero_app_secret, $x_embarcadero_master_secret);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UsersApi->updateUser: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| A user ID |
 **body** | [**\Swagger\Client\Model\UpdateObject**](../Model/UpdateObject.md)| Add any fieldName |
 **x_embarcadero_application_id** | **string**|  | [optional]
 **x_embarcadero_app_secret** | **string**|  | [optional]
 **x_embarcadero_master_secret** | **string**|  | [optional]

### Return type

[**\Swagger\Client\Model\UpdatedObject**](../Model/UpdatedObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

