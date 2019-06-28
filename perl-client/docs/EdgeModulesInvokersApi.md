# WWW::SwaggerClient::EdgeModulesInvokersApi

## Load the API package
```perl
use WWW::SwaggerClient::Object::EdgeModulesInvokersApi;
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_resource_endpoint**](EdgeModulesInvokersApi.md#delete_resource_endpoint) | **DELETE** /edgemodules/{mname}/{rname} | Invoke Resource Delete Method
[**delete_resource_endpoint_item**](EdgeModulesInvokersApi.md#delete_resource_endpoint_item) | **DELETE** /edgemodules/{mname}/{rname}/{wildcard} | Invoke Resource/* Delete Method
[**get_resource_endpoint**](EdgeModulesInvokersApi.md#get_resource_endpoint) | **GET** /edgemodules/{mname}/{rname} | Invoke Resource Get Method
[**get_resource_endpoint_item**](EdgeModulesInvokersApi.md#get_resource_endpoint_item) | **GET** /edgemodules/{mname}/{rname}/{wildcard} | Invoke Resource/* Get Method
[**patch_resource_endpoint**](EdgeModulesInvokersApi.md#patch_resource_endpoint) | **PATCH** /edgemodules/{mname}/{rname} | Invoke Resource Patch Method
[**patch_resource_endpoint_item**](EdgeModulesInvokersApi.md#patch_resource_endpoint_item) | **PATCH** /edgemodules/{mname}/{rname}/{wildcard} | Invoke Resource/* Patch Method
[**post_resource_endpoint**](EdgeModulesInvokersApi.md#post_resource_endpoint) | **POST** /edgemodules/{mname}/{rname} | Invoke Resource Post Method
[**post_resource_endpoint_item**](EdgeModulesInvokersApi.md#post_resource_endpoint_item) | **POST** /edgemodules/{mname}/{rname}/{wildcard} | Invoke Resource/* Post Method
[**put_resource_endpoint**](EdgeModulesInvokersApi.md#put_resource_endpoint) | **PUT** /edgemodules/{mname}/{rname} | Invoke Resource Put Method
[**put_resource_endpoint_item**](EdgeModulesInvokersApi.md#put_resource_endpoint_item) | **PUT** /edgemodules/{mname}/{rname}/{wildcard} | Invoke Resource/* Put Method


# **delete_resource_endpoint**
> delete_resource_endpoint(mname => $mname, rname => $rname, x_embarcadero_application_id => $x_embarcadero_application_id, x_embarcadero_app_secret => $x_embarcadero_app_secret, x_embarcadero_master_secret => $x_embarcadero_master_secret)

Invoke Resource Delete Method

Used to invoke the DELETE method of the resource from an existing EMS EdgeModule.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::EdgeModulesInvokersApi;
my $api_instance = WWW::SwaggerClient::EdgeModulesInvokersApi->new(
);

my $mname = 'mname_example'; # string | Is the EMS EdgeModule name
my $rname = 'rname_example'; # string | Is the unique EMS EdgeModule Resource name
my $x_embarcadero_application_id = 'x_embarcadero_application_id_example'; # string | 
my $x_embarcadero_app_secret = 'x_embarcadero_app_secret_example'; # string | 
my $x_embarcadero_master_secret = 'x_embarcadero_master_secret_example'; # string | 

eval { 
    $api_instance->delete_resource_endpoint(mname => $mname, rname => $rname, x_embarcadero_application_id => $x_embarcadero_application_id, x_embarcadero_app_secret => $x_embarcadero_app_secret, x_embarcadero_master_secret => $x_embarcadero_master_secret);
};
if ($@) {
    warn "Exception when calling EdgeModulesInvokersApi->delete_resource_endpoint: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **string**| Is the EMS EdgeModule name | 
 **rname** | **string**| Is the unique EMS EdgeModule Resource name | 
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

# **delete_resource_endpoint_item**
> delete_resource_endpoint_item(mname => $mname, rname => $rname, wildcard => $wildcard, x_embarcadero_application_id => $x_embarcadero_application_id, x_embarcadero_app_secret => $x_embarcadero_app_secret, x_embarcadero_master_secret => $x_embarcadero_master_secret)

Invoke Resource/* Delete Method

Used to invoke the DELETE method of the resource from an existing EMS EdgeModule.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::EdgeModulesInvokersApi;
my $api_instance = WWW::SwaggerClient::EdgeModulesInvokersApi->new(
);

my $mname = 'mname_example'; # string | Is the EMS EdgeModule name
my $rname = 'rname_example'; # string | Is the unique EMS EdgeModule Resource name
my $wildcard = 'wildcard_example'; # string | Is the Wild card part of the URL
my $x_embarcadero_application_id = 'x_embarcadero_application_id_example'; # string | 
my $x_embarcadero_app_secret = 'x_embarcadero_app_secret_example'; # string | 
my $x_embarcadero_master_secret = 'x_embarcadero_master_secret_example'; # string | 

eval { 
    $api_instance->delete_resource_endpoint_item(mname => $mname, rname => $rname, wildcard => $wildcard, x_embarcadero_application_id => $x_embarcadero_application_id, x_embarcadero_app_secret => $x_embarcadero_app_secret, x_embarcadero_master_secret => $x_embarcadero_master_secret);
};
if ($@) {
    warn "Exception when calling EdgeModulesInvokersApi->delete_resource_endpoint_item: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **string**| Is the EMS EdgeModule name | 
 **rname** | **string**| Is the unique EMS EdgeModule Resource name | 
 **wildcard** | **string**| Is the Wild card part of the URL | 
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

# **get_resource_endpoint**
> get_resource_endpoint(mname => $mname, rname => $rname, x_embarcadero_application_id => $x_embarcadero_application_id, x_embarcadero_app_secret => $x_embarcadero_app_secret, x_embarcadero_master_secret => $x_embarcadero_master_secret)

Invoke Resource Get Method

Used to invoke the GET method of the resource from an existing EMS EdgeModule.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::EdgeModulesInvokersApi;
my $api_instance = WWW::SwaggerClient::EdgeModulesInvokersApi->new(
);

my $mname = 'mname_example'; # string | Is the EMS EdgeModule name
my $rname = 'rname_example'; # string | Is the unique EMS EdgeModule Resource name
my $x_embarcadero_application_id = 'x_embarcadero_application_id_example'; # string | 
my $x_embarcadero_app_secret = 'x_embarcadero_app_secret_example'; # string | 
my $x_embarcadero_master_secret = 'x_embarcadero_master_secret_example'; # string | 

eval { 
    $api_instance->get_resource_endpoint(mname => $mname, rname => $rname, x_embarcadero_application_id => $x_embarcadero_application_id, x_embarcadero_app_secret => $x_embarcadero_app_secret, x_embarcadero_master_secret => $x_embarcadero_master_secret);
};
if ($@) {
    warn "Exception when calling EdgeModulesInvokersApi->get_resource_endpoint: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **string**| Is the EMS EdgeModule name | 
 **rname** | **string**| Is the unique EMS EdgeModule Resource name | 
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

# **get_resource_endpoint_item**
> get_resource_endpoint_item(mname => $mname, rname => $rname, wildcard => $wildcard, x_embarcadero_application_id => $x_embarcadero_application_id, x_embarcadero_app_secret => $x_embarcadero_app_secret, x_embarcadero_master_secret => $x_embarcadero_master_secret)

Invoke Resource/* Get Method

Used to invoke the GET method of the resource from an existing EMS EdgeModule.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::EdgeModulesInvokersApi;
my $api_instance = WWW::SwaggerClient::EdgeModulesInvokersApi->new(
);

my $mname = 'mname_example'; # string | Is the EMS EdgeModule name
my $rname = 'rname_example'; # string | Is the unique EMS EdgeModule Resource name
my $wildcard = 'wildcard_example'; # string | Is the Wild card part of the URL
my $x_embarcadero_application_id = 'x_embarcadero_application_id_example'; # string | 
my $x_embarcadero_app_secret = 'x_embarcadero_app_secret_example'; # string | 
my $x_embarcadero_master_secret = 'x_embarcadero_master_secret_example'; # string | 

eval { 
    $api_instance->get_resource_endpoint_item(mname => $mname, rname => $rname, wildcard => $wildcard, x_embarcadero_application_id => $x_embarcadero_application_id, x_embarcadero_app_secret => $x_embarcadero_app_secret, x_embarcadero_master_secret => $x_embarcadero_master_secret);
};
if ($@) {
    warn "Exception when calling EdgeModulesInvokersApi->get_resource_endpoint_item: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **string**| Is the EMS EdgeModule name | 
 **rname** | **string**| Is the unique EMS EdgeModule Resource name | 
 **wildcard** | **string**| Is the Wild card part of the URL | 
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

# **patch_resource_endpoint**
> patch_resource_endpoint(mname => $mname, rname => $rname, body => $body, x_embarcadero_application_id => $x_embarcadero_application_id, x_embarcadero_app_secret => $x_embarcadero_app_secret, x_embarcadero_master_secret => $x_embarcadero_master_secret)

Invoke Resource Patch Method

Used to invoke the PATCH method of the resource from an existing EMS EdgeModule.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::EdgeModulesInvokersApi;
my $api_instance = WWW::SwaggerClient::EdgeModulesInvokersApi->new(
);

my $mname = 'mname_example'; # string | Is the EMS EdgeModule name
my $rname = 'rname_example'; # string | Is the unique EMS EdgeModule Resource name
my $body = WWW::SwaggerClient::Object::object->new(); # object | Body Object
my $x_embarcadero_application_id = 'x_embarcadero_application_id_example'; # string | 
my $x_embarcadero_app_secret = 'x_embarcadero_app_secret_example'; # string | 
my $x_embarcadero_master_secret = 'x_embarcadero_master_secret_example'; # string | 

eval { 
    $api_instance->patch_resource_endpoint(mname => $mname, rname => $rname, body => $body, x_embarcadero_application_id => $x_embarcadero_application_id, x_embarcadero_app_secret => $x_embarcadero_app_secret, x_embarcadero_master_secret => $x_embarcadero_master_secret);
};
if ($@) {
    warn "Exception when calling EdgeModulesInvokersApi->patch_resource_endpoint: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **string**| Is the EMS EdgeModule name | 
 **rname** | **string**| Is the unique EMS EdgeModule Resource name | 
 **body** | **object**| Body Object | 
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patch_resource_endpoint_item**
> patch_resource_endpoint_item(mname => $mname, rname => $rname, wildcard => $wildcard, body => $body, x_embarcadero_application_id => $x_embarcadero_application_id, x_embarcadero_app_secret => $x_embarcadero_app_secret, x_embarcadero_master_secret => $x_embarcadero_master_secret)

Invoke Resource/* Patch Method

Used to invoke the PATCH method of the resource from an existing EMS EdgeModule.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::EdgeModulesInvokersApi;
my $api_instance = WWW::SwaggerClient::EdgeModulesInvokersApi->new(
);

my $mname = 'mname_example'; # string | Is the EMS EdgeModule name
my $rname = 'rname_example'; # string | Is the unique EMS EdgeModule Resource name
my $wildcard = 'wildcard_example'; # string | Is the Wild card part of the URL
my $body = WWW::SwaggerClient::Object::object->new(); # object | Body Object
my $x_embarcadero_application_id = 'x_embarcadero_application_id_example'; # string | 
my $x_embarcadero_app_secret = 'x_embarcadero_app_secret_example'; # string | 
my $x_embarcadero_master_secret = 'x_embarcadero_master_secret_example'; # string | 

eval { 
    $api_instance->patch_resource_endpoint_item(mname => $mname, rname => $rname, wildcard => $wildcard, body => $body, x_embarcadero_application_id => $x_embarcadero_application_id, x_embarcadero_app_secret => $x_embarcadero_app_secret, x_embarcadero_master_secret => $x_embarcadero_master_secret);
};
if ($@) {
    warn "Exception when calling EdgeModulesInvokersApi->patch_resource_endpoint_item: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **string**| Is the EMS EdgeModule name | 
 **rname** | **string**| Is the unique EMS EdgeModule Resource name | 
 **wildcard** | **string**| Is the Wild card part of the URL | 
 **body** | **object**| Body Object | 
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_resource_endpoint**
> post_resource_endpoint(mname => $mname, rname => $rname, body => $body, x_embarcadero_application_id => $x_embarcadero_application_id, x_embarcadero_app_secret => $x_embarcadero_app_secret, x_embarcadero_master_secret => $x_embarcadero_master_secret)

Invoke Resource Post Method

Used to invoke the POST method of the resource from an existing EMS EdgeModule.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::EdgeModulesInvokersApi;
my $api_instance = WWW::SwaggerClient::EdgeModulesInvokersApi->new(
);

my $mname = 'mname_example'; # string | Is the EMS EdgeModule name
my $rname = 'rname_example'; # string | Is the unique EMS EdgeModule Resource name
my $body = WWW::SwaggerClient::Object::object->new(); # object | Body Object
my $x_embarcadero_application_id = 'x_embarcadero_application_id_example'; # string | 
my $x_embarcadero_app_secret = 'x_embarcadero_app_secret_example'; # string | 
my $x_embarcadero_master_secret = 'x_embarcadero_master_secret_example'; # string | 

eval { 
    $api_instance->post_resource_endpoint(mname => $mname, rname => $rname, body => $body, x_embarcadero_application_id => $x_embarcadero_application_id, x_embarcadero_app_secret => $x_embarcadero_app_secret, x_embarcadero_master_secret => $x_embarcadero_master_secret);
};
if ($@) {
    warn "Exception when calling EdgeModulesInvokersApi->post_resource_endpoint: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **string**| Is the EMS EdgeModule name | 
 **rname** | **string**| Is the unique EMS EdgeModule Resource name | 
 **body** | **object**| Body Object | 
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_resource_endpoint_item**
> post_resource_endpoint_item(mname => $mname, rname => $rname, wildcard => $wildcard, body => $body, x_embarcadero_application_id => $x_embarcadero_application_id, x_embarcadero_app_secret => $x_embarcadero_app_secret, x_embarcadero_master_secret => $x_embarcadero_master_secret)

Invoke Resource/* Post Method

Used to invoke the POST method of the resource from an existing EMS EdgeModule.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::EdgeModulesInvokersApi;
my $api_instance = WWW::SwaggerClient::EdgeModulesInvokersApi->new(
);

my $mname = 'mname_example'; # string | Is the EMS EdgeModule name
my $rname = 'rname_example'; # string | Is the unique EMS EdgeModule Resource name
my $wildcard = 'wildcard_example'; # string | Is the Wild card part of the URL
my $body = WWW::SwaggerClient::Object::object->new(); # object | Body Object
my $x_embarcadero_application_id = 'x_embarcadero_application_id_example'; # string | 
my $x_embarcadero_app_secret = 'x_embarcadero_app_secret_example'; # string | 
my $x_embarcadero_master_secret = 'x_embarcadero_master_secret_example'; # string | 

eval { 
    $api_instance->post_resource_endpoint_item(mname => $mname, rname => $rname, wildcard => $wildcard, body => $body, x_embarcadero_application_id => $x_embarcadero_application_id, x_embarcadero_app_secret => $x_embarcadero_app_secret, x_embarcadero_master_secret => $x_embarcadero_master_secret);
};
if ($@) {
    warn "Exception when calling EdgeModulesInvokersApi->post_resource_endpoint_item: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **string**| Is the EMS EdgeModule name | 
 **rname** | **string**| Is the unique EMS EdgeModule Resource name | 
 **wildcard** | **string**| Is the Wild card part of the URL | 
 **body** | **object**| Body Object | 
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **put_resource_endpoint**
> put_resource_endpoint(mname => $mname, rname => $rname, body => $body, x_embarcadero_application_id => $x_embarcadero_application_id, x_embarcadero_app_secret => $x_embarcadero_app_secret, x_embarcadero_master_secret => $x_embarcadero_master_secret)

Invoke Resource Put Method

Used to invoke the PUT method of the resource from an existing EMS EdgeModule.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::EdgeModulesInvokersApi;
my $api_instance = WWW::SwaggerClient::EdgeModulesInvokersApi->new(
);

my $mname = 'mname_example'; # string | Is the EMS EdgeModule name
my $rname = 'rname_example'; # string | Is the unique EMS EdgeModule Resource name
my $body = WWW::SwaggerClient::Object::object->new(); # object | Body Object
my $x_embarcadero_application_id = 'x_embarcadero_application_id_example'; # string | 
my $x_embarcadero_app_secret = 'x_embarcadero_app_secret_example'; # string | 
my $x_embarcadero_master_secret = 'x_embarcadero_master_secret_example'; # string | 

eval { 
    $api_instance->put_resource_endpoint(mname => $mname, rname => $rname, body => $body, x_embarcadero_application_id => $x_embarcadero_application_id, x_embarcadero_app_secret => $x_embarcadero_app_secret, x_embarcadero_master_secret => $x_embarcadero_master_secret);
};
if ($@) {
    warn "Exception when calling EdgeModulesInvokersApi->put_resource_endpoint: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **string**| Is the EMS EdgeModule name | 
 **rname** | **string**| Is the unique EMS EdgeModule Resource name | 
 **body** | **object**| Body Object | 
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **put_resource_endpoint_item**
> put_resource_endpoint_item(mname => $mname, rname => $rname, wildcard => $wildcard, body => $body, x_embarcadero_application_id => $x_embarcadero_application_id, x_embarcadero_app_secret => $x_embarcadero_app_secret, x_embarcadero_master_secret => $x_embarcadero_master_secret)

Invoke Resource/* Put Method

Used to invoke the PUT method of the resource from an existing EMS EdgeModule.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::EdgeModulesInvokersApi;
my $api_instance = WWW::SwaggerClient::EdgeModulesInvokersApi->new(
);

my $mname = 'mname_example'; # string | Is the EMS EdgeModule name
my $rname = 'rname_example'; # string | Is the unique EMS EdgeModule Resource name
my $wildcard = 'wildcard_example'; # string | Is the Wild card part of the URL
my $body = WWW::SwaggerClient::Object::object->new(); # object | Body Object
my $x_embarcadero_application_id = 'x_embarcadero_application_id_example'; # string | 
my $x_embarcadero_app_secret = 'x_embarcadero_app_secret_example'; # string | 
my $x_embarcadero_master_secret = 'x_embarcadero_master_secret_example'; # string | 

eval { 
    $api_instance->put_resource_endpoint_item(mname => $mname, rname => $rname, wildcard => $wildcard, body => $body, x_embarcadero_application_id => $x_embarcadero_application_id, x_embarcadero_app_secret => $x_embarcadero_app_secret, x_embarcadero_master_secret => $x_embarcadero_master_secret);
};
if ($@) {
    warn "Exception when calling EdgeModulesInvokersApi->put_resource_endpoint_item: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **string**| Is the EMS EdgeModule name | 
 **rname** | **string**| Is the unique EMS EdgeModule Resource name | 
 **wildcard** | **string**| Is the Wild card part of the URL | 
 **body** | **object**| Body Object | 
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

