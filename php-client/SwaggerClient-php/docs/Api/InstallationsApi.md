# Swagger\Client\InstallationsApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addInstallation**](InstallationsApi.md#addInstallation) | **POST** /installations | Add Installation
[**deleteInstallation**](InstallationsApi.md#deleteInstallation) | **DELETE** /installations/{id} | Delete Installation
[**getChannels**](InstallationsApi.md#getChannels) | **GET** /installations/channels | Get Installation Channels
[**getInstallation**](InstallationsApi.md#getInstallation) | **GET** /installations/{id} | Get Installation
[**getInstallationFields**](InstallationsApi.md#getInstallationFields) | **GET** /installations/fields | Get Fields
[**getInstallations**](InstallationsApi.md#getInstallations) | **GET** /installations | Get Installations
[**updateInstallation**](InstallationsApi.md#updateInstallation) | **PUT** /installations/{id} | Update Installation


# **addInstallation**
> \Swagger\Client\Model\InstallationAddedObject addInstallation($body, $x_embarcadero_application_id, $x_embarcadero_app_secret, $x_embarcadero_master_secret)

Add Installation

|      Used to add a new `Installation` object to the EMS database.

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$apiInstance = new Swagger\Client\Api\InstallationsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$body = new \Swagger\Client\Model\InstallationAddObject(); // \Swagger\Client\Model\InstallationAddObject | Object to sign up a new EMS User in the EMS Server
$x_embarcadero_application_id = "x_embarcadero_application_id_example"; // string | 
$x_embarcadero_app_secret = "x_embarcadero_app_secret_example"; // string | 
$x_embarcadero_master_secret = "x_embarcadero_master_secret_example"; // string | 

try {
    $result = $apiInstance->addInstallation($body, $x_embarcadero_application_id, $x_embarcadero_app_secret, $x_embarcadero_master_secret);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling InstallationsApi->addInstallation: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**\Swagger\Client\Model\InstallationAddObject**](../Model/InstallationAddObject.md)| Object to sign up a new EMS User in the EMS Server |
 **x_embarcadero_application_id** | **string**|  | [optional]
 **x_embarcadero_app_secret** | **string**|  | [optional]
 **x_embarcadero_master_secret** | **string**|  | [optional]

### Return type

[**\Swagger\Client\Model\InstallationAddedObject**](../Model/InstallationAddedObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **deleteInstallation**
> deleteInstallation($id, $x_embarcadero_application_id, $x_embarcadero_app_secret, $x_embarcadero_master_secret)

Delete Installation

|      Used to delete an `Installation`. **id** is the unique EMS Installation identifier (IID) in the EMS database.

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$apiInstance = new Swagger\Client\Api\InstallationsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$id = "id_example"; // string | A Installation ID
$x_embarcadero_application_id = "x_embarcadero_application_id_example"; // string | 
$x_embarcadero_app_secret = "x_embarcadero_app_secret_example"; // string | 
$x_embarcadero_master_secret = "x_embarcadero_master_secret_example"; // string | 

try {
    $apiInstance->deleteInstallation($id, $x_embarcadero_application_id, $x_embarcadero_app_secret, $x_embarcadero_master_secret);
} catch (Exception $e) {
    echo 'Exception when calling InstallationsApi->deleteInstallation: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| A Installation ID |
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

# **getChannels**
> \Swagger\Client\Model\ChannelName[] getChannels($x_embarcadero_application_id, $x_embarcadero_app_secret, $x_embarcadero_master_secret)

Get Installation Channels

|       Used to retrieve the available channels to which the device has subscribed. **id** is the unique EMS Installation identifier (InstallationID) in the EMS database.

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$apiInstance = new Swagger\Client\Api\InstallationsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$x_embarcadero_application_id = "x_embarcadero_application_id_example"; // string | 
$x_embarcadero_app_secret = "x_embarcadero_app_secret_example"; // string | 
$x_embarcadero_master_secret = "x_embarcadero_master_secret_example"; // string | 

try {
    $result = $apiInstance->getChannels($x_embarcadero_application_id, $x_embarcadero_app_secret, $x_embarcadero_master_secret);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling InstallationsApi->getChannels: ', $e->getMessage(), PHP_EOL;
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

[**\Swagger\Client\Model\ChannelName[]**](../Model/ChannelName.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getInstallation**
> \Swagger\Client\Model\InstallationObject getInstallation($id, $x_embarcadero_application_id, $x_embarcadero_app_secret, $x_embarcadero_master_secret)

Get Installation

|      Used to retrieve all data from a specific `Installation` (registered device). **id** is the unique EMS Installation identifier (InstallationID) in the EMS database.

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$apiInstance = new Swagger\Client\Api\InstallationsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$id = "id_example"; // string | A Installation ID
$x_embarcadero_application_id = "x_embarcadero_application_id_example"; // string | 
$x_embarcadero_app_secret = "x_embarcadero_app_secret_example"; // string | 
$x_embarcadero_master_secret = "x_embarcadero_master_secret_example"; // string | 

try {
    $result = $apiInstance->getInstallation($id, $x_embarcadero_application_id, $x_embarcadero_app_secret, $x_embarcadero_master_secret);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling InstallationsApi->getInstallation: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| A Installation ID |
 **x_embarcadero_application_id** | **string**|  | [optional]
 **x_embarcadero_app_secret** | **string**|  | [optional]
 **x_embarcadero_master_secret** | **string**|  | [optional]

### Return type

[**\Swagger\Client\Model\InstallationObject**](../Model/InstallationObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getInstallationFields**
> \Swagger\Client\Model\FieldInstallationObject[] getInstallationFields($x_embarcadero_application_id, $x_embarcadero_app_secret, $x_embarcadero_master_secret)

Get Fields

|      Used to retrieve all the `field names` of the EMS Installation (including the custom fields).

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$apiInstance = new Swagger\Client\Api\InstallationsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$x_embarcadero_application_id = "x_embarcadero_application_id_example"; // string | 
$x_embarcadero_app_secret = "x_embarcadero_app_secret_example"; // string | 
$x_embarcadero_master_secret = "x_embarcadero_master_secret_example"; // string | 

try {
    $result = $apiInstance->getInstallationFields($x_embarcadero_application_id, $x_embarcadero_app_secret, $x_embarcadero_master_secret);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling InstallationsApi->getInstallationFields: ', $e->getMessage(), PHP_EOL;
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

[**\Swagger\Client\Model\FieldInstallationObject[]**](../Model/FieldInstallationObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getInstallations**
> \Swagger\Client\Model\InstallationObject[] getInstallations($x_embarcadero_application_id, $x_embarcadero_app_secret, $x_embarcadero_master_secret, $skip, $limit, $order, $where)

Get Installations

|      Used to retrieve all data from `Installation`.      Optional query param of **skip, limit, order, where** determines       size of returned array, filtered and order by.

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$apiInstance = new Swagger\Client\Api\InstallationsApi(
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
    $result = $apiInstance->getInstallations($x_embarcadero_application_id, $x_embarcadero_app_secret, $x_embarcadero_master_secret, $skip, $limit, $order, $where);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling InstallationsApi->getInstallations: ', $e->getMessage(), PHP_EOL;
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

[**\Swagger\Client\Model\InstallationObject[]**](../Model/InstallationObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **updateInstallation**
> \Swagger\Client\Model\UpdatedInstallationObject updateInstallation($id, $body, $x_embarcadero_application_id, $x_embarcadero_app_secret, $x_embarcadero_master_secret)

Update Installation

|      Used to update an `Installation`. **id** is the unique EMS Installation identifier (IID) in the EMS database.

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$apiInstance = new Swagger\Client\Api\InstallationsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$id = "id_example"; // string | A Installation ID
$body = new \Swagger\Client\Model\UpdateInstallationObject(); // \Swagger\Client\Model\UpdateInstallationObject | Installation fields to update
$x_embarcadero_application_id = "x_embarcadero_application_id_example"; // string | 
$x_embarcadero_app_secret = "x_embarcadero_app_secret_example"; // string | 
$x_embarcadero_master_secret = "x_embarcadero_master_secret_example"; // string | 

try {
    $result = $apiInstance->updateInstallation($id, $body, $x_embarcadero_application_id, $x_embarcadero_app_secret, $x_embarcadero_master_secret);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling InstallationsApi->updateInstallation: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| A Installation ID |
 **body** | [**\Swagger\Client\Model\UpdateInstallationObject**](../Model/UpdateInstallationObject.md)| Installation fields to update |
 **x_embarcadero_application_id** | **string**|  | [optional]
 **x_embarcadero_app_secret** | **string**|  | [optional]
 **x_embarcadero_master_secret** | **string**|  | [optional]

### Return type

[**\Swagger\Client\Model\UpdatedInstallationObject**](../Model/UpdatedInstallationObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

