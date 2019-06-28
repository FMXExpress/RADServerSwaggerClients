# SwaggerClient::UsersApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_user**](UsersApi.md#add_user) | **POST** /users | Add User
[**delete_user**](UsersApi.md#delete_user) | **DELETE** /users/{id} | Delete User
[**get_user**](UsersApi.md#get_user) | **GET** /users/{id} | Get User
[**get_user_fields**](UsersApi.md#get_user_fields) | **GET** /users/fields | Get Fields
[**get_user_groups**](UsersApi.md#get_user_groups) | **GET** /users/{id}/groups | Get User Groups
[**get_users**](UsersApi.md#get_users) | **GET** /users | Get Users
[**login_user**](UsersApi.md#login_user) | **POST** /users/login | Log In
[**logout_user**](UsersApi.md#logout_user) | **POST** /users/logout | sPostLogoutSummaryTitle
[**signup_user**](UsersApi.md#signup_user) | **POST** /users/signup | Sign Up  User
[**update_user**](UsersApi.md#update_user) | **PUT** /users/{id} | Update User


# **add_user**
> UseridObject add_user(body, opts)

Add User

 |      Used to add a new `User` object to the EMS database.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::UsersApi.new

body = SwaggerClient::UserCredentialsObject.new # UserCredentialsObject | Object to add a new EMS User in the EMS Server

opts = { 
  x_embarcadero_application_id: 'x_embarcadero_application_id_example', # String | 
  x_embarcadero_app_secret: 'x_embarcadero_app_secret_example', # String | 
  x_embarcadero_master_secret: 'x_embarcadero_master_secret_example' # String | 
}

begin
  #Add User
  result = api_instance.add_user(body, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UsersApi->add_user: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**UserCredentialsObject**](UserCredentialsObject.md)| Object to add a new EMS User in the EMS Server | 
 **x_embarcadero_application_id** | **String**|  | [optional] 
 **x_embarcadero_app_secret** | **String**|  | [optional] 
 **x_embarcadero_master_secret** | **String**|  | [optional] 

### Return type

[**UseridObject**](UseridObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_user**
> delete_user(id, opts)

Delete User

 |      Used to delete a `User`. **id** is the unique EMS User identifier (UID) in the EMS database.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::UsersApi.new

id = 'id_example' # String | A user ID

opts = { 
  x_embarcadero_application_id: 'x_embarcadero_application_id_example', # String | 
  x_embarcadero_app_secret: 'x_embarcadero_app_secret_example', # String | 
  x_embarcadero_master_secret: 'x_embarcadero_master_secret_example' # String | 
}

begin
  #Delete User
  api_instance.delete_user(id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UsersApi->delete_user: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A user ID | 
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



# **get_user**
> UserObject get_user(id, opts)

Get User

 |      Used to retrieve all data from a `User`. **id** is the unique EMS User identifier (UID) in the EMS database.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::UsersApi.new

id = 'id_example' # String | A user ID

opts = { 
  x_embarcadero_application_id: 'x_embarcadero_application_id_example', # String | 
  x_embarcadero_app_secret: 'x_embarcadero_app_secret_example', # String | 
  x_embarcadero_master_secret: 'x_embarcadero_master_secret_example' # String | 
}

begin
  #Get User
  result = api_instance.get_user(id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UsersApi->get_user: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A user ID | 
 **x_embarcadero_application_id** | **String**|  | [optional] 
 **x_embarcadero_app_secret** | **String**|  | [optional] 
 **x_embarcadero_master_secret** | **String**|  | [optional] 

### Return type

[**UserObject**](UserObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_user_fields**
> Array&lt;FieldObject&gt; get_user_fields(opts)

Get Fields

 |      Used to retrieve all the `field names` of the EMS Users (including the custom fields).

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::UsersApi.new

opts = { 
  x_embarcadero_application_id: 'x_embarcadero_application_id_example', # String | 
  x_embarcadero_app_secret: 'x_embarcadero_app_secret_example', # String | 
  x_embarcadero_master_secret: 'x_embarcadero_master_secret_example' # String | 
}

begin
  #Get Fields
  result = api_instance.get_user_fields(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UsersApi->get_user_fields: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_embarcadero_application_id** | **String**|  | [optional] 
 **x_embarcadero_app_secret** | **String**|  | [optional] 
 **x_embarcadero_master_secret** | **String**|  | [optional] 

### Return type

[**Array&lt;FieldObject&gt;**](FieldObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_user_groups**
> Array&lt;GroupName&gt; get_user_groups(id, opts)

Get User Groups

 |      Used to retrieve the EMS Groups the EMS User belongs to. **id** is the unique EMS User identifier (UID) in the EMS database.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::UsersApi.new

id = 'id_example' # String | A user ID

opts = { 
  x_embarcadero_application_id: 'x_embarcadero_application_id_example', # String | 
  x_embarcadero_app_secret: 'x_embarcadero_app_secret_example', # String | 
  x_embarcadero_master_secret: 'x_embarcadero_master_secret_example' # String | 
}

begin
  #Get User Groups
  result = api_instance.get_user_groups(id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UsersApi->get_user_groups: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A user ID | 
 **x_embarcadero_application_id** | **String**|  | [optional] 
 **x_embarcadero_app_secret** | **String**|  | [optional] 
 **x_embarcadero_master_secret** | **String**|  | [optional] 

### Return type

[**Array&lt;GroupName&gt;**](GroupName.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_users**
> Array&lt;UserObject&gt; get_users(opts)

Get Users

 |      Used to retrieve all data from `Users`.      Optional query param of **skip, limit, order, where** determines       size of returned array, filtered and order by.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::UsersApi.new

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
  #Get Users
  result = api_instance.get_users(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UsersApi->get_users: #{e}"
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

[**Array&lt;UserObject&gt;**](UserObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **login_user**
> UserTokenObject login_user(body, opts)

Log In

 |      Logs in to the EMS Server with a specific EMS User.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::UsersApi.new

body = SwaggerClient::UserCredentialsObject.new # UserCredentialsObject | A user object

opts = { 
  x_embarcadero_application_id: 'x_embarcadero_application_id_example', # String | 
  x_embarcadero_app_secret: 'x_embarcadero_app_secret_example', # String | 
  x_embarcadero_master_secret: 'x_embarcadero_master_secret_example' # String | 
}

begin
  #Log In
  result = api_instance.login_user(body, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UsersApi->login_user: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**UserCredentialsObject**](UserCredentialsObject.md)| A user object | 
 **x_embarcadero_application_id** | **String**|  | [optional] 
 **x_embarcadero_app_secret** | **String**|  | [optional] 
 **x_embarcadero_master_secret** | **String**|  | [optional] 

### Return type

[**UserTokenObject**](UserTokenObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **logout_user**
> logout_user(opts)

sPostLogoutSummaryTitle

sPostLogoutSummaryDesc

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::UsersApi.new

opts = { 
  x_embarcadero_application_id: 'x_embarcadero_application_id_example', # String | 
  x_embarcadero_app_secret: 'x_embarcadero_app_secret_example', # String | 
  x_embarcadero_master_secret: 'x_embarcadero_master_secret_example' # String | 
}

begin
  #sPostLogoutSummaryTitle
  api_instance.logout_user(opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UsersApi->logout_user: #{e}"
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

 - **Content-Type**: application/json
 - **Accept**: application/json



# **signup_user**
> UserSignUpResponseObject signup_user(body, opts)

Sign Up  User

 |      Signs up to the EMS Server with an appropriate EMS User.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::UsersApi.new

body = SwaggerClient::UserCredentialsObject.new # UserCredentialsObject | Object to sign up a new EMS User in the EMS Server

opts = { 
  x_embarcadero_application_id: 'x_embarcadero_application_id_example', # String | 
  x_embarcadero_app_secret: 'x_embarcadero_app_secret_example', # String | 
  x_embarcadero_master_secret: 'x_embarcadero_master_secret_example' # String | 
}

begin
  #Sign Up  User
  result = api_instance.signup_user(body, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UsersApi->signup_user: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**UserCredentialsObject**](UserCredentialsObject.md)| Object to sign up a new EMS User in the EMS Server | 
 **x_embarcadero_application_id** | **String**|  | [optional] 
 **x_embarcadero_app_secret** | **String**|  | [optional] 
 **x_embarcadero_master_secret** | **String**|  | [optional] 

### Return type

[**UserSignUpResponseObject**](UserSignUpResponseObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_user**
> UpdatedObject update_user(id, body, opts)

Update User

 |      Used to update a `User`. **id** is the unique EMS User identifier (UID) in the EMS database.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::UsersApi.new

id = 'id_example' # String | A user ID

body = SwaggerClient::UpdateObject.new # UpdateObject | Add any fieldName

opts = { 
  x_embarcadero_application_id: 'x_embarcadero_application_id_example', # String | 
  x_embarcadero_app_secret: 'x_embarcadero_app_secret_example', # String | 
  x_embarcadero_master_secret: 'x_embarcadero_master_secret_example' # String | 
}

begin
  #Update User
  result = api_instance.update_user(id, body, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UsersApi->update_user: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A user ID | 
 **body** | [**UpdateObject**](UpdateObject.md)| Add any fieldName | 
 **x_embarcadero_application_id** | **String**|  | [optional] 
 **x_embarcadero_app_secret** | **String**|  | [optional] 
 **x_embarcadero_master_secret** | **String**|  | [optional] 

### Return type

[**UpdatedObject**](UpdatedObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



