# Swagger\Client\PushApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**send**](PushApi.md#send) | **POST** /push | Send Push


# **send**
> send($body, $x_embarcadero_application_id, $x_embarcadero_app_secret, $x_embarcadero_master_secret)

Send Push

Used to send a push notification message to a registered device

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$apiInstance = new Swagger\Client\Api\PushApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$body = new \Swagger\Client\Model\PushObject(); // \Swagger\Client\Model\PushObject | Object containing the Push Message data structure
$x_embarcadero_application_id = "x_embarcadero_application_id_example"; // string | 
$x_embarcadero_app_secret = "x_embarcadero_app_secret_example"; // string | 
$x_embarcadero_master_secret = "x_embarcadero_master_secret_example"; // string | 

try {
    $apiInstance->send($body, $x_embarcadero_application_id, $x_embarcadero_app_secret, $x_embarcadero_master_secret);
} catch (Exception $e) {
    echo 'Exception when calling PushApi->send: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**\Swagger\Client\Model\PushObject**](../Model/PushObject.md)| Object containing the Push Message data structure |
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

