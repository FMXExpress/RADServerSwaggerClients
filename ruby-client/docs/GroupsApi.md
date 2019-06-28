# SwaggerClient::GroupsApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_group**](GroupsApi.md#add_group) | **POST** /groups | Add Group
[**delete_group**](GroupsApi.md#delete_group) | **DELETE** /groups/{item} | Delete Group
[**get_group**](GroupsApi.md#get_group) | **GET** /groups/{item} | Get Group
[**get_group_fields**](GroupsApi.md#get_group_fields) | **GET** /groups/fields | Get Fields
[**get_groups**](GroupsApi.md#get_groups) | **GET** /groups | Get Groups
[**update_group**](GroupsApi.md#update_group) | **PUT** /groups/{item} | Update Group


# **add_group**
> add_group(body, opts)

Add Group

 |      Used to add a new `Group` object to the EMS database.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::GroupsApi.new

body = SwaggerClient::GroupAddObject.new # GroupAddObject | Object to sign up a new EMS User in the EMS Server

opts = { 
  x_embarcadero_application_id: 'x_embarcadero_application_id_example', # String | 
  x_embarcadero_app_secret: 'x_embarcadero_app_secret_example', # String | 
  x_embarcadero_master_secret: 'x_embarcadero_master_secret_example' # String | 
}

begin
  #Add Group
  api_instance.add_group(body, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GroupsApi->add_group: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**GroupAddObject**](GroupAddObject.md)| Object to sign up a new EMS User in the EMS Server | 
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



# **delete_group**
> delete_group(item, opts)

Delete Group

 |      Used to delete a `Group`. **item** is the unique EMS Group name in the EMS database.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::GroupsApi.new

item = 'item_example' # String | A group name

opts = { 
  x_embarcadero_application_id: 'x_embarcadero_application_id_example', # String | 
  x_embarcadero_app_secret: 'x_embarcadero_app_secret_example', # String | 
  x_embarcadero_master_secret: 'x_embarcadero_master_secret_example' # String | 
}

begin
  #Delete Group
  api_instance.delete_group(item, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GroupsApi->delete_group: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **item** | **String**| A group name | 
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



# **get_group**
> GroupObject get_group(item, opts)

Get Group

 |      Used to retrieve all data from a `Group`. **item** is the unique EMS Group name in the EMS database.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::GroupsApi.new

item = 'item_example' # String | A group name

opts = { 
  x_embarcadero_application_id: 'x_embarcadero_application_id_example', # String | 
  x_embarcadero_app_secret: 'x_embarcadero_app_secret_example', # String | 
  x_embarcadero_master_secret: 'x_embarcadero_master_secret_example' # String | 
}

begin
  #Get Group
  result = api_instance.get_group(item, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GroupsApi->get_group: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **item** | **String**| A group name | 
 **x_embarcadero_application_id** | **String**|  | [optional] 
 **x_embarcadero_app_secret** | **String**|  | [optional] 
 **x_embarcadero_master_secret** | **String**|  | [optional] 

### Return type

[**GroupObject**](GroupObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_group_fields**
> Array&lt;FieldGroupObject&gt; get_group_fields(opts)

Get Fields

 |      Used to retrieve all the `field names` of the EMS Group (including the custom fields).

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::GroupsApi.new

opts = { 
  x_embarcadero_application_id: 'x_embarcadero_application_id_example', # String | 
  x_embarcadero_app_secret: 'x_embarcadero_app_secret_example', # String | 
  x_embarcadero_master_secret: 'x_embarcadero_master_secret_example' # String | 
}

begin
  #Get Fields
  result = api_instance.get_group_fields(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GroupsApi->get_group_fields: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_embarcadero_application_id** | **String**|  | [optional] 
 **x_embarcadero_app_secret** | **String**|  | [optional] 
 **x_embarcadero_master_secret** | **String**|  | [optional] 

### Return type

[**Array&lt;FieldGroupObject&gt;**](FieldGroupObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_groups**
> Array&lt;GroupObject&gt; get_groups(opts)

Get Groups

 |      Used to retrieve all data from `Groups`.      Optional query param of **skip, limit, order, where** determines       size of returned array, filtered and order by.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::GroupsApi.new

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
  #Get Groups
  result = api_instance.get_groups(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GroupsApi->get_groups: #{e}"
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

[**Array&lt;GroupObject&gt;**](GroupObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_group**
> UpdatedGroupObject update_group(item, body, opts)

Update Group

 |      Used to update a `Group`. **item** is the unique EMS Group name in the EMS database.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::GroupsApi.new

item = 'item_example' # String | A group name

body = SwaggerClient::UpdateGroupObject.new # UpdateGroupObject | Object to sign up a new EMS User in the EMS Server

opts = { 
  x_embarcadero_application_id: 'x_embarcadero_application_id_example', # String | 
  x_embarcadero_app_secret: 'x_embarcadero_app_secret_example', # String | 
  x_embarcadero_master_secret: 'x_embarcadero_master_secret_example' # String | 
}

begin
  #Update Group
  result = api_instance.update_group(item, body, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GroupsApi->update_group: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **item** | **String**| A group name | 
 **body** | [**UpdateGroupObject**](UpdateGroupObject.md)| Object to sign up a new EMS User in the EMS Server | 
 **x_embarcadero_application_id** | **String**|  | [optional] 
 **x_embarcadero_app_secret** | **String**|  | [optional] 
 **x_embarcadero_master_secret** | **String**|  | [optional] 

### Return type

[**UpdatedGroupObject**](UpdatedGroupObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



