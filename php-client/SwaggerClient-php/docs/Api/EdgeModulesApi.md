# Swagger\Client\EdgeModulesApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getModule**](EdgeModulesApi.md#getModule) | **GET** /edgemodules/{mname} | Get Module
[**getModuleResource**](EdgeModulesApi.md#getModuleResource) | **GET** /edgemodules/{mname}/resources/{name} | Get EdgeModule Resource
[**getModuleResources**](EdgeModulesApi.md#getModuleResources) | **GET** /edgemodules/{mname}/resources | Get EdgeModule Resources
[**getModules**](EdgeModulesApi.md#getModules) | **GET** /edgemodules | Get Module
[**getModulesFields**](EdgeModulesApi.md#getModulesFields) | **GET** /edgemodules/fields | Get Fields
[**getResources**](EdgeModulesApi.md#getResources) | **GET** /edgemodules/resources | Get EdgeModules Resources
[**getResourcesFields**](EdgeModulesApi.md#getResourcesFields) | **GET** /edgemodules/resources/fields | Get Resource Fields
[**registerModule**](EdgeModulesApi.md#registerModule) | **POST** /edgemodules | Add Module
[**registerModuleResource**](EdgeModulesApi.md#registerModuleResource) | **POST** /edgemodules/{mname}/resources | Add Module Resource
[**unregisterModule**](EdgeModulesApi.md#unregisterModule) | **DELETE** /edgemodules/{mname} | Delete Module
[**unregisterModuleResource**](EdgeModulesApi.md#unregisterModuleResource) | **DELETE** /edgemodules/{mname}/resources/{name} | Delete Module Resource
[**updateModule**](EdgeModulesApi.md#updateModule) | **PUT** /edgemodules/{mname} | Update Module
[**updateModuleResource**](EdgeModulesApi.md#updateModuleResource) | **PUT** /edgemodules/{mname}/resources/{name} | Update Module Resource


# **getModule**
> \Swagger\Client\Model\EdgeModuleObject getModule($mname, $x_embarcadero_application_id, $x_embarcadero_app_secret, $x_embarcadero_master_secret)

Get Module

|      Used to retrieve all data from `EdgeModule`.      Optional query param of **skip, limit, order, where** determines       size of returned array, filtered and order by.

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$apiInstance = new Swagger\Client\Api\EdgeModulesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$mname = "mname_example"; // string | Is the unique EMS EdgeModule identifier
$x_embarcadero_application_id = "x_embarcadero_application_id_example"; // string | 
$x_embarcadero_app_secret = "x_embarcadero_app_secret_example"; // string | 
$x_embarcadero_master_secret = "x_embarcadero_master_secret_example"; // string | 

try {
    $result = $apiInstance->getModule($mname, $x_embarcadero_application_id, $x_embarcadero_app_secret, $x_embarcadero_master_secret);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling EdgeModulesApi->getModule: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **string**| Is the unique EMS EdgeModule identifier |
 **x_embarcadero_application_id** | **string**|  | [optional]
 **x_embarcadero_app_secret** | **string**|  | [optional]
 **x_embarcadero_master_secret** | **string**|  | [optional]

### Return type

[**\Swagger\Client\Model\EdgeModuleObject**](../Model/EdgeModuleObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getModuleResource**
> \Swagger\Client\Model\EdgeModuleResourceObject getModuleResource($mname, $name, $x_embarcadero_application_id, $x_embarcadero_app_secret, $x_embarcadero_master_secret)

Get EdgeModule Resource

|      Used to retrieve all data from a resource of an EdgeModule. **mname** is the unique EMS EdgeModule identifier in the EMS database. **resourcename** is the name of the resource.

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$apiInstance = new Swagger\Client\Api\EdgeModulesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$mname = "mname_example"; // string | Is the unique EMS EdgeModule identifier
$name = "name_example"; // string | Is the unique EMS EdgeModule Resource name
$x_embarcadero_application_id = "x_embarcadero_application_id_example"; // string | 
$x_embarcadero_app_secret = "x_embarcadero_app_secret_example"; // string | 
$x_embarcadero_master_secret = "x_embarcadero_master_secret_example"; // string | 

try {
    $result = $apiInstance->getModuleResource($mname, $name, $x_embarcadero_application_id, $x_embarcadero_app_secret, $x_embarcadero_master_secret);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling EdgeModulesApi->getModuleResource: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **string**| Is the unique EMS EdgeModule identifier |
 **name** | **string**| Is the unique EMS EdgeModule Resource name |
 **x_embarcadero_application_id** | **string**|  | [optional]
 **x_embarcadero_app_secret** | **string**|  | [optional]
 **x_embarcadero_master_secret** | **string**|  | [optional]

### Return type

[**\Swagger\Client\Model\EdgeModuleResourceObject**](../Model/EdgeModuleResourceObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getModuleResources**
> \Swagger\Client\Model\EdgeModuleResourceObject[] getModuleResources($mname, $x_embarcadero_application_id, $x_embarcadero_app_secret, $x_embarcadero_master_secret)

Get EdgeModule Resources

|      Used to retrieve all data from the resources of an EdgeModule.

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$apiInstance = new Swagger\Client\Api\EdgeModulesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$mname = "mname_example"; // string | Is the unique EMS EdgeModule identifier
$x_embarcadero_application_id = "x_embarcadero_application_id_example"; // string | 
$x_embarcadero_app_secret = "x_embarcadero_app_secret_example"; // string | 
$x_embarcadero_master_secret = "x_embarcadero_master_secret_example"; // string | 

try {
    $result = $apiInstance->getModuleResources($mname, $x_embarcadero_application_id, $x_embarcadero_app_secret, $x_embarcadero_master_secret);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling EdgeModulesApi->getModuleResources: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **string**| Is the unique EMS EdgeModule identifier |
 **x_embarcadero_application_id** | **string**|  | [optional]
 **x_embarcadero_app_secret** | **string**|  | [optional]
 **x_embarcadero_master_secret** | **string**|  | [optional]

### Return type

[**\Swagger\Client\Model\EdgeModuleResourceObject[]**](../Model/EdgeModuleResourceObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getModules**
> \Swagger\Client\Model\EdgeModuleObject[] getModules($x_embarcadero_application_id, $x_embarcadero_app_secret, $x_embarcadero_master_secret)

Get Module

|      Used to retrieve all data from `EdgeModule`.      Optional query param of **skip, limit, order, where** determines       size of returned array, filtered and order by.

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$apiInstance = new Swagger\Client\Api\EdgeModulesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$x_embarcadero_application_id = "x_embarcadero_application_id_example"; // string | 
$x_embarcadero_app_secret = "x_embarcadero_app_secret_example"; // string | 
$x_embarcadero_master_secret = "x_embarcadero_master_secret_example"; // string | 

try {
    $result = $apiInstance->getModules($x_embarcadero_application_id, $x_embarcadero_app_secret, $x_embarcadero_master_secret);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling EdgeModulesApi->getModules: ', $e->getMessage(), PHP_EOL;
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

[**\Swagger\Client\Model\EdgeModuleObject[]**](../Model/EdgeModuleObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getModulesFields**
> \Swagger\Client\Model\FieldsEdgeModuleObject getModulesFields($x_embarcadero_application_id, $x_embarcadero_app_secret, $x_embarcadero_master_secret)

Get Fields

|      Used to retrieve all the `field names` of the EMS EdgeModule (including the custom fields).

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$apiInstance = new Swagger\Client\Api\EdgeModulesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$x_embarcadero_application_id = "x_embarcadero_application_id_example"; // string | 
$x_embarcadero_app_secret = "x_embarcadero_app_secret_example"; // string | 
$x_embarcadero_master_secret = "x_embarcadero_master_secret_example"; // string | 

try {
    $result = $apiInstance->getModulesFields($x_embarcadero_application_id, $x_embarcadero_app_secret, $x_embarcadero_master_secret);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling EdgeModulesApi->getModulesFields: ', $e->getMessage(), PHP_EOL;
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

[**\Swagger\Client\Model\FieldsEdgeModuleObject**](../Model/FieldsEdgeModuleObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getResources**
> \Swagger\Client\Model\EdgeModuleResourceObject[] getResources($x_embarcadero_application_id, $x_embarcadero_app_secret, $x_embarcadero_master_secret)

Get EdgeModules Resources

|      Used to retrieve all data from the resources of all EdgeModules.

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$apiInstance = new Swagger\Client\Api\EdgeModulesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$x_embarcadero_application_id = "x_embarcadero_application_id_example"; // string | 
$x_embarcadero_app_secret = "x_embarcadero_app_secret_example"; // string | 
$x_embarcadero_master_secret = "x_embarcadero_master_secret_example"; // string | 

try {
    $result = $apiInstance->getResources($x_embarcadero_application_id, $x_embarcadero_app_secret, $x_embarcadero_master_secret);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling EdgeModulesApi->getResources: ', $e->getMessage(), PHP_EOL;
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

[**\Swagger\Client\Model\EdgeModuleResourceObject[]**](../Model/EdgeModuleResourceObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getResourcesFields**
> \Swagger\Client\Model\FieldsEdgeModuleObject getResourcesFields($x_embarcadero_application_id, $x_embarcadero_app_secret, $x_embarcadero_master_secret)

Get Resource Fields

|      Used to retrieve the `field names` of all the resources of the EMS EdgeModule (including the custom fields).

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$apiInstance = new Swagger\Client\Api\EdgeModulesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$x_embarcadero_application_id = "x_embarcadero_application_id_example"; // string | 
$x_embarcadero_app_secret = "x_embarcadero_app_secret_example"; // string | 
$x_embarcadero_master_secret = "x_embarcadero_master_secret_example"; // string | 

try {
    $result = $apiInstance->getResourcesFields($x_embarcadero_application_id, $x_embarcadero_app_secret, $x_embarcadero_master_secret);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling EdgeModulesApi->getResourcesFields: ', $e->getMessage(), PHP_EOL;
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

[**\Swagger\Client\Model\FieldsEdgeModuleObject**](../Model/FieldsEdgeModuleObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **registerModule**
> \Swagger\Client\Model\EdgeModuleAddedObject registerModule($body, $x_embarcadero_application_id, $x_embarcadero_app_secret, $x_embarcadero_master_secret)

Add Module

|      Used to add a new `EdgeModule` object to the EMS database.

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$apiInstance = new Swagger\Client\Api\EdgeModulesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$body = new \Swagger\Client\Model\EdgeModuleAddObject(); // \Swagger\Client\Model\EdgeModuleAddObject | EdgeModule object to add. protocolprops example string {\\\"port\\\":8082,\\\"host\\\":\\\"10.150.40.52\\\"}
$x_embarcadero_application_id = "x_embarcadero_application_id_example"; // string | 
$x_embarcadero_app_secret = "x_embarcadero_app_secret_example"; // string | 
$x_embarcadero_master_secret = "x_embarcadero_master_secret_example"; // string | 

try {
    $result = $apiInstance->registerModule($body, $x_embarcadero_application_id, $x_embarcadero_app_secret, $x_embarcadero_master_secret);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling EdgeModulesApi->registerModule: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**\Swagger\Client\Model\EdgeModuleAddObject**](../Model/EdgeModuleAddObject.md)| EdgeModule object to add. protocolprops example string {\\\&quot;port\\\&quot;:8082,\\\&quot;host\\\&quot;:\\\&quot;10.150.40.52\\\&quot;} |
 **x_embarcadero_application_id** | **string**|  | [optional]
 **x_embarcadero_app_secret** | **string**|  | [optional]
 **x_embarcadero_master_secret** | **string**|  | [optional]

### Return type

[**\Swagger\Client\Model\EdgeModuleAddedObject**](../Model/EdgeModuleAddedObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **registerModuleResource**
> \Swagger\Client\Model\EdgeModuleResourceAddedObject registerModuleResource($mname, $body, $x_embarcadero_application_id, $x_embarcadero_app_secret, $x_embarcadero_master_secret)

Add Module Resource

|      Used to register a new resource from an EMS EdgeModule. **mname** is the unique EMS EdgeModule identifier in the EMS database.

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$apiInstance = new Swagger\Client\Api\EdgeModulesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$mname = "mname_example"; // string | Is the unique EMS EdgeModule identifier
$body = new \Swagger\Client\Model\EdgeModuleResourceAddObject(); // \Swagger\Client\Model\EdgeModuleResourceAddObject | EdgModule Resource add object. protocolprops string example {\\\"port\\\":8082,\\\"host\\\":\\\"10.150.40.52\\\"}
$x_embarcadero_application_id = "x_embarcadero_application_id_example"; // string | 
$x_embarcadero_app_secret = "x_embarcadero_app_secret_example"; // string | 
$x_embarcadero_master_secret = "x_embarcadero_master_secret_example"; // string | 

try {
    $result = $apiInstance->registerModuleResource($mname, $body, $x_embarcadero_application_id, $x_embarcadero_app_secret, $x_embarcadero_master_secret);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling EdgeModulesApi->registerModuleResource: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **string**| Is the unique EMS EdgeModule identifier |
 **body** | [**\Swagger\Client\Model\EdgeModuleResourceAddObject**](../Model/EdgeModuleResourceAddObject.md)| EdgModule Resource add object. protocolprops string example {\\\&quot;port\\\&quot;:8082,\\\&quot;host\\\&quot;:\\\&quot;10.150.40.52\\\&quot;} |
 **x_embarcadero_application_id** | **string**|  | [optional]
 **x_embarcadero_app_secret** | **string**|  | [optional]
 **x_embarcadero_master_secret** | **string**|  | [optional]

### Return type

[**\Swagger\Client\Model\EdgeModuleResourceAddedObject**](../Model/EdgeModuleResourceAddedObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **unregisterModule**
> unregisterModule($mname, $x_embarcadero_application_id, $x_embarcadero_app_secret, $x_embarcadero_master_secret)

Delete Module

|      Used to delete an `EdgeModule Resource`. **mname** is the unique EMS EdgeModule identifier (MID) in the EMS database. **resourcename** is the name of the resource.

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$apiInstance = new Swagger\Client\Api\EdgeModulesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$mname = "mname_example"; // string | Is the unique EMS EdgeModule identifier
$x_embarcadero_application_id = "x_embarcadero_application_id_example"; // string | 
$x_embarcadero_app_secret = "x_embarcadero_app_secret_example"; // string | 
$x_embarcadero_master_secret = "x_embarcadero_master_secret_example"; // string | 

try {
    $apiInstance->unregisterModule($mname, $x_embarcadero_application_id, $x_embarcadero_app_secret, $x_embarcadero_master_secret);
} catch (Exception $e) {
    echo 'Exception when calling EdgeModulesApi->unregisterModule: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **string**| Is the unique EMS EdgeModule identifier |
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

# **unregisterModuleResource**
> unregisterModuleResource($mname, $name, $x_embarcadero_application_id, $x_embarcadero_app_secret, $x_embarcadero_master_secret)

Delete Module Resource

|      Used to delete an `EdgeModule Resource`. **mname** is the unique EMS EdgeModule identifier (MID) in the EMS database. **resourcename** is the name of the resource.

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$apiInstance = new Swagger\Client\Api\EdgeModulesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$mname = "mname_example"; // string | Is the unique EMS EdgeModule identifier
$name = "name_example"; // string | Is the unique EMS EdgeModule Resource name
$x_embarcadero_application_id = "x_embarcadero_application_id_example"; // string | 
$x_embarcadero_app_secret = "x_embarcadero_app_secret_example"; // string | 
$x_embarcadero_master_secret = "x_embarcadero_master_secret_example"; // string | 

try {
    $apiInstance->unregisterModuleResource($mname, $name, $x_embarcadero_application_id, $x_embarcadero_app_secret, $x_embarcadero_master_secret);
} catch (Exception $e) {
    echo 'Exception when calling EdgeModulesApi->unregisterModuleResource: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **string**| Is the unique EMS EdgeModule identifier |
 **name** | **string**| Is the unique EMS EdgeModule Resource name |
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

# **updateModule**
> \Swagger\Client\Model\EdgeModuleUpdatedObject updateModule($mname, $body, $x_embarcadero_application_id, $x_embarcadero_app_secret, $x_embarcadero_master_secret)

Update Module

|      Used to update an `EdgeModule`. **mname** is the unique EMS EdgeModule identifier (MID) in the EMS database.

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$apiInstance = new Swagger\Client\Api\EdgeModulesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$mname = "mname_example"; // string | Is the unique EMS EdgeModule identifier
$body = new \Swagger\Client\Model\EdgeModuleUpdateObject(); // \Swagger\Client\Model\EdgeModuleUpdateObject | EdgModule Resource add object. protocolprops string example {\\\"port\\\":8082,\\\"host\\\":\\\"10.150.40.52\\\"}
$x_embarcadero_application_id = "x_embarcadero_application_id_example"; // string | 
$x_embarcadero_app_secret = "x_embarcadero_app_secret_example"; // string | 
$x_embarcadero_master_secret = "x_embarcadero_master_secret_example"; // string | 

try {
    $result = $apiInstance->updateModule($mname, $body, $x_embarcadero_application_id, $x_embarcadero_app_secret, $x_embarcadero_master_secret);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling EdgeModulesApi->updateModule: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **string**| Is the unique EMS EdgeModule identifier |
 **body** | [**\Swagger\Client\Model\EdgeModuleUpdateObject**](../Model/EdgeModuleUpdateObject.md)| EdgModule Resource add object. protocolprops string example {\\\&quot;port\\\&quot;:8082,\\\&quot;host\\\&quot;:\\\&quot;10.150.40.52\\\&quot;} |
 **x_embarcadero_application_id** | **string**|  | [optional]
 **x_embarcadero_app_secret** | **string**|  | [optional]
 **x_embarcadero_master_secret** | **string**|  | [optional]

### Return type

[**\Swagger\Client\Model\EdgeModuleUpdatedObject**](../Model/EdgeModuleUpdatedObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **updateModuleResource**
> \Swagger\Client\Model\EdgeModuleResourceUpdatedObject updateModuleResource($mname, $name, $body, $x_embarcadero_application_id, $x_embarcadero_app_secret, $x_embarcadero_master_secret)

Update Module Resource

|      Used to update an `EdgeModule`. **mname** is the unique EMS EdgeModule identifier (MID) in the EMS database.

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$apiInstance = new Swagger\Client\Api\EdgeModulesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$mname = "mname_example"; // string | Is the unique EMS EdgeModule identifier
$name = "name_example"; // string | Is the unique EMS EdgeModule Resource name
$body = new \Swagger\Client\Model\EdgeModuleResourceUpdateObject(); // \Swagger\Client\Model\EdgeModuleResourceUpdateObject | EdgModule Resource add object. protocolprops string example {\\\"port\\\":8082,\\\"host\\\":\\\"10.150.40.52\\\"}
$x_embarcadero_application_id = "x_embarcadero_application_id_example"; // string | 
$x_embarcadero_app_secret = "x_embarcadero_app_secret_example"; // string | 
$x_embarcadero_master_secret = "x_embarcadero_master_secret_example"; // string | 

try {
    $result = $apiInstance->updateModuleResource($mname, $name, $body, $x_embarcadero_application_id, $x_embarcadero_app_secret, $x_embarcadero_master_secret);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling EdgeModulesApi->updateModuleResource: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **string**| Is the unique EMS EdgeModule identifier |
 **name** | **string**| Is the unique EMS EdgeModule Resource name |
 **body** | [**\Swagger\Client\Model\EdgeModuleResourceUpdateObject**](../Model/EdgeModuleResourceUpdateObject.md)| EdgModule Resource add object. protocolprops string example {\\\&quot;port\\\&quot;:8082,\\\&quot;host\\\&quot;:\\\&quot;10.150.40.52\\\&quot;} |
 **x_embarcadero_application_id** | **string**|  | [optional]
 **x_embarcadero_app_secret** | **string**|  | [optional]
 **x_embarcadero_master_secret** | **string**|  | [optional]

### Return type

[**\Swagger\Client\Model\EdgeModuleResourceUpdatedObject**](../Model/EdgeModuleResourceUpdatedObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

