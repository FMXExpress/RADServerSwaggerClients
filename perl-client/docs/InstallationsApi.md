# WWW::SwaggerClient::InstallationsApi

## Load the API package
```perl
use WWW::SwaggerClient::Object::InstallationsApi;
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_installation**](InstallationsApi.md#add_installation) | **POST** /installations | Add Installation
[**delete_installation**](InstallationsApi.md#delete_installation) | **DELETE** /installations/{id} | Delete Installation
[**get_channels**](InstallationsApi.md#get_channels) | **GET** /installations/channels | Get Installation Channels
[**get_installation**](InstallationsApi.md#get_installation) | **GET** /installations/{id} | Get Installation
[**get_installation_fields**](InstallationsApi.md#get_installation_fields) | **GET** /installations/fields | Get Fields
[**get_installations**](InstallationsApi.md#get_installations) | **GET** /installations | Get Installations
[**update_installation**](InstallationsApi.md#update_installation) | **PUT** /installations/{id} | Update Installation


# **add_installation**
> InstallationAddedObject add_installation(body => $body, x_embarcadero_application_id => $x_embarcadero_application_id, x_embarcadero_app_secret => $x_embarcadero_app_secret, x_embarcadero_master_secret => $x_embarcadero_master_secret)

Add Installation

 |      Used to add a new `Installation` object to the EMS database.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::InstallationsApi;
my $api_instance = WWW::SwaggerClient::InstallationsApi->new(
);

my $body = WWW::SwaggerClient::Object::InstallationAddObject->new(); # InstallationAddObject | Object to sign up a new EMS User in the EMS Server
my $x_embarcadero_application_id = 'x_embarcadero_application_id_example'; # string | 
my $x_embarcadero_app_secret = 'x_embarcadero_app_secret_example'; # string | 
my $x_embarcadero_master_secret = 'x_embarcadero_master_secret_example'; # string | 

eval { 
    my $result = $api_instance->add_installation(body => $body, x_embarcadero_application_id => $x_embarcadero_application_id, x_embarcadero_app_secret => $x_embarcadero_app_secret, x_embarcadero_master_secret => $x_embarcadero_master_secret);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InstallationsApi->add_installation: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**InstallationAddObject**](InstallationAddObject.md)| Object to sign up a new EMS User in the EMS Server | 
 **x_embarcadero_application_id** | **string**|  | [optional] 
 **x_embarcadero_app_secret** | **string**|  | [optional] 
 **x_embarcadero_master_secret** | **string**|  | [optional] 

### Return type

[**InstallationAddedObject**](InstallationAddedObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_installation**
> delete_installation(id => $id, x_embarcadero_application_id => $x_embarcadero_application_id, x_embarcadero_app_secret => $x_embarcadero_app_secret, x_embarcadero_master_secret => $x_embarcadero_master_secret)

Delete Installation

 |      Used to delete an `Installation`. **id** is the unique EMS Installation identifier (IID) in the EMS database.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::InstallationsApi;
my $api_instance = WWW::SwaggerClient::InstallationsApi->new(
);

my $id = 'id_example'; # string | A Installation ID
my $x_embarcadero_application_id = 'x_embarcadero_application_id_example'; # string | 
my $x_embarcadero_app_secret = 'x_embarcadero_app_secret_example'; # string | 
my $x_embarcadero_master_secret = 'x_embarcadero_master_secret_example'; # string | 

eval { 
    $api_instance->delete_installation(id => $id, x_embarcadero_application_id => $x_embarcadero_application_id, x_embarcadero_app_secret => $x_embarcadero_app_secret, x_embarcadero_master_secret => $x_embarcadero_master_secret);
};
if ($@) {
    warn "Exception when calling InstallationsApi->delete_installation: $@\n";
}
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_channels**
> ARRAY[ChannelName] get_channels(x_embarcadero_application_id => $x_embarcadero_application_id, x_embarcadero_app_secret => $x_embarcadero_app_secret, x_embarcadero_master_secret => $x_embarcadero_master_secret)

Get Installation Channels

 |       Used to retrieve the available channels to which the device has subscribed. **id** is the unique EMS Installation identifier (InstallationID) in the EMS database.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::InstallationsApi;
my $api_instance = WWW::SwaggerClient::InstallationsApi->new(
);

my $x_embarcadero_application_id = 'x_embarcadero_application_id_example'; # string | 
my $x_embarcadero_app_secret = 'x_embarcadero_app_secret_example'; # string | 
my $x_embarcadero_master_secret = 'x_embarcadero_master_secret_example'; # string | 

eval { 
    my $result = $api_instance->get_channels(x_embarcadero_application_id => $x_embarcadero_application_id, x_embarcadero_app_secret => $x_embarcadero_app_secret, x_embarcadero_master_secret => $x_embarcadero_master_secret);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InstallationsApi->get_channels: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_embarcadero_application_id** | **string**|  | [optional] 
 **x_embarcadero_app_secret** | **string**|  | [optional] 
 **x_embarcadero_master_secret** | **string**|  | [optional] 

### Return type

[**ARRAY[ChannelName]**](ChannelName.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_installation**
> InstallationObject get_installation(id => $id, x_embarcadero_application_id => $x_embarcadero_application_id, x_embarcadero_app_secret => $x_embarcadero_app_secret, x_embarcadero_master_secret => $x_embarcadero_master_secret)

Get Installation

 |      Used to retrieve all data from a specific `Installation` (registered device). **id** is the unique EMS Installation identifier (InstallationID) in the EMS database.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::InstallationsApi;
my $api_instance = WWW::SwaggerClient::InstallationsApi->new(
);

my $id = 'id_example'; # string | A Installation ID
my $x_embarcadero_application_id = 'x_embarcadero_application_id_example'; # string | 
my $x_embarcadero_app_secret = 'x_embarcadero_app_secret_example'; # string | 
my $x_embarcadero_master_secret = 'x_embarcadero_master_secret_example'; # string | 

eval { 
    my $result = $api_instance->get_installation(id => $id, x_embarcadero_application_id => $x_embarcadero_application_id, x_embarcadero_app_secret => $x_embarcadero_app_secret, x_embarcadero_master_secret => $x_embarcadero_master_secret);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InstallationsApi->get_installation: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| A Installation ID | 
 **x_embarcadero_application_id** | **string**|  | [optional] 
 **x_embarcadero_app_secret** | **string**|  | [optional] 
 **x_embarcadero_master_secret** | **string**|  | [optional] 

### Return type

[**InstallationObject**](InstallationObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_installation_fields**
> ARRAY[FieldInstallationObject] get_installation_fields(x_embarcadero_application_id => $x_embarcadero_application_id, x_embarcadero_app_secret => $x_embarcadero_app_secret, x_embarcadero_master_secret => $x_embarcadero_master_secret)

Get Fields

 |      Used to retrieve all the `field names` of the EMS Installation (including the custom fields).

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::InstallationsApi;
my $api_instance = WWW::SwaggerClient::InstallationsApi->new(
);

my $x_embarcadero_application_id = 'x_embarcadero_application_id_example'; # string | 
my $x_embarcadero_app_secret = 'x_embarcadero_app_secret_example'; # string | 
my $x_embarcadero_master_secret = 'x_embarcadero_master_secret_example'; # string | 

eval { 
    my $result = $api_instance->get_installation_fields(x_embarcadero_application_id => $x_embarcadero_application_id, x_embarcadero_app_secret => $x_embarcadero_app_secret, x_embarcadero_master_secret => $x_embarcadero_master_secret);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InstallationsApi->get_installation_fields: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_embarcadero_application_id** | **string**|  | [optional] 
 **x_embarcadero_app_secret** | **string**|  | [optional] 
 **x_embarcadero_master_secret** | **string**|  | [optional] 

### Return type

[**ARRAY[FieldInstallationObject]**](FieldInstallationObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_installations**
> ARRAY[InstallationObject] get_installations(x_embarcadero_application_id => $x_embarcadero_application_id, x_embarcadero_app_secret => $x_embarcadero_app_secret, x_embarcadero_master_secret => $x_embarcadero_master_secret, skip => $skip, limit => $limit, order => $order, where => $where)

Get Installations

 |      Used to retrieve all data from `Installation`.      Optional query param of **skip, limit, order, where** determines       size of returned array, filtered and order by.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::InstallationsApi;
my $api_instance = WWW::SwaggerClient::InstallationsApi->new(
);

my $x_embarcadero_application_id = 'x_embarcadero_application_id_example'; # string | 
my $x_embarcadero_app_secret = 'x_embarcadero_app_secret_example'; # string | 
my $x_embarcadero_master_secret = 'x_embarcadero_master_secret_example'; # string | 
my $skip = 8.14; # Number | users skipped
my $limit = 8.14; # Number | maximum number of results to return
my $order = 8.14; # Number | order ascending or descending (asc, desc)
my $where = 'where_example'; # string | filter operators (lt, lte, gt, gte, eq, neq, like, nlike)

eval { 
    my $result = $api_instance->get_installations(x_embarcadero_application_id => $x_embarcadero_application_id, x_embarcadero_app_secret => $x_embarcadero_app_secret, x_embarcadero_master_secret => $x_embarcadero_master_secret, skip => $skip, limit => $limit, order => $order, where => $where);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InstallationsApi->get_installations: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_embarcadero_application_id** | **string**|  | [optional] 
 **x_embarcadero_app_secret** | **string**|  | [optional] 
 **x_embarcadero_master_secret** | **string**|  | [optional] 
 **skip** | **Number**| users skipped | [optional] 
 **limit** | **Number**| maximum number of results to return | [optional] 
 **order** | **Number**| order ascending or descending (asc, desc) | [optional] 
 **where** | **string**| filter operators (lt, lte, gt, gte, eq, neq, like, nlike) | [optional] 

### Return type

[**ARRAY[InstallationObject]**](InstallationObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_installation**
> UpdatedInstallationObject update_installation(id => $id, body => $body, x_embarcadero_application_id => $x_embarcadero_application_id, x_embarcadero_app_secret => $x_embarcadero_app_secret, x_embarcadero_master_secret => $x_embarcadero_master_secret)

Update Installation

 |      Used to update an `Installation`. **id** is the unique EMS Installation identifier (IID) in the EMS database.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::InstallationsApi;
my $api_instance = WWW::SwaggerClient::InstallationsApi->new(
);

my $id = 'id_example'; # string | A Installation ID
my $body = WWW::SwaggerClient::Object::UpdateInstallationObject->new(); # UpdateInstallationObject | Installation fields to update
my $x_embarcadero_application_id = 'x_embarcadero_application_id_example'; # string | 
my $x_embarcadero_app_secret = 'x_embarcadero_app_secret_example'; # string | 
my $x_embarcadero_master_secret = 'x_embarcadero_master_secret_example'; # string | 

eval { 
    my $result = $api_instance->update_installation(id => $id, body => $body, x_embarcadero_application_id => $x_embarcadero_application_id, x_embarcadero_app_secret => $x_embarcadero_app_secret, x_embarcadero_master_secret => $x_embarcadero_master_secret);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InstallationsApi->update_installation: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| A Installation ID | 
 **body** | [**UpdateInstallationObject**](UpdateInstallationObject.md)| Installation fields to update | 
 **x_embarcadero_application_id** | **string**|  | [optional] 
 **x_embarcadero_app_secret** | **string**|  | [optional] 
 **x_embarcadero_master_secret** | **string**|  | [optional] 

### Return type

[**UpdatedInstallationObject**](UpdatedInstallationObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

