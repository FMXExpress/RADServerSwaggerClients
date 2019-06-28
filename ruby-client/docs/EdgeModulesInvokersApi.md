# SwaggerClient::EdgeModulesInvokersApi

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
> delete_resource_endpoint(mname, rname, opts)

Invoke Resource Delete Method

Used to invoke the DELETE method of the resource from an existing EMS EdgeModule.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::EdgeModulesInvokersApi.new

mname = 'mname_example' # String | Is the EMS EdgeModule name

rname = 'rname_example' # String | Is the unique EMS EdgeModule Resource name

opts = { 
  x_embarcadero_application_id: 'x_embarcadero_application_id_example', # String | 
  x_embarcadero_app_secret: 'x_embarcadero_app_secret_example', # String | 
  x_embarcadero_master_secret: 'x_embarcadero_master_secret_example' # String | 
}

begin
  #Invoke Resource Delete Method
  api_instance.delete_resource_endpoint(mname, rname, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EdgeModulesInvokersApi->delete_resource_endpoint: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **String**| Is the EMS EdgeModule name | 
 **rname** | **String**| Is the unique EMS EdgeModule Resource name | 
 **x_embarcadero_application_id** | **String**|  | [optional] 
 **x_embarcadero_app_secret** | **String**|  | [optional] 
 **x_embarcadero_master_secret** | **String**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **delete_resource_endpoint_item**
> delete_resource_endpoint_item(mname, rname, wildcard, opts)

Invoke Resource/* Delete Method

Used to invoke the DELETE method of the resource from an existing EMS EdgeModule.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::EdgeModulesInvokersApi.new

mname = 'mname_example' # String | Is the EMS EdgeModule name

rname = 'rname_example' # String | Is the unique EMS EdgeModule Resource name

wildcard = 'wildcard_example' # String | Is the Wild card part of the URL

opts = { 
  x_embarcadero_application_id: 'x_embarcadero_application_id_example', # String | 
  x_embarcadero_app_secret: 'x_embarcadero_app_secret_example', # String | 
  x_embarcadero_master_secret: 'x_embarcadero_master_secret_example' # String | 
}

begin
  #Invoke Resource/* Delete Method
  api_instance.delete_resource_endpoint_item(mname, rname, wildcard, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EdgeModulesInvokersApi->delete_resource_endpoint_item: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **String**| Is the EMS EdgeModule name | 
 **rname** | **String**| Is the unique EMS EdgeModule Resource name | 
 **wildcard** | **String**| Is the Wild card part of the URL | 
 **x_embarcadero_application_id** | **String**|  | [optional] 
 **x_embarcadero_app_secret** | **String**|  | [optional] 
 **x_embarcadero_master_secret** | **String**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **get_resource_endpoint**
> get_resource_endpoint(mname, rname, opts)

Invoke Resource Get Method

Used to invoke the GET method of the resource from an existing EMS EdgeModule.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::EdgeModulesInvokersApi.new

mname = 'mname_example' # String | Is the EMS EdgeModule name

rname = 'rname_example' # String | Is the unique EMS EdgeModule Resource name

opts = { 
  x_embarcadero_application_id: 'x_embarcadero_application_id_example', # String | 
  x_embarcadero_app_secret: 'x_embarcadero_app_secret_example', # String | 
  x_embarcadero_master_secret: 'x_embarcadero_master_secret_example' # String | 
}

begin
  #Invoke Resource Get Method
  api_instance.get_resource_endpoint(mname, rname, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EdgeModulesInvokersApi->get_resource_endpoint: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **String**| Is the EMS EdgeModule name | 
 **rname** | **String**| Is the unique EMS EdgeModule Resource name | 
 **x_embarcadero_application_id** | **String**|  | [optional] 
 **x_embarcadero_app_secret** | **String**|  | [optional] 
 **x_embarcadero_master_secret** | **String**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_resource_endpoint_item**
> get_resource_endpoint_item(mname, rname, wildcard, opts)

Invoke Resource/* Get Method

Used to invoke the GET method of the resource from an existing EMS EdgeModule.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::EdgeModulesInvokersApi.new

mname = 'mname_example' # String | Is the EMS EdgeModule name

rname = 'rname_example' # String | Is the unique EMS EdgeModule Resource name

wildcard = 'wildcard_example' # String | Is the Wild card part of the URL

opts = { 
  x_embarcadero_application_id: 'x_embarcadero_application_id_example', # String | 
  x_embarcadero_app_secret: 'x_embarcadero_app_secret_example', # String | 
  x_embarcadero_master_secret: 'x_embarcadero_master_secret_example' # String | 
}

begin
  #Invoke Resource/* Get Method
  api_instance.get_resource_endpoint_item(mname, rname, wildcard, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EdgeModulesInvokersApi->get_resource_endpoint_item: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **String**| Is the EMS EdgeModule name | 
 **rname** | **String**| Is the unique EMS EdgeModule Resource name | 
 **wildcard** | **String**| Is the Wild card part of the URL | 
 **x_embarcadero_application_id** | **String**|  | [optional] 
 **x_embarcadero_app_secret** | **String**|  | [optional] 
 **x_embarcadero_master_secret** | **String**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **patch_resource_endpoint**
> patch_resource_endpoint(mname, rname, body, opts)

Invoke Resource Patch Method

Used to invoke the PATCH method of the resource from an existing EMS EdgeModule.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::EdgeModulesInvokersApi.new

mname = 'mname_example' # String | Is the EMS EdgeModule name

rname = 'rname_example' # String | Is the unique EMS EdgeModule Resource name

body = nil # Object | Body Object

opts = { 
  x_embarcadero_application_id: 'x_embarcadero_application_id_example', # String | 
  x_embarcadero_app_secret: 'x_embarcadero_app_secret_example', # String | 
  x_embarcadero_master_secret: 'x_embarcadero_master_secret_example' # String | 
}

begin
  #Invoke Resource Patch Method
  api_instance.patch_resource_endpoint(mname, rname, body, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EdgeModulesInvokersApi->patch_resource_endpoint: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **String**| Is the EMS EdgeModule name | 
 **rname** | **String**| Is the unique EMS EdgeModule Resource name | 
 **body** | **Object**| Body Object | 
 **x_embarcadero_application_id** | **String**|  | [optional] 
 **x_embarcadero_app_secret** | **String**|  | [optional] 
 **x_embarcadero_master_secret** | **String**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **patch_resource_endpoint_item**
> patch_resource_endpoint_item(mname, rname, wildcard, body, opts)

Invoke Resource/* Patch Method

Used to invoke the PATCH method of the resource from an existing EMS EdgeModule.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::EdgeModulesInvokersApi.new

mname = 'mname_example' # String | Is the EMS EdgeModule name

rname = 'rname_example' # String | Is the unique EMS EdgeModule Resource name

wildcard = 'wildcard_example' # String | Is the Wild card part of the URL

body = nil # Object | Body Object

opts = { 
  x_embarcadero_application_id: 'x_embarcadero_application_id_example', # String | 
  x_embarcadero_app_secret: 'x_embarcadero_app_secret_example', # String | 
  x_embarcadero_master_secret: 'x_embarcadero_master_secret_example' # String | 
}

begin
  #Invoke Resource/* Patch Method
  api_instance.patch_resource_endpoint_item(mname, rname, wildcard, body, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EdgeModulesInvokersApi->patch_resource_endpoint_item: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **String**| Is the EMS EdgeModule name | 
 **rname** | **String**| Is the unique EMS EdgeModule Resource name | 
 **wildcard** | **String**| Is the Wild card part of the URL | 
 **body** | **Object**| Body Object | 
 **x_embarcadero_application_id** | **String**|  | [optional] 
 **x_embarcadero_app_secret** | **String**|  | [optional] 
 **x_embarcadero_master_secret** | **String**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_resource_endpoint**
> post_resource_endpoint(mname, rname, body, opts)

Invoke Resource Post Method

Used to invoke the POST method of the resource from an existing EMS EdgeModule.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::EdgeModulesInvokersApi.new

mname = 'mname_example' # String | Is the EMS EdgeModule name

rname = 'rname_example' # String | Is the unique EMS EdgeModule Resource name

body = nil # Object | Body Object

opts = { 
  x_embarcadero_application_id: 'x_embarcadero_application_id_example', # String | 
  x_embarcadero_app_secret: 'x_embarcadero_app_secret_example', # String | 
  x_embarcadero_master_secret: 'x_embarcadero_master_secret_example' # String | 
}

begin
  #Invoke Resource Post Method
  api_instance.post_resource_endpoint(mname, rname, body, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EdgeModulesInvokersApi->post_resource_endpoint: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **String**| Is the EMS EdgeModule name | 
 **rname** | **String**| Is the unique EMS EdgeModule Resource name | 
 **body** | **Object**| Body Object | 
 **x_embarcadero_application_id** | **String**|  | [optional] 
 **x_embarcadero_app_secret** | **String**|  | [optional] 
 **x_embarcadero_master_secret** | **String**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_resource_endpoint_item**
> post_resource_endpoint_item(mname, rname, wildcard, body, opts)

Invoke Resource/* Post Method

Used to invoke the POST method of the resource from an existing EMS EdgeModule.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::EdgeModulesInvokersApi.new

mname = 'mname_example' # String | Is the EMS EdgeModule name

rname = 'rname_example' # String | Is the unique EMS EdgeModule Resource name

wildcard = 'wildcard_example' # String | Is the Wild card part of the URL

body = nil # Object | Body Object

opts = { 
  x_embarcadero_application_id: 'x_embarcadero_application_id_example', # String | 
  x_embarcadero_app_secret: 'x_embarcadero_app_secret_example', # String | 
  x_embarcadero_master_secret: 'x_embarcadero_master_secret_example' # String | 
}

begin
  #Invoke Resource/* Post Method
  api_instance.post_resource_endpoint_item(mname, rname, wildcard, body, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EdgeModulesInvokersApi->post_resource_endpoint_item: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **String**| Is the EMS EdgeModule name | 
 **rname** | **String**| Is the unique EMS EdgeModule Resource name | 
 **wildcard** | **String**| Is the Wild card part of the URL | 
 **body** | **Object**| Body Object | 
 **x_embarcadero_application_id** | **String**|  | [optional] 
 **x_embarcadero_app_secret** | **String**|  | [optional] 
 **x_embarcadero_master_secret** | **String**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_resource_endpoint**
> put_resource_endpoint(mname, rname, body, opts)

Invoke Resource Put Method

Used to invoke the PUT method of the resource from an existing EMS EdgeModule.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::EdgeModulesInvokersApi.new

mname = 'mname_example' # String | Is the EMS EdgeModule name

rname = 'rname_example' # String | Is the unique EMS EdgeModule Resource name

body = nil # Object | Body Object

opts = { 
  x_embarcadero_application_id: 'x_embarcadero_application_id_example', # String | 
  x_embarcadero_app_secret: 'x_embarcadero_app_secret_example', # String | 
  x_embarcadero_master_secret: 'x_embarcadero_master_secret_example' # String | 
}

begin
  #Invoke Resource Put Method
  api_instance.put_resource_endpoint(mname, rname, body, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EdgeModulesInvokersApi->put_resource_endpoint: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **String**| Is the EMS EdgeModule name | 
 **rname** | **String**| Is the unique EMS EdgeModule Resource name | 
 **body** | **Object**| Body Object | 
 **x_embarcadero_application_id** | **String**|  | [optional] 
 **x_embarcadero_app_secret** | **String**|  | [optional] 
 **x_embarcadero_master_secret** | **String**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_resource_endpoint_item**
> put_resource_endpoint_item(mname, rname, wildcard, body, opts)

Invoke Resource/* Put Method

Used to invoke the PUT method of the resource from an existing EMS EdgeModule.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::EdgeModulesInvokersApi.new

mname = 'mname_example' # String | Is the EMS EdgeModule name

rname = 'rname_example' # String | Is the unique EMS EdgeModule Resource name

wildcard = 'wildcard_example' # String | Is the Wild card part of the URL

body = nil # Object | Body Object

opts = { 
  x_embarcadero_application_id: 'x_embarcadero_application_id_example', # String | 
  x_embarcadero_app_secret: 'x_embarcadero_app_secret_example', # String | 
  x_embarcadero_master_secret: 'x_embarcadero_master_secret_example' # String | 
}

begin
  #Invoke Resource/* Put Method
  api_instance.put_resource_endpoint_item(mname, rname, wildcard, body, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EdgeModulesInvokersApi->put_resource_endpoint_item: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **String**| Is the EMS EdgeModule name | 
 **rname** | **String**| Is the unique EMS EdgeModule Resource name | 
 **wildcard** | **String**| Is the Wild card part of the URL | 
 **body** | **Object**| Body Object | 
 **x_embarcadero_application_id** | **String**|  | [optional] 
 **x_embarcadero_app_secret** | **String**|  | [optional] 
 **x_embarcadero_master_secret** | **String**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



