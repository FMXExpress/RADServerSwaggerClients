# SwaggerClient::EdgeModulesApi

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
> EdgeModuleObject get_module(mname, opts)

Get Module

 |      Used to retrieve all data from `EdgeModule`.      Optional query param of **skip, limit, order, where** determines       size of returned array, filtered and order by.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::EdgeModulesApi.new

mname = 'mname_example' # String | Is the unique EMS EdgeModule identifier

opts = { 
  x_embarcadero_application_id: 'x_embarcadero_application_id_example', # String | 
  x_embarcadero_app_secret: 'x_embarcadero_app_secret_example', # String | 
  x_embarcadero_master_secret: 'x_embarcadero_master_secret_example' # String | 
}

begin
  #Get Module
  result = api_instance.get_module(mname, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EdgeModulesApi->get_module: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **String**| Is the unique EMS EdgeModule identifier | 
 **x_embarcadero_application_id** | **String**|  | [optional] 
 **x_embarcadero_app_secret** | **String**|  | [optional] 
 **x_embarcadero_master_secret** | **String**|  | [optional] 

### Return type

[**EdgeModuleObject**](EdgeModuleObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_module_resource**
> EdgeModuleResourceObject get_module_resource(mname, name, opts)

Get EdgeModule Resource

 |      Used to retrieve all data from a resource of an EdgeModule. **mname** is the unique EMS EdgeModule identifier in the EMS database. **resourcename** is the name of the resource.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::EdgeModulesApi.new

mname = 'mname_example' # String | Is the unique EMS EdgeModule identifier

name = 'name_example' # String | Is the unique EMS EdgeModule Resource name

opts = { 
  x_embarcadero_application_id: 'x_embarcadero_application_id_example', # String | 
  x_embarcadero_app_secret: 'x_embarcadero_app_secret_example', # String | 
  x_embarcadero_master_secret: 'x_embarcadero_master_secret_example' # String | 
}

begin
  #Get EdgeModule Resource
  result = api_instance.get_module_resource(mname, name, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EdgeModulesApi->get_module_resource: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **String**| Is the unique EMS EdgeModule identifier | 
 **name** | **String**| Is the unique EMS EdgeModule Resource name | 
 **x_embarcadero_application_id** | **String**|  | [optional] 
 **x_embarcadero_app_secret** | **String**|  | [optional] 
 **x_embarcadero_master_secret** | **String**|  | [optional] 

### Return type

[**EdgeModuleResourceObject**](EdgeModuleResourceObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_module_resources**
> Array&lt;EdgeModuleResourceObject&gt; get_module_resources(mname, opts)

Get EdgeModule Resources

 |      Used to retrieve all data from the resources of an EdgeModule.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::EdgeModulesApi.new

mname = 'mname_example' # String | Is the unique EMS EdgeModule identifier

opts = { 
  x_embarcadero_application_id: 'x_embarcadero_application_id_example', # String | 
  x_embarcadero_app_secret: 'x_embarcadero_app_secret_example', # String | 
  x_embarcadero_master_secret: 'x_embarcadero_master_secret_example' # String | 
}

begin
  #Get EdgeModule Resources
  result = api_instance.get_module_resources(mname, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EdgeModulesApi->get_module_resources: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **String**| Is the unique EMS EdgeModule identifier | 
 **x_embarcadero_application_id** | **String**|  | [optional] 
 **x_embarcadero_app_secret** | **String**|  | [optional] 
 **x_embarcadero_master_secret** | **String**|  | [optional] 

### Return type

[**Array&lt;EdgeModuleResourceObject&gt;**](EdgeModuleResourceObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_modules**
> Array&lt;EdgeModuleObject&gt; get_modules(opts)

Get Module

 |      Used to retrieve all data from `EdgeModule`.      Optional query param of **skip, limit, order, where** determines       size of returned array, filtered and order by.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::EdgeModulesApi.new

opts = { 
  x_embarcadero_application_id: 'x_embarcadero_application_id_example', # String | 
  x_embarcadero_app_secret: 'x_embarcadero_app_secret_example', # String | 
  x_embarcadero_master_secret: 'x_embarcadero_master_secret_example' # String | 
}

begin
  #Get Module
  result = api_instance.get_modules(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EdgeModulesApi->get_modules: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_embarcadero_application_id** | **String**|  | [optional] 
 **x_embarcadero_app_secret** | **String**|  | [optional] 
 **x_embarcadero_master_secret** | **String**|  | [optional] 

### Return type

[**Array&lt;EdgeModuleObject&gt;**](EdgeModuleObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_modules_fields**
> FieldsEdgeModuleObject get_modules_fields(opts)

Get Fields

 |      Used to retrieve all the `field names` of the EMS EdgeModule (including the custom fields).

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::EdgeModulesApi.new

opts = { 
  x_embarcadero_application_id: 'x_embarcadero_application_id_example', # String | 
  x_embarcadero_app_secret: 'x_embarcadero_app_secret_example', # String | 
  x_embarcadero_master_secret: 'x_embarcadero_master_secret_example' # String | 
}

begin
  #Get Fields
  result = api_instance.get_modules_fields(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EdgeModulesApi->get_modules_fields: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_embarcadero_application_id** | **String**|  | [optional] 
 **x_embarcadero_app_secret** | **String**|  | [optional] 
 **x_embarcadero_master_secret** | **String**|  | [optional] 

### Return type

[**FieldsEdgeModuleObject**](FieldsEdgeModuleObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_resources**
> Array&lt;EdgeModuleResourceObject&gt; get_resources(opts)

Get EdgeModules Resources

 |      Used to retrieve all data from the resources of all EdgeModules.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::EdgeModulesApi.new

opts = { 
  x_embarcadero_application_id: 'x_embarcadero_application_id_example', # String | 
  x_embarcadero_app_secret: 'x_embarcadero_app_secret_example', # String | 
  x_embarcadero_master_secret: 'x_embarcadero_master_secret_example' # String | 
}

begin
  #Get EdgeModules Resources
  result = api_instance.get_resources(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EdgeModulesApi->get_resources: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_embarcadero_application_id** | **String**|  | [optional] 
 **x_embarcadero_app_secret** | **String**|  | [optional] 
 **x_embarcadero_master_secret** | **String**|  | [optional] 

### Return type

[**Array&lt;EdgeModuleResourceObject&gt;**](EdgeModuleResourceObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_resources_fields**
> FieldsEdgeModuleObject get_resources_fields(opts)

Get Resource Fields

 |      Used to retrieve the `field names` of all the resources of the EMS EdgeModule (including the custom fields).

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::EdgeModulesApi.new

opts = { 
  x_embarcadero_application_id: 'x_embarcadero_application_id_example', # String | 
  x_embarcadero_app_secret: 'x_embarcadero_app_secret_example', # String | 
  x_embarcadero_master_secret: 'x_embarcadero_master_secret_example' # String | 
}

begin
  #Get Resource Fields
  result = api_instance.get_resources_fields(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EdgeModulesApi->get_resources_fields: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_embarcadero_application_id** | **String**|  | [optional] 
 **x_embarcadero_app_secret** | **String**|  | [optional] 
 **x_embarcadero_master_secret** | **String**|  | [optional] 

### Return type

[**FieldsEdgeModuleObject**](FieldsEdgeModuleObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **register_module**
> EdgeModuleAddedObject register_module(body, opts)

Add Module

 |      Used to add a new `EdgeModule` object to the EMS database.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::EdgeModulesApi.new

body = SwaggerClient::EdgeModuleAddObject.new # EdgeModuleAddObject | EdgeModule object to add. protocolprops example string {\\\"port\\\":8082,\\\"host\\\":\\\"10.150.40.52\\\"}

opts = { 
  x_embarcadero_application_id: 'x_embarcadero_application_id_example', # String | 
  x_embarcadero_app_secret: 'x_embarcadero_app_secret_example', # String | 
  x_embarcadero_master_secret: 'x_embarcadero_master_secret_example' # String | 
}

begin
  #Add Module
  result = api_instance.register_module(body, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EdgeModulesApi->register_module: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**EdgeModuleAddObject**](EdgeModuleAddObject.md)| EdgeModule object to add. protocolprops example string {\\\&quot;port\\\&quot;:8082,\\\&quot;host\\\&quot;:\\\&quot;10.150.40.52\\\&quot;} | 
 **x_embarcadero_application_id** | **String**|  | [optional] 
 **x_embarcadero_app_secret** | **String**|  | [optional] 
 **x_embarcadero_master_secret** | **String**|  | [optional] 

### Return type

[**EdgeModuleAddedObject**](EdgeModuleAddedObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **register_module_resource**
> EdgeModuleResourceAddedObject register_module_resource(mname, body, opts)

Add Module Resource

 |      Used to register a new resource from an EMS EdgeModule. **mname** is the unique EMS EdgeModule identifier in the EMS database.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::EdgeModulesApi.new

mname = 'mname_example' # String | Is the unique EMS EdgeModule identifier

body = SwaggerClient::EdgeModuleResourceAddObject.new # EdgeModuleResourceAddObject | EdgModule Resource add object. protocolprops string example {\\\"port\\\":8082,\\\"host\\\":\\\"10.150.40.52\\\"}

opts = { 
  x_embarcadero_application_id: 'x_embarcadero_application_id_example', # String | 
  x_embarcadero_app_secret: 'x_embarcadero_app_secret_example', # String | 
  x_embarcadero_master_secret: 'x_embarcadero_master_secret_example' # String | 
}

begin
  #Add Module Resource
  result = api_instance.register_module_resource(mname, body, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EdgeModulesApi->register_module_resource: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **String**| Is the unique EMS EdgeModule identifier | 
 **body** | [**EdgeModuleResourceAddObject**](EdgeModuleResourceAddObject.md)| EdgModule Resource add object. protocolprops string example {\\\&quot;port\\\&quot;:8082,\\\&quot;host\\\&quot;:\\\&quot;10.150.40.52\\\&quot;} | 
 **x_embarcadero_application_id** | **String**|  | [optional] 
 **x_embarcadero_app_secret** | **String**|  | [optional] 
 **x_embarcadero_master_secret** | **String**|  | [optional] 

### Return type

[**EdgeModuleResourceAddedObject**](EdgeModuleResourceAddedObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **unregister_module**
> unregister_module(mname, opts)

Delete Module

 |      Used to delete an `EdgeModule Resource`. **mname** is the unique EMS EdgeModule identifier (MID) in the EMS database. **resourcename** is the name of the resource.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::EdgeModulesApi.new

mname = 'mname_example' # String | Is the unique EMS EdgeModule identifier

opts = { 
  x_embarcadero_application_id: 'x_embarcadero_application_id_example', # String | 
  x_embarcadero_app_secret: 'x_embarcadero_app_secret_example', # String | 
  x_embarcadero_master_secret: 'x_embarcadero_master_secret_example' # String | 
}

begin
  #Delete Module
  api_instance.unregister_module(mname, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EdgeModulesApi->unregister_module: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **String**| Is the unique EMS EdgeModule identifier | 
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



# **unregister_module_resource**
> unregister_module_resource(mname, name, opts)

Delete Module Resource

 |      Used to delete an `EdgeModule Resource`. **mname** is the unique EMS EdgeModule identifier (MID) in the EMS database. **resourcename** is the name of the resource.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::EdgeModulesApi.new

mname = 'mname_example' # String | Is the unique EMS EdgeModule identifier

name = 'name_example' # String | Is the unique EMS EdgeModule Resource name

opts = { 
  x_embarcadero_application_id: 'x_embarcadero_application_id_example', # String | 
  x_embarcadero_app_secret: 'x_embarcadero_app_secret_example', # String | 
  x_embarcadero_master_secret: 'x_embarcadero_master_secret_example' # String | 
}

begin
  #Delete Module Resource
  api_instance.unregister_module_resource(mname, name, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EdgeModulesApi->unregister_module_resource: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **String**| Is the unique EMS EdgeModule identifier | 
 **name** | **String**| Is the unique EMS EdgeModule Resource name | 
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



# **update_module**
> EdgeModuleUpdatedObject update_module(mname, body, opts)

Update Module

 |      Used to update an `EdgeModule`. **mname** is the unique EMS EdgeModule identifier (MID) in the EMS database.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::EdgeModulesApi.new

mname = 'mname_example' # String | Is the unique EMS EdgeModule identifier

body = SwaggerClient::EdgeModuleUpdateObject.new # EdgeModuleUpdateObject | EdgModule Resource add object. protocolprops string example {\\\"port\\\":8082,\\\"host\\\":\\\"10.150.40.52\\\"}

opts = { 
  x_embarcadero_application_id: 'x_embarcadero_application_id_example', # String | 
  x_embarcadero_app_secret: 'x_embarcadero_app_secret_example', # String | 
  x_embarcadero_master_secret: 'x_embarcadero_master_secret_example' # String | 
}

begin
  #Update Module
  result = api_instance.update_module(mname, body, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EdgeModulesApi->update_module: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **String**| Is the unique EMS EdgeModule identifier | 
 **body** | [**EdgeModuleUpdateObject**](EdgeModuleUpdateObject.md)| EdgModule Resource add object. protocolprops string example {\\\&quot;port\\\&quot;:8082,\\\&quot;host\\\&quot;:\\\&quot;10.150.40.52\\\&quot;} | 
 **x_embarcadero_application_id** | **String**|  | [optional] 
 **x_embarcadero_app_secret** | **String**|  | [optional] 
 **x_embarcadero_master_secret** | **String**|  | [optional] 

### Return type

[**EdgeModuleUpdatedObject**](EdgeModuleUpdatedObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_module_resource**
> EdgeModuleResourceUpdatedObject update_module_resource(mname, name, body, opts)

Update Module Resource

 |      Used to update an `EdgeModule`. **mname** is the unique EMS EdgeModule identifier (MID) in the EMS database.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::EdgeModulesApi.new

mname = 'mname_example' # String | Is the unique EMS EdgeModule identifier

name = 'name_example' # String | Is the unique EMS EdgeModule Resource name

body = SwaggerClient::EdgeModuleResourceUpdateObject.new # EdgeModuleResourceUpdateObject | EdgModule Resource add object. protocolprops string example {\\\"port\\\":8082,\\\"host\\\":\\\"10.150.40.52\\\"}

opts = { 
  x_embarcadero_application_id: 'x_embarcadero_application_id_example', # String | 
  x_embarcadero_app_secret: 'x_embarcadero_app_secret_example', # String | 
  x_embarcadero_master_secret: 'x_embarcadero_master_secret_example' # String | 
}

begin
  #Update Module Resource
  result = api_instance.update_module_resource(mname, name, body, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EdgeModulesApi->update_module_resource: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **String**| Is the unique EMS EdgeModule identifier | 
 **name** | **String**| Is the unique EMS EdgeModule Resource name | 
 **body** | [**EdgeModuleResourceUpdateObject**](EdgeModuleResourceUpdateObject.md)| EdgModule Resource add object. protocolprops string example {\\\&quot;port\\\&quot;:8082,\\\&quot;host\\\&quot;:\\\&quot;10.150.40.52\\\&quot;} | 
 **x_embarcadero_application_id** | **String**|  | [optional] 
 **x_embarcadero_app_secret** | **String**|  | [optional] 
 **x_embarcadero_master_secret** | **String**|  | [optional] 

### Return type

[**EdgeModuleResourceUpdatedObject**](EdgeModuleResourceUpdatedObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



