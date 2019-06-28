# SwaggerClient::InstallationsApi

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
> InstallationAddedObject add_installation(body, opts)

Add Installation

 |      Used to add a new `Installation` object to the EMS database.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::InstallationsApi.new

body = SwaggerClient::InstallationAddObject.new # InstallationAddObject | Object to sign up a new EMS User in the EMS Server

opts = { 
  x_embarcadero_application_id: 'x_embarcadero_application_id_example', # String | 
  x_embarcadero_app_secret: 'x_embarcadero_app_secret_example', # String | 
  x_embarcadero_master_secret: 'x_embarcadero_master_secret_example' # String | 
}

begin
  #Add Installation
  result = api_instance.add_installation(body, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling InstallationsApi->add_installation: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**InstallationAddObject**](InstallationAddObject.md)| Object to sign up a new EMS User in the EMS Server | 
 **x_embarcadero_application_id** | **String**|  | [optional] 
 **x_embarcadero_app_secret** | **String**|  | [optional] 
 **x_embarcadero_master_secret** | **String**|  | [optional] 

### Return type

[**InstallationAddedObject**](InstallationAddedObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_installation**
> delete_installation(id, opts)

Delete Installation

 |      Used to delete an `Installation`. **id** is the unique EMS Installation identifier (IID) in the EMS database.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::InstallationsApi.new

id = 'id_example' # String | A Installation ID

opts = { 
  x_embarcadero_application_id: 'x_embarcadero_application_id_example', # String | 
  x_embarcadero_app_secret: 'x_embarcadero_app_secret_example', # String | 
  x_embarcadero_master_secret: 'x_embarcadero_master_secret_example' # String | 
}

begin
  #Delete Installation
  api_instance.delete_installation(id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling InstallationsApi->delete_installation: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A Installation ID | 
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



# **get_channels**
> Array&lt;ChannelName&gt; get_channels(opts)

Get Installation Channels

 |       Used to retrieve the available channels to which the device has subscribed. **id** is the unique EMS Installation identifier (InstallationID) in the EMS database.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::InstallationsApi.new

opts = { 
  x_embarcadero_application_id: 'x_embarcadero_application_id_example', # String | 
  x_embarcadero_app_secret: 'x_embarcadero_app_secret_example', # String | 
  x_embarcadero_master_secret: 'x_embarcadero_master_secret_example' # String | 
}

begin
  #Get Installation Channels
  result = api_instance.get_channels(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling InstallationsApi->get_channels: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_embarcadero_application_id** | **String**|  | [optional] 
 **x_embarcadero_app_secret** | **String**|  | [optional] 
 **x_embarcadero_master_secret** | **String**|  | [optional] 

### Return type

[**Array&lt;ChannelName&gt;**](ChannelName.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_installation**
> InstallationObject get_installation(id, opts)

Get Installation

 |      Used to retrieve all data from a specific `Installation` (registered device). **id** is the unique EMS Installation identifier (InstallationID) in the EMS database.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::InstallationsApi.new

id = 'id_example' # String | A Installation ID

opts = { 
  x_embarcadero_application_id: 'x_embarcadero_application_id_example', # String | 
  x_embarcadero_app_secret: 'x_embarcadero_app_secret_example', # String | 
  x_embarcadero_master_secret: 'x_embarcadero_master_secret_example' # String | 
}

begin
  #Get Installation
  result = api_instance.get_installation(id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling InstallationsApi->get_installation: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A Installation ID | 
 **x_embarcadero_application_id** | **String**|  | [optional] 
 **x_embarcadero_app_secret** | **String**|  | [optional] 
 **x_embarcadero_master_secret** | **String**|  | [optional] 

### Return type

[**InstallationObject**](InstallationObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_installation_fields**
> Array&lt;FieldInstallationObject&gt; get_installation_fields(opts)

Get Fields

 |      Used to retrieve all the `field names` of the EMS Installation (including the custom fields).

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::InstallationsApi.new

opts = { 
  x_embarcadero_application_id: 'x_embarcadero_application_id_example', # String | 
  x_embarcadero_app_secret: 'x_embarcadero_app_secret_example', # String | 
  x_embarcadero_master_secret: 'x_embarcadero_master_secret_example' # String | 
}

begin
  #Get Fields
  result = api_instance.get_installation_fields(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling InstallationsApi->get_installation_fields: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_embarcadero_application_id** | **String**|  | [optional] 
 **x_embarcadero_app_secret** | **String**|  | [optional] 
 **x_embarcadero_master_secret** | **String**|  | [optional] 

### Return type

[**Array&lt;FieldInstallationObject&gt;**](FieldInstallationObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_installations**
> Array&lt;InstallationObject&gt; get_installations(opts)

Get Installations

 |      Used to retrieve all data from `Installation`.      Optional query param of **skip, limit, order, where** determines       size of returned array, filtered and order by.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::InstallationsApi.new

opts = { 
  x_embarcadero_application_id: 'x_embarcadero_application_id_example', # String | 
  x_embarcadero_app_secret: 'x_embarcadero_app_secret_example', # String | 
  x_embarcadero_master_secret: 'x_embarcadero_master_secret_example', # String | 
  skip: 8.14, # Float | users skipped
  limit: 8.14, # Float | maximum number of results to return
  order: 8.14, # Float | order ascending or descending (asc, desc)
  where: 'where_example' # String | filter operators (lt, lte, gt, gte, eq, neq, like, nlike)
}

begin
  #Get Installations
  result = api_instance.get_installations(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling InstallationsApi->get_installations: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_embarcadero_application_id** | **String**|  | [optional] 
 **x_embarcadero_app_secret** | **String**|  | [optional] 
 **x_embarcadero_master_secret** | **String**|  | [optional] 
 **skip** | **Float**| users skipped | [optional] 
 **limit** | **Float**| maximum number of results to return | [optional] 
 **order** | **Float**| order ascending or descending (asc, desc) | [optional] 
 **where** | **String**| filter operators (lt, lte, gt, gte, eq, neq, like, nlike) | [optional] 

### Return type

[**Array&lt;InstallationObject&gt;**](InstallationObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_installation**
> UpdatedInstallationObject update_installation(id, body, opts)

Update Installation

 |      Used to update an `Installation`. **id** is the unique EMS Installation identifier (IID) in the EMS database.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::InstallationsApi.new

id = 'id_example' # String | A Installation ID

body = SwaggerClient::UpdateInstallationObject.new # UpdateInstallationObject | Installation fields to update

opts = { 
  x_embarcadero_application_id: 'x_embarcadero_application_id_example', # String | 
  x_embarcadero_app_secret: 'x_embarcadero_app_secret_example', # String | 
  x_embarcadero_master_secret: 'x_embarcadero_master_secret_example' # String | 
}

begin
  #Update Installation
  result = api_instance.update_installation(id, body, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling InstallationsApi->update_installation: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A Installation ID | 
 **body** | [**UpdateInstallationObject**](UpdateInstallationObject.md)| Installation fields to update | 
 **x_embarcadero_application_id** | **String**|  | [optional] 
 **x_embarcadero_app_secret** | **String**|  | [optional] 
 **x_embarcadero_master_secret** | **String**|  | [optional] 

### Return type

[**UpdatedInstallationObject**](UpdatedInstallationObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



