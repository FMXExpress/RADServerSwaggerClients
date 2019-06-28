# SwaggerClient::ApiDocApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**a_pi**](ApiDocApi.md#a_pi) | **GET** /api | Get API EndPoints
[**get_apijson_format**](ApiDocApi.md#get_apijson_format) | **GET** /api/apidoc.json | Get JSON
[**get_apiyaml_format**](ApiDocApi.md#get_apiyaml_format) | **GET** /api/apidoc.yaml | Get YAML
[**get_apiyaml_format_end_point**](ApiDocApi.md#get_apiyaml_format_end_point) | **GET** /api/{item}/apidoc.yaml | Get API EndPoint


# **a_pi**
> a_pi(opts)

Get API EndPoints

 |      Used to retrieve all the API EndPoints.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ApiDocApi.new

opts = { 
  x_embarcadero_application_id: 'x_embarcadero_application_id_example', # String | 
  x_embarcadero_app_secret: 'x_embarcadero_app_secret_example', # String | 
  x_embarcadero_master_secret: 'x_embarcadero_master_secret_example' # String | 
}

begin
  #Get API EndPoints
  api_instance.a_pi(opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ApiDocApi->a_pi: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
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



# **get_apijson_format**
> get_apijson_format(opts)

Get JSON

Get API in JSON format

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ApiDocApi.new

opts = { 
  x_embarcadero_application_id: 'x_embarcadero_application_id_example', # String | 
  x_embarcadero_app_secret: 'x_embarcadero_app_secret_example', # String | 
  x_embarcadero_master_secret: 'x_embarcadero_master_secret_example' # String | 
}

begin
  #Get JSON
  api_instance.get_apijson_format(opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ApiDocApi->get_apijson_format: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
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



# **get_apiyaml_format**
> get_apiyaml_format(opts)

Get YAML

Get API in YAML format

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ApiDocApi.new

opts = { 
  x_embarcadero_application_id: 'x_embarcadero_application_id_example', # String | 
  x_embarcadero_app_secret: 'x_embarcadero_app_secret_example', # String | 
  x_embarcadero_master_secret: 'x_embarcadero_master_secret_example' # String | 
}

begin
  #Get YAML
  api_instance.get_apiyaml_format(opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ApiDocApi->get_apiyaml_format: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
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



# **get_apiyaml_format_end_point**
> get_apiyaml_format_end_point(item, opts)

Get API EndPoint

 |      Used to retrieve an EndPoint for the API EndPoints.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ApiDocApi.new

item = 'item_example' # String | Path Segment to an EndPoint

opts = { 
  x_embarcadero_application_id: 'x_embarcadero_application_id_example', # String | 
  x_embarcadero_app_secret: 'x_embarcadero_app_secret_example', # String | 
  x_embarcadero_master_secret: 'x_embarcadero_master_secret_example' # String | 
}

begin
  #Get API EndPoint
  api_instance.get_apiyaml_format_end_point(item, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ApiDocApi->get_apiyaml_format_end_point: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **item** | **String**| Path Segment to an EndPoint | 
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



