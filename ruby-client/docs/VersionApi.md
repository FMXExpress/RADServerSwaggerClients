# SwaggerClient::VersionApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_version**](VersionApi.md#get_version) | **GET** /version | Get version


# **get_version**
> VersionObject get_version(opts)

Get version

 |      Used to retrieve the `Version` of the EMS Server.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::VersionApi.new

opts = { 
  x_embarcadero_application_id: 'x_embarcadero_application_id_example', # String | 
  x_embarcadero_app_secret: 'x_embarcadero_app_secret_example', # String | 
  x_embarcadero_master_secret: 'x_embarcadero_master_secret_example' # String | 
}

begin
  #Get version
  result = api_instance.get_version(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling VersionApi->get_version: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_embarcadero_application_id** | **String**|  | [optional] 
 **x_embarcadero_app_secret** | **String**|  | [optional] 
 **x_embarcadero_master_secret** | **String**|  | [optional] 

### Return type

[**VersionObject**](VersionObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



