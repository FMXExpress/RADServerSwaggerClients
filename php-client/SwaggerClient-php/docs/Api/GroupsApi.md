# Swagger\Client\GroupsApi

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
> addGroup($body, $x_embarcadero_application_id, $x_embarcadero_app_secret, $x_embarcadero_master_secret)

Add Group

|      Used to add a new `Group` object to the EMS database.

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$apiInstance = new Swagger\Client\Api\GroupsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$body = new \Swagger\Client\Model\GroupAddObject(); // \Swagger\Client\Model\GroupAddObject | Object to sign up a new EMS User in the EMS Server
$x_embarcadero_application_id = "x_embarcadero_application_id_example"; // string | 
$x_embarcadero_app_secret = "x_embarcadero_app_secret_example"; // string | 
$x_embarcadero_master_secret = "x_embarcadero_master_secret_example"; // string | 

try {
    $apiInstance->addGroup($body, $x_embarcadero_application_id, $x_embarcadero_app_secret, $x_embarcadero_master_secret);
} catch (Exception $e) {
    echo 'Exception when calling GroupsApi->addGroup: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**\Swagger\Client\Model\GroupAddObject**](../Model/GroupAddObject.md)| Object to sign up a new EMS User in the EMS Server |
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

# **deleteGroup**
> deleteGroup($item, $x_embarcadero_application_id, $x_embarcadero_app_secret, $x_embarcadero_master_secret)

Delete Group

|      Used to delete a `Group`. **item** is the unique EMS Group name in the EMS database.

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$apiInstance = new Swagger\Client\Api\GroupsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$item = "item_example"; // string | A group name
$x_embarcadero_application_id = "x_embarcadero_application_id_example"; // string | 
$x_embarcadero_app_secret = "x_embarcadero_app_secret_example"; // string | 
$x_embarcadero_master_secret = "x_embarcadero_master_secret_example"; // string | 

try {
    $apiInstance->deleteGroup($item, $x_embarcadero_application_id, $x_embarcadero_app_secret, $x_embarcadero_master_secret);
} catch (Exception $e) {
    echo 'Exception when calling GroupsApi->deleteGroup: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **item** | **string**| A group name |
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

# **getGroup**
> \Swagger\Client\Model\GroupObject getGroup($item, $x_embarcadero_application_id, $x_embarcadero_app_secret, $x_embarcadero_master_secret)

Get Group

|      Used to retrieve all data from a `Group`. **item** is the unique EMS Group name in the EMS database.

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$apiInstance = new Swagger\Client\Api\GroupsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$item = "item_example"; // string | A group name
$x_embarcadero_application_id = "x_embarcadero_application_id_example"; // string | 
$x_embarcadero_app_secret = "x_embarcadero_app_secret_example"; // string | 
$x_embarcadero_master_secret = "x_embarcadero_master_secret_example"; // string | 

try {
    $result = $apiInstance->getGroup($item, $x_embarcadero_application_id, $x_embarcadero_app_secret, $x_embarcadero_master_secret);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling GroupsApi->getGroup: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **item** | **string**| A group name |
 **x_embarcadero_application_id** | **string**|  | [optional]
 **x_embarcadero_app_secret** | **string**|  | [optional]
 **x_embarcadero_master_secret** | **string**|  | [optional]

### Return type

[**\Swagger\Client\Model\GroupObject**](../Model/GroupObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getGroupFields**
> \Swagger\Client\Model\FieldGroupObject[] getGroupFields($x_embarcadero_application_id, $x_embarcadero_app_secret, $x_embarcadero_master_secret)

Get Fields

|      Used to retrieve all the `field names` of the EMS Group (including the custom fields).

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$apiInstance = new Swagger\Client\Api\GroupsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$x_embarcadero_application_id = "x_embarcadero_application_id_example"; // string | 
$x_embarcadero_app_secret = "x_embarcadero_app_secret_example"; // string | 
$x_embarcadero_master_secret = "x_embarcadero_master_secret_example"; // string | 

try {
    $result = $apiInstance->getGroupFields($x_embarcadero_application_id, $x_embarcadero_app_secret, $x_embarcadero_master_secret);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling GroupsApi->getGroupFields: ', $e->getMessage(), PHP_EOL;
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

[**\Swagger\Client\Model\FieldGroupObject[]**](../Model/FieldGroupObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getGroups**
> \Swagger\Client\Model\GroupObject[] getGroups($x_embarcadero_application_id, $x_embarcadero_app_secret, $x_embarcadero_master_secret, $skip, $limit, $order, $where)

Get Groups

|      Used to retrieve all data from `Groups`.      Optional query param of **skip, limit, order, where** determines       size of returned array, filtered and order by.

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$apiInstance = new Swagger\Client\Api\GroupsApi(
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
    $result = $apiInstance->getGroups($x_embarcadero_application_id, $x_embarcadero_app_secret, $x_embarcadero_master_secret, $skip, $limit, $order, $where);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling GroupsApi->getGroups: ', $e->getMessage(), PHP_EOL;
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

[**\Swagger\Client\Model\GroupObject[]**](../Model/GroupObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **updateGroup**
> \Swagger\Client\Model\UpdatedGroupObject updateGroup($item, $body, $x_embarcadero_application_id, $x_embarcadero_app_secret, $x_embarcadero_master_secret)

Update Group

|      Used to update a `Group`. **item** is the unique EMS Group name in the EMS database.

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$apiInstance = new Swagger\Client\Api\GroupsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$item = "item_example"; // string | A group name
$body = new \Swagger\Client\Model\UpdateGroupObject(); // \Swagger\Client\Model\UpdateGroupObject | Object to sign up a new EMS User in the EMS Server
$x_embarcadero_application_id = "x_embarcadero_application_id_example"; // string | 
$x_embarcadero_app_secret = "x_embarcadero_app_secret_example"; // string | 
$x_embarcadero_master_secret = "x_embarcadero_master_secret_example"; // string | 

try {
    $result = $apiInstance->updateGroup($item, $body, $x_embarcadero_application_id, $x_embarcadero_app_secret, $x_embarcadero_master_secret);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling GroupsApi->updateGroup: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **item** | **string**| A group name |
 **body** | [**\Swagger\Client\Model\UpdateGroupObject**](../Model/UpdateGroupObject.md)| Object to sign up a new EMS User in the EMS Server |
 **x_embarcadero_application_id** | **string**|  | [optional]
 **x_embarcadero_app_secret** | **string**|  | [optional]
 **x_embarcadero_master_secret** | **string**|  | [optional]

### Return type

[**\Swagger\Client\Model\UpdatedGroupObject**](../Model/UpdatedGroupObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

