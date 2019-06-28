# WWW::SwaggerClient::EdgeModulesApi

## Load the API package
```perl
use WWW::SwaggerClient::Object::EdgeModulesApi;
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_module**](EdgeModulesApi.md#get_module) | **GET** /edgemodules/{mname} | Get Module
[**get_module_resource**](EdgeModulesApi.md#get_module_resource) | **GET** /edgemodules/{mname}/resources/{name} | Get EdgeModule Resource
[**get_module_resources**](EdgeModulesApi.md#get_module_resources) | **GET** /edgemodules/{mname}/resources | Get EdgeModule Resources
[**get_modules**](EdgeModulesApi.md#get_modules) | **GET** /edgemodules | Get Module
[**get_modules_fields**](EdgeModulesApi.md#get_modules_fields) | **GET** /edgemodules/fields | Get Fields
[**get_resources**](EdgeModulesApi.md#get_resources) | **GET** /edgemodules/resources | Get EdgeModules Resources
[**get_resources_fields**](EdgeModulesApi.md#get_resources_fields) | **GET** /edgemodules/resources/fields | Get Resource Fields
[**register_module**](EdgeModulesApi.md#register_module) | **POST** /edgemodules | Add Module
[**register_module_resource**](EdgeModulesApi.md#register_module_resource) | **POST** /edgemodules/{mname}/resources | Add Module Resource
[**unregister_module**](EdgeModulesApi.md#unregister_module) | **DELETE** /edgemodules/{mname} | Delete Module
[**unregister_module_resource**](EdgeModulesApi.md#unregister_module_resource) | **DELETE** /edgemodules/{mname}/resources/{name} | Delete Module Resource
[**update_module**](EdgeModulesApi.md#update_module) | **PUT** /edgemodules/{mname} | Update Module
[**update_module_resource**](EdgeModulesApi.md#update_module_resource) | **PUT** /edgemodules/{mname}/resources/{name} | Update Module Resource


# **get_module**
> EdgeModuleObject get_module(mname => $mname, x_embarcadero_application_id => $x_embarcadero_application_id, x_embarcadero_app_secret => $x_embarcadero_app_secret, x_embarcadero_master_secret => $x_embarcadero_master_secret)

Get Module

 |      Used to retrieve all data from `EdgeModule`.      Optional query param of **skip, limit, order, where** determines       size of returned array, filtered and order by.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::EdgeModulesApi;
my $api_instance = WWW::SwaggerClient::EdgeModulesApi->new(
);

my $mname = 'mname_example'; # string | Is the unique EMS EdgeModule identifier
my $x_embarcadero_application_id = 'x_embarcadero_application_id_example'; # string | 
my $x_embarcadero_app_secret = 'x_embarcadero_app_secret_example'; # string | 
my $x_embarcadero_master_secret = 'x_embarcadero_master_secret_example'; # string | 

eval { 
    my $result = $api_instance->get_module(mname => $mname, x_embarcadero_application_id => $x_embarcadero_application_id, x_embarcadero_app_secret => $x_embarcadero_app_secret, x_embarcadero_master_secret => $x_embarcadero_master_secret);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling EdgeModulesApi->get_module: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **string**| Is the unique EMS EdgeModule identifier | 
 **x_embarcadero_application_id** | **string**|  | [optional] 
 **x_embarcadero_app_secret** | **string**|  | [optional] 
 **x_embarcadero_master_secret** | **string**|  | [optional] 

### Return type

[**EdgeModuleObject**](EdgeModuleObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_module_resource**
> EdgeModuleResourceObject get_module_resource(mname => $mname, name => $name, x_embarcadero_application_id => $x_embarcadero_application_id, x_embarcadero_app_secret => $x_embarcadero_app_secret, x_embarcadero_master_secret => $x_embarcadero_master_secret)

Get EdgeModule Resource

 |      Used to retrieve all data from a resource of an EdgeModule. **mname** is the unique EMS EdgeModule identifier in the EMS database. **resourcename** is the name of the resource.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::EdgeModulesApi;
my $api_instance = WWW::SwaggerClient::EdgeModulesApi->new(
);

my $mname = 'mname_example'; # string | Is the unique EMS EdgeModule identifier
my $name = 'name_example'; # string | Is the unique EMS EdgeModule Resource name
my $x_embarcadero_application_id = 'x_embarcadero_application_id_example'; # string | 
my $x_embarcadero_app_secret = 'x_embarcadero_app_secret_example'; # string | 
my $x_embarcadero_master_secret = 'x_embarcadero_master_secret_example'; # string | 

eval { 
    my $result = $api_instance->get_module_resource(mname => $mname, name => $name, x_embarcadero_application_id => $x_embarcadero_application_id, x_embarcadero_app_secret => $x_embarcadero_app_secret, x_embarcadero_master_secret => $x_embarcadero_master_secret);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling EdgeModulesApi->get_module_resource: $@\n";
}
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

[**EdgeModuleResourceObject**](EdgeModuleResourceObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_module_resources**
> ARRAY[EdgeModuleResourceObject] get_module_resources(mname => $mname, x_embarcadero_application_id => $x_embarcadero_application_id, x_embarcadero_app_secret => $x_embarcadero_app_secret, x_embarcadero_master_secret => $x_embarcadero_master_secret)

Get EdgeModule Resources

 |      Used to retrieve all data from the resources of an EdgeModule.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::EdgeModulesApi;
my $api_instance = WWW::SwaggerClient::EdgeModulesApi->new(
);

my $mname = 'mname_example'; # string | Is the unique EMS EdgeModule identifier
my $x_embarcadero_application_id = 'x_embarcadero_application_id_example'; # string | 
my $x_embarcadero_app_secret = 'x_embarcadero_app_secret_example'; # string | 
my $x_embarcadero_master_secret = 'x_embarcadero_master_secret_example'; # string | 

eval { 
    my $result = $api_instance->get_module_resources(mname => $mname, x_embarcadero_application_id => $x_embarcadero_application_id, x_embarcadero_app_secret => $x_embarcadero_app_secret, x_embarcadero_master_secret => $x_embarcadero_master_secret);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling EdgeModulesApi->get_module_resources: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **string**| Is the unique EMS EdgeModule identifier | 
 **x_embarcadero_application_id** | **string**|  | [optional] 
 **x_embarcadero_app_secret** | **string**|  | [optional] 
 **x_embarcadero_master_secret** | **string**|  | [optional] 

### Return type

[**ARRAY[EdgeModuleResourceObject]**](EdgeModuleResourceObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_modules**
> ARRAY[EdgeModuleObject] get_modules(x_embarcadero_application_id => $x_embarcadero_application_id, x_embarcadero_app_secret => $x_embarcadero_app_secret, x_embarcadero_master_secret => $x_embarcadero_master_secret)

Get Module

 |      Used to retrieve all data from `EdgeModule`.      Optional query param of **skip, limit, order, where** determines       size of returned array, filtered and order by.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::EdgeModulesApi;
my $api_instance = WWW::SwaggerClient::EdgeModulesApi->new(
);

my $x_embarcadero_application_id = 'x_embarcadero_application_id_example'; # string | 
my $x_embarcadero_app_secret = 'x_embarcadero_app_secret_example'; # string | 
my $x_embarcadero_master_secret = 'x_embarcadero_master_secret_example'; # string | 

eval { 
    my $result = $api_instance->get_modules(x_embarcadero_application_id => $x_embarcadero_application_id, x_embarcadero_app_secret => $x_embarcadero_app_secret, x_embarcadero_master_secret => $x_embarcadero_master_secret);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling EdgeModulesApi->get_modules: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_embarcadero_application_id** | **string**|  | [optional] 
 **x_embarcadero_app_secret** | **string**|  | [optional] 
 **x_embarcadero_master_secret** | **string**|  | [optional] 

### Return type

[**ARRAY[EdgeModuleObject]**](EdgeModuleObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_modules_fields**
> FieldsEdgeModuleObject get_modules_fields(x_embarcadero_application_id => $x_embarcadero_application_id, x_embarcadero_app_secret => $x_embarcadero_app_secret, x_embarcadero_master_secret => $x_embarcadero_master_secret)

Get Fields

 |      Used to retrieve all the `field names` of the EMS EdgeModule (including the custom fields).

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::EdgeModulesApi;
my $api_instance = WWW::SwaggerClient::EdgeModulesApi->new(
);

my $x_embarcadero_application_id = 'x_embarcadero_application_id_example'; # string | 
my $x_embarcadero_app_secret = 'x_embarcadero_app_secret_example'; # string | 
my $x_embarcadero_master_secret = 'x_embarcadero_master_secret_example'; # string | 

eval { 
    my $result = $api_instance->get_modules_fields(x_embarcadero_application_id => $x_embarcadero_application_id, x_embarcadero_app_secret => $x_embarcadero_app_secret, x_embarcadero_master_secret => $x_embarcadero_master_secret);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling EdgeModulesApi->get_modules_fields: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_embarcadero_application_id** | **string**|  | [optional] 
 **x_embarcadero_app_secret** | **string**|  | [optional] 
 **x_embarcadero_master_secret** | **string**|  | [optional] 

### Return type

[**FieldsEdgeModuleObject**](FieldsEdgeModuleObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_resources**
> ARRAY[EdgeModuleResourceObject] get_resources(x_embarcadero_application_id => $x_embarcadero_application_id, x_embarcadero_app_secret => $x_embarcadero_app_secret, x_embarcadero_master_secret => $x_embarcadero_master_secret)

Get EdgeModules Resources

 |      Used to retrieve all data from the resources of all EdgeModules.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::EdgeModulesApi;
my $api_instance = WWW::SwaggerClient::EdgeModulesApi->new(
);

my $x_embarcadero_application_id = 'x_embarcadero_application_id_example'; # string | 
my $x_embarcadero_app_secret = 'x_embarcadero_app_secret_example'; # string | 
my $x_embarcadero_master_secret = 'x_embarcadero_master_secret_example'; # string | 

eval { 
    my $result = $api_instance->get_resources(x_embarcadero_application_id => $x_embarcadero_application_id, x_embarcadero_app_secret => $x_embarcadero_app_secret, x_embarcadero_master_secret => $x_embarcadero_master_secret);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling EdgeModulesApi->get_resources: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_embarcadero_application_id** | **string**|  | [optional] 
 **x_embarcadero_app_secret** | **string**|  | [optional] 
 **x_embarcadero_master_secret** | **string**|  | [optional] 

### Return type

[**ARRAY[EdgeModuleResourceObject]**](EdgeModuleResourceObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_resources_fields**
> FieldsEdgeModuleObject get_resources_fields(x_embarcadero_application_id => $x_embarcadero_application_id, x_embarcadero_app_secret => $x_embarcadero_app_secret, x_embarcadero_master_secret => $x_embarcadero_master_secret)

Get Resource Fields

 |      Used to retrieve the `field names` of all the resources of the EMS EdgeModule (including the custom fields).

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::EdgeModulesApi;
my $api_instance = WWW::SwaggerClient::EdgeModulesApi->new(
);

my $x_embarcadero_application_id = 'x_embarcadero_application_id_example'; # string | 
my $x_embarcadero_app_secret = 'x_embarcadero_app_secret_example'; # string | 
my $x_embarcadero_master_secret = 'x_embarcadero_master_secret_example'; # string | 

eval { 
    my $result = $api_instance->get_resources_fields(x_embarcadero_application_id => $x_embarcadero_application_id, x_embarcadero_app_secret => $x_embarcadero_app_secret, x_embarcadero_master_secret => $x_embarcadero_master_secret);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling EdgeModulesApi->get_resources_fields: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_embarcadero_application_id** | **string**|  | [optional] 
 **x_embarcadero_app_secret** | **string**|  | [optional] 
 **x_embarcadero_master_secret** | **string**|  | [optional] 

### Return type

[**FieldsEdgeModuleObject**](FieldsEdgeModuleObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **register_module**
> EdgeModuleAddedObject register_module(body => $body, x_embarcadero_application_id => $x_embarcadero_application_id, x_embarcadero_app_secret => $x_embarcadero_app_secret, x_embarcadero_master_secret => $x_embarcadero_master_secret)

Add Module

 |      Used to add a new `EdgeModule` object to the EMS database.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::EdgeModulesApi;
my $api_instance = WWW::SwaggerClient::EdgeModulesApi->new(
);

my $body = WWW::SwaggerClient::Object::EdgeModuleAddObject->new(); # EdgeModuleAddObject | EdgeModule object to add. protocolprops example string {\\\"port\\\":8082,\\\"host\\\":\\\"10.150.40.52\\\"}
my $x_embarcadero_application_id = 'x_embarcadero_application_id_example'; # string | 
my $x_embarcadero_app_secret = 'x_embarcadero_app_secret_example'; # string | 
my $x_embarcadero_master_secret = 'x_embarcadero_master_secret_example'; # string | 

eval { 
    my $result = $api_instance->register_module(body => $body, x_embarcadero_application_id => $x_embarcadero_application_id, x_embarcadero_app_secret => $x_embarcadero_app_secret, x_embarcadero_master_secret => $x_embarcadero_master_secret);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling EdgeModulesApi->register_module: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**EdgeModuleAddObject**](EdgeModuleAddObject.md)| EdgeModule object to add. protocolprops example string {\\\&quot;port\\\&quot;:8082,\\\&quot;host\\\&quot;:\\\&quot;10.150.40.52\\\&quot;} | 
 **x_embarcadero_application_id** | **string**|  | [optional] 
 **x_embarcadero_app_secret** | **string**|  | [optional] 
 **x_embarcadero_master_secret** | **string**|  | [optional] 

### Return type

[**EdgeModuleAddedObject**](EdgeModuleAddedObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **register_module_resource**
> EdgeModuleResourceAddedObject register_module_resource(mname => $mname, body => $body, x_embarcadero_application_id => $x_embarcadero_application_id, x_embarcadero_app_secret => $x_embarcadero_app_secret, x_embarcadero_master_secret => $x_embarcadero_master_secret)

Add Module Resource

 |      Used to register a new resource from an EMS EdgeModule. **mname** is the unique EMS EdgeModule identifier in the EMS database.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::EdgeModulesApi;
my $api_instance = WWW::SwaggerClient::EdgeModulesApi->new(
);

my $mname = 'mname_example'; # string | Is the unique EMS EdgeModule identifier
my $body = WWW::SwaggerClient::Object::EdgeModuleResourceAddObject->new(); # EdgeModuleResourceAddObject | EdgModule Resource add object. protocolprops string example {\\\"port\\\":8082,\\\"host\\\":\\\"10.150.40.52\\\"}
my $x_embarcadero_application_id = 'x_embarcadero_application_id_example'; # string | 
my $x_embarcadero_app_secret = 'x_embarcadero_app_secret_example'; # string | 
my $x_embarcadero_master_secret = 'x_embarcadero_master_secret_example'; # string | 

eval { 
    my $result = $api_instance->register_module_resource(mname => $mname, body => $body, x_embarcadero_application_id => $x_embarcadero_application_id, x_embarcadero_app_secret => $x_embarcadero_app_secret, x_embarcadero_master_secret => $x_embarcadero_master_secret);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling EdgeModulesApi->register_module_resource: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **string**| Is the unique EMS EdgeModule identifier | 
 **body** | [**EdgeModuleResourceAddObject**](EdgeModuleResourceAddObject.md)| EdgModule Resource add object. protocolprops string example {\\\&quot;port\\\&quot;:8082,\\\&quot;host\\\&quot;:\\\&quot;10.150.40.52\\\&quot;} | 
 **x_embarcadero_application_id** | **string**|  | [optional] 
 **x_embarcadero_app_secret** | **string**|  | [optional] 
 **x_embarcadero_master_secret** | **string**|  | [optional] 

### Return type

[**EdgeModuleResourceAddedObject**](EdgeModuleResourceAddedObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **unregister_module**
> unregister_module(mname => $mname, x_embarcadero_application_id => $x_embarcadero_application_id, x_embarcadero_app_secret => $x_embarcadero_app_secret, x_embarcadero_master_secret => $x_embarcadero_master_secret)

Delete Module

 |      Used to delete an `EdgeModule Resource`. **mname** is the unique EMS EdgeModule identifier (MID) in the EMS database. **resourcename** is the name of the resource.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::EdgeModulesApi;
my $api_instance = WWW::SwaggerClient::EdgeModulesApi->new(
);

my $mname = 'mname_example'; # string | Is the unique EMS EdgeModule identifier
my $x_embarcadero_application_id = 'x_embarcadero_application_id_example'; # string | 
my $x_embarcadero_app_secret = 'x_embarcadero_app_secret_example'; # string | 
my $x_embarcadero_master_secret = 'x_embarcadero_master_secret_example'; # string | 

eval { 
    $api_instance->unregister_module(mname => $mname, x_embarcadero_application_id => $x_embarcadero_application_id, x_embarcadero_app_secret => $x_embarcadero_app_secret, x_embarcadero_master_secret => $x_embarcadero_master_secret);
};
if ($@) {
    warn "Exception when calling EdgeModulesApi->unregister_module: $@\n";
}
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **unregister_module_resource**
> unregister_module_resource(mname => $mname, name => $name, x_embarcadero_application_id => $x_embarcadero_application_id, x_embarcadero_app_secret => $x_embarcadero_app_secret, x_embarcadero_master_secret => $x_embarcadero_master_secret)

Delete Module Resource

 |      Used to delete an `EdgeModule Resource`. **mname** is the unique EMS EdgeModule identifier (MID) in the EMS database. **resourcename** is the name of the resource.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::EdgeModulesApi;
my $api_instance = WWW::SwaggerClient::EdgeModulesApi->new(
);

my $mname = 'mname_example'; # string | Is the unique EMS EdgeModule identifier
my $name = 'name_example'; # string | Is the unique EMS EdgeModule Resource name
my $x_embarcadero_application_id = 'x_embarcadero_application_id_example'; # string | 
my $x_embarcadero_app_secret = 'x_embarcadero_app_secret_example'; # string | 
my $x_embarcadero_master_secret = 'x_embarcadero_master_secret_example'; # string | 

eval { 
    $api_instance->unregister_module_resource(mname => $mname, name => $name, x_embarcadero_application_id => $x_embarcadero_application_id, x_embarcadero_app_secret => $x_embarcadero_app_secret, x_embarcadero_master_secret => $x_embarcadero_master_secret);
};
if ($@) {
    warn "Exception when calling EdgeModulesApi->unregister_module_resource: $@\n";
}
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_module**
> EdgeModuleUpdatedObject update_module(mname => $mname, body => $body, x_embarcadero_application_id => $x_embarcadero_application_id, x_embarcadero_app_secret => $x_embarcadero_app_secret, x_embarcadero_master_secret => $x_embarcadero_master_secret)

Update Module

 |      Used to update an `EdgeModule`. **mname** is the unique EMS EdgeModule identifier (MID) in the EMS database.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::EdgeModulesApi;
my $api_instance = WWW::SwaggerClient::EdgeModulesApi->new(
);

my $mname = 'mname_example'; # string | Is the unique EMS EdgeModule identifier
my $body = WWW::SwaggerClient::Object::EdgeModuleUpdateObject->new(); # EdgeModuleUpdateObject | EdgModule Resource add object. protocolprops string example {\\\"port\\\":8082,\\\"host\\\":\\\"10.150.40.52\\\"}
my $x_embarcadero_application_id = 'x_embarcadero_application_id_example'; # string | 
my $x_embarcadero_app_secret = 'x_embarcadero_app_secret_example'; # string | 
my $x_embarcadero_master_secret = 'x_embarcadero_master_secret_example'; # string | 

eval { 
    my $result = $api_instance->update_module(mname => $mname, body => $body, x_embarcadero_application_id => $x_embarcadero_application_id, x_embarcadero_app_secret => $x_embarcadero_app_secret, x_embarcadero_master_secret => $x_embarcadero_master_secret);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling EdgeModulesApi->update_module: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **string**| Is the unique EMS EdgeModule identifier | 
 **body** | [**EdgeModuleUpdateObject**](EdgeModuleUpdateObject.md)| EdgModule Resource add object. protocolprops string example {\\\&quot;port\\\&quot;:8082,\\\&quot;host\\\&quot;:\\\&quot;10.150.40.52\\\&quot;} | 
 **x_embarcadero_application_id** | **string**|  | [optional] 
 **x_embarcadero_app_secret** | **string**|  | [optional] 
 **x_embarcadero_master_secret** | **string**|  | [optional] 

### Return type

[**EdgeModuleUpdatedObject**](EdgeModuleUpdatedObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_module_resource**
> EdgeModuleResourceUpdatedObject update_module_resource(mname => $mname, name => $name, body => $body, x_embarcadero_application_id => $x_embarcadero_application_id, x_embarcadero_app_secret => $x_embarcadero_app_secret, x_embarcadero_master_secret => $x_embarcadero_master_secret)

Update Module Resource

 |      Used to update an `EdgeModule`. **mname** is the unique EMS EdgeModule identifier (MID) in the EMS database.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::EdgeModulesApi;
my $api_instance = WWW::SwaggerClient::EdgeModulesApi->new(
);

my $mname = 'mname_example'; # string | Is the unique EMS EdgeModule identifier
my $name = 'name_example'; # string | Is the unique EMS EdgeModule Resource name
my $body = WWW::SwaggerClient::Object::EdgeModuleResourceUpdateObject->new(); # EdgeModuleResourceUpdateObject | EdgModule Resource add object. protocolprops string example {\\\"port\\\":8082,\\\"host\\\":\\\"10.150.40.52\\\"}
my $x_embarcadero_application_id = 'x_embarcadero_application_id_example'; # string | 
my $x_embarcadero_app_secret = 'x_embarcadero_app_secret_example'; # string | 
my $x_embarcadero_master_secret = 'x_embarcadero_master_secret_example'; # string | 

eval { 
    my $result = $api_instance->update_module_resource(mname => $mname, name => $name, body => $body, x_embarcadero_application_id => $x_embarcadero_application_id, x_embarcadero_app_secret => $x_embarcadero_app_secret, x_embarcadero_master_secret => $x_embarcadero_master_secret);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling EdgeModulesApi->update_module_resource: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **string**| Is the unique EMS EdgeModule identifier | 
 **name** | **string**| Is the unique EMS EdgeModule Resource name | 
 **body** | [**EdgeModuleResourceUpdateObject**](EdgeModuleResourceUpdateObject.md)| EdgModule Resource add object. protocolprops string example {\\\&quot;port\\\&quot;:8082,\\\&quot;host\\\&quot;:\\\&quot;10.150.40.52\\\&quot;} | 
 **x_embarcadero_application_id** | **string**|  | [optional] 
 **x_embarcadero_app_secret** | **string**|  | [optional] 
 **x_embarcadero_master_secret** | **string**|  | [optional] 

### Return type

[**EdgeModuleResourceUpdatedObject**](EdgeModuleResourceUpdatedObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

