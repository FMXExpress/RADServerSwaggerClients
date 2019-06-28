# WWW::SwaggerClient::ApiDocApi

## Load the API package
```perl
use WWW::SwaggerClient::Object::ApiDocApi;
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**a_pi**](ApiDocApi.md#a_pi) | **GET** /api | Get API EndPoints
[**get_apijson_format**](ApiDocApi.md#get_apijson_format) | **GET** /api/apidoc.json | Get JSON
[**get_apiyaml_format**](ApiDocApi.md#get_apiyaml_format) | **GET** /api/apidoc.yaml | Get YAML
[**get_apiyaml_format_end_point**](ApiDocApi.md#get_apiyaml_format_end_point) | **GET** /api/{item}/apidoc.yaml | Get API EndPoint


# **a_pi**
> a_pi(x_embarcadero_application_id => $x_embarcadero_application_id, x_embarcadero_app_secret => $x_embarcadero_app_secret, x_embarcadero_master_secret => $x_embarcadero_master_secret)

Get API EndPoints

 |      Used to retrieve all the API EndPoints.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::ApiDocApi;
my $api_instance = WWW::SwaggerClient::ApiDocApi->new(
);

my $x_embarcadero_application_id = 'x_embarcadero_application_id_example'; # string | 
my $x_embarcadero_app_secret = 'x_embarcadero_app_secret_example'; # string | 
my $x_embarcadero_master_secret = 'x_embarcadero_master_secret_example'; # string | 

eval { 
    $api_instance->a_pi(x_embarcadero_application_id => $x_embarcadero_application_id, x_embarcadero_app_secret => $x_embarcadero_app_secret, x_embarcadero_master_secret => $x_embarcadero_master_secret);
};
if ($@) {
    warn "Exception when calling ApiDocApi->a_pi: $@\n";
}
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_apijson_format**
> get_apijson_format(x_embarcadero_application_id => $x_embarcadero_application_id, x_embarcadero_app_secret => $x_embarcadero_app_secret, x_embarcadero_master_secret => $x_embarcadero_master_secret)

Get JSON

Get API in JSON format

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::ApiDocApi;
my $api_instance = WWW::SwaggerClient::ApiDocApi->new(
);

my $x_embarcadero_application_id = 'x_embarcadero_application_id_example'; # string | 
my $x_embarcadero_app_secret = 'x_embarcadero_app_secret_example'; # string | 
my $x_embarcadero_master_secret = 'x_embarcadero_master_secret_example'; # string | 

eval { 
    $api_instance->get_apijson_format(x_embarcadero_application_id => $x_embarcadero_application_id, x_embarcadero_app_secret => $x_embarcadero_app_secret, x_embarcadero_master_secret => $x_embarcadero_master_secret);
};
if ($@) {
    warn "Exception when calling ApiDocApi->get_apijson_format: $@\n";
}
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_apiyaml_format**
> get_apiyaml_format(x_embarcadero_application_id => $x_embarcadero_application_id, x_embarcadero_app_secret => $x_embarcadero_app_secret, x_embarcadero_master_secret => $x_embarcadero_master_secret)

Get YAML

Get API in YAML format

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::ApiDocApi;
my $api_instance = WWW::SwaggerClient::ApiDocApi->new(
);

my $x_embarcadero_application_id = 'x_embarcadero_application_id_example'; # string | 
my $x_embarcadero_app_secret = 'x_embarcadero_app_secret_example'; # string | 
my $x_embarcadero_master_secret = 'x_embarcadero_master_secret_example'; # string | 

eval { 
    $api_instance->get_apiyaml_format(x_embarcadero_application_id => $x_embarcadero_application_id, x_embarcadero_app_secret => $x_embarcadero_app_secret, x_embarcadero_master_secret => $x_embarcadero_master_secret);
};
if ($@) {
    warn "Exception when calling ApiDocApi->get_apiyaml_format: $@\n";
}
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_apiyaml_format_end_point**
> get_apiyaml_format_end_point(item => $item, x_embarcadero_application_id => $x_embarcadero_application_id, x_embarcadero_app_secret => $x_embarcadero_app_secret, x_embarcadero_master_secret => $x_embarcadero_master_secret)

Get API EndPoint

 |      Used to retrieve an EndPoint for the API EndPoints.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::ApiDocApi;
my $api_instance = WWW::SwaggerClient::ApiDocApi->new(
);

my $item = 'item_example'; # string | Path Segment to an EndPoint
my $x_embarcadero_application_id = 'x_embarcadero_application_id_example'; # string | 
my $x_embarcadero_app_secret = 'x_embarcadero_app_secret_example'; # string | 
my $x_embarcadero_master_secret = 'x_embarcadero_master_secret_example'; # string | 

eval { 
    $api_instance->get_apiyaml_format_end_point(item => $item, x_embarcadero_application_id => $x_embarcadero_application_id, x_embarcadero_app_secret => $x_embarcadero_app_secret, x_embarcadero_master_secret => $x_embarcadero_master_secret);
};
if ($@) {
    warn "Exception when calling ApiDocApi->get_apiyaml_format_end_point: $@\n";
}
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

