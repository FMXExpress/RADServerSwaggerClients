# Swagger\Client\ApiDocApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**aPI**](ApiDocApi.md#aPI) | **GET** /api | Get API EndPoints
[**getAPIJSONFormat**](ApiDocApi.md#getAPIJSONFormat) | **GET** /api/apidoc.json | Get JSON
[**getAPIYAMLFormat**](ApiDocApi.md#getAPIYAMLFormat) | **GET** /api/apidoc.yaml | Get YAML
[**getAPIYAMLFormatEndPoint**](ApiDocApi.md#getAPIYAMLFormatEndPoint) | **GET** /api/{item}/apidoc.yaml | Get API EndPoint


# **aPI**
> aPI($x_embarcadero_application_id, $x_embarcadero_app_secret, $x_embarcadero_master_secret)

Get API EndPoints

|      Used to retrieve all the API EndPoints.

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$apiInstance = new Swagger\Client\Api\ApiDocApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$x_embarcadero_application_id = "x_embarcadero_application_id_example"; // string | 
$x_embarcadero_app_secret = "x_embarcadero_app_secret_example"; // string | 
$x_embarcadero_master_secret = "x_embarcadero_master_secret_example"; // string | 

try {
    $apiInstance->aPI($x_embarcadero_application_id, $x_embarcadero_app_secret, $x_embarcadero_master_secret);
} catch (Exception $e) {
    echo 'Exception when calling ApiDocApi->aPI: ', $e->getMessage(), PHP_EOL;
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

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getAPIJSONFormat**
> getAPIJSONFormat($x_embarcadero_application_id, $x_embarcadero_app_secret, $x_embarcadero_master_secret)

Get JSON

Get API in JSON format

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$apiInstance = new Swagger\Client\Api\ApiDocApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$x_embarcadero_application_id = "x_embarcadero_application_id_example"; // string | 
$x_embarcadero_app_secret = "x_embarcadero_app_secret_example"; // string | 
$x_embarcadero_master_secret = "x_embarcadero_master_secret_example"; // string | 

try {
    $apiInstance->getAPIJSONFormat($x_embarcadero_application_id, $x_embarcadero_app_secret, $x_embarcadero_master_secret);
} catch (Exception $e) {
    echo 'Exception when calling ApiDocApi->getAPIJSONFormat: ', $e->getMessage(), PHP_EOL;
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

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getAPIYAMLFormat**
> getAPIYAMLFormat($x_embarcadero_application_id, $x_embarcadero_app_secret, $x_embarcadero_master_secret)

Get YAML

Get API in YAML format

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$apiInstance = new Swagger\Client\Api\ApiDocApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$x_embarcadero_application_id = "x_embarcadero_application_id_example"; // string | 
$x_embarcadero_app_secret = "x_embarcadero_app_secret_example"; // string | 
$x_embarcadero_master_secret = "x_embarcadero_master_secret_example"; // string | 

try {
    $apiInstance->getAPIYAMLFormat($x_embarcadero_application_id, $x_embarcadero_app_secret, $x_embarcadero_master_secret);
} catch (Exception $e) {
    echo 'Exception when calling ApiDocApi->getAPIYAMLFormat: ', $e->getMessage(), PHP_EOL;
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

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getAPIYAMLFormatEndPoint**
> getAPIYAMLFormatEndPoint($item, $x_embarcadero_application_id, $x_embarcadero_app_secret, $x_embarcadero_master_secret)

Get API EndPoint

|      Used to retrieve an EndPoint for the API EndPoints.

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$apiInstance = new Swagger\Client\Api\ApiDocApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$item = "item_example"; // string | Path Segment to an EndPoint
$x_embarcadero_application_id = "x_embarcadero_application_id_example"; // string | 
$x_embarcadero_app_secret = "x_embarcadero_app_secret_example"; // string | 
$x_embarcadero_master_secret = "x_embarcadero_master_secret_example"; // string | 

try {
    $apiInstance->getAPIYAMLFormatEndPoint($item, $x_embarcadero_application_id, $x_embarcadero_app_secret, $x_embarcadero_master_secret);
} catch (Exception $e) {
    echo 'Exception when calling ApiDocApi->getAPIYAMLFormatEndPoint: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **item** | **string**| Path Segment to an EndPoint |
 **x_embarcadero_application_id** | **string**|  | [optional]
 **x_embarcadero_app_secret** | **string**|  | [optional]
 **x_embarcadero_master_secret** | **string**|  | [optional]

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

