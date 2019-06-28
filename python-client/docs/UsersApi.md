# swagger_client.UsersApi

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
> UseridObject add_user(body, x_embarcadero_application_id=x_embarcadero_application_id, x_embarcadero_app_secret=x_embarcadero_app_secret, x_embarcadero_master_secret=x_embarcadero_master_secret)

Add User

 |      Used to add a new `User` object to the EMS database.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.UsersApi()
body = swagger_client.UserCredentialsObject() # UserCredentialsObject | Object to add a new EMS User in the EMS Server
x_embarcadero_application_id = 'x_embarcadero_application_id_example' # str |  (optional)
x_embarcadero_app_secret = 'x_embarcadero_app_secret_example' # str |  (optional)
x_embarcadero_master_secret = 'x_embarcadero_master_secret_example' # str |  (optional)

try:
    # Add User
    api_response = api_instance.add_user(body, x_embarcadero_application_id=x_embarcadero_application_id, x_embarcadero_app_secret=x_embarcadero_app_secret, x_embarcadero_master_secret=x_embarcadero_master_secret)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling UsersApi->add_user: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**UserCredentialsObject**](UserCredentialsObject.md)| Object to add a new EMS User in the EMS Server | 
 **x_embarcadero_application_id** | **str**|  | [optional] 
 **x_embarcadero_app_secret** | **str**|  | [optional] 
 **x_embarcadero_master_secret** | **str**|  | [optional] 

### Return type

[**UseridObject**](UseridObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_user**
> delete_user(id, x_embarcadero_application_id=x_embarcadero_application_id, x_embarcadero_app_secret=x_embarcadero_app_secret, x_embarcadero_master_secret=x_embarcadero_master_secret)

Delete User

 |      Used to delete a `User`. **id** is the unique EMS User identifier (UID) in the EMS database.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.UsersApi()
id = 'id_example' # str | A user ID
x_embarcadero_application_id = 'x_embarcadero_application_id_example' # str |  (optional)
x_embarcadero_app_secret = 'x_embarcadero_app_secret_example' # str |  (optional)
x_embarcadero_master_secret = 'x_embarcadero_master_secret_example' # str |  (optional)

try:
    # Delete User
    api_instance.delete_user(id, x_embarcadero_application_id=x_embarcadero_application_id, x_embarcadero_app_secret=x_embarcadero_app_secret, x_embarcadero_master_secret=x_embarcadero_master_secret)
except ApiException as e:
    print("Exception when calling UsersApi->delete_user: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**| A user ID | 
 **x_embarcadero_application_id** | **str**|  | [optional] 
 **x_embarcadero_app_secret** | **str**|  | [optional] 
 **x_embarcadero_master_secret** | **str**|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_user**
> UserObject get_user(id, x_embarcadero_application_id=x_embarcadero_application_id, x_embarcadero_app_secret=x_embarcadero_app_secret, x_embarcadero_master_secret=x_embarcadero_master_secret)

Get User

 |      Used to retrieve all data from a `User`. **id** is the unique EMS User identifier (UID) in the EMS database.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.UsersApi()
id = 'id_example' # str | A user ID
x_embarcadero_application_id = 'x_embarcadero_application_id_example' # str |  (optional)
x_embarcadero_app_secret = 'x_embarcadero_app_secret_example' # str |  (optional)
x_embarcadero_master_secret = 'x_embarcadero_master_secret_example' # str |  (optional)

try:
    # Get User
    api_response = api_instance.get_user(id, x_embarcadero_application_id=x_embarcadero_application_id, x_embarcadero_app_secret=x_embarcadero_app_secret, x_embarcadero_master_secret=x_embarcadero_master_secret)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling UsersApi->get_user: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**| A user ID | 
 **x_embarcadero_application_id** | **str**|  | [optional] 
 **x_embarcadero_app_secret** | **str**|  | [optional] 
 **x_embarcadero_master_secret** | **str**|  | [optional] 

### Return type

[**UserObject**](UserObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_user_fields**
> list[FieldObject] get_user_fields(x_embarcadero_application_id=x_embarcadero_application_id, x_embarcadero_app_secret=x_embarcadero_app_secret, x_embarcadero_master_secret=x_embarcadero_master_secret)

Get Fields

 |      Used to retrieve all the `field names` of the EMS Users (including the custom fields).

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.UsersApi()
x_embarcadero_application_id = 'x_embarcadero_application_id_example' # str |  (optional)
x_embarcadero_app_secret = 'x_embarcadero_app_secret_example' # str |  (optional)
x_embarcadero_master_secret = 'x_embarcadero_master_secret_example' # str |  (optional)

try:
    # Get Fields
    api_response = api_instance.get_user_fields(x_embarcadero_application_id=x_embarcadero_application_id, x_embarcadero_app_secret=x_embarcadero_app_secret, x_embarcadero_master_secret=x_embarcadero_master_secret)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling UsersApi->get_user_fields: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_embarcadero_application_id** | **str**|  | [optional] 
 **x_embarcadero_app_secret** | **str**|  | [optional] 
 **x_embarcadero_master_secret** | **str**|  | [optional] 

### Return type

[**list[FieldObject]**](FieldObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_user_groups**
> list[GroupName] get_user_groups(id, x_embarcadero_application_id=x_embarcadero_application_id, x_embarcadero_app_secret=x_embarcadero_app_secret, x_embarcadero_master_secret=x_embarcadero_master_secret)

Get User Groups

 |      Used to retrieve the EMS Groups the EMS User belongs to. **id** is the unique EMS User identifier (UID) in the EMS database.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.UsersApi()
id = 'id_example' # str | A user ID
x_embarcadero_application_id = 'x_embarcadero_application_id_example' # str |  (optional)
x_embarcadero_app_secret = 'x_embarcadero_app_secret_example' # str |  (optional)
x_embarcadero_master_secret = 'x_embarcadero_master_secret_example' # str |  (optional)

try:
    # Get User Groups
    api_response = api_instance.get_user_groups(id, x_embarcadero_application_id=x_embarcadero_application_id, x_embarcadero_app_secret=x_embarcadero_app_secret, x_embarcadero_master_secret=x_embarcadero_master_secret)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling UsersApi->get_user_groups: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**| A user ID | 
 **x_embarcadero_application_id** | **str**|  | [optional] 
 **x_embarcadero_app_secret** | **str**|  | [optional] 
 **x_embarcadero_master_secret** | **str**|  | [optional] 

### Return type

[**list[GroupName]**](GroupName.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_users**
> list[UserObject] get_users(x_embarcadero_application_id=x_embarcadero_application_id, x_embarcadero_app_secret=x_embarcadero_app_secret, x_embarcadero_master_secret=x_embarcadero_master_secret, skip=skip, limit=limit, order=order, where=where)

Get Users

 |      Used to retrieve all data from `Users`.      Optional query param of **skip, limit, order, where** determines       size of returned array, filtered and order by.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.UsersApi()
x_embarcadero_application_id = 'x_embarcadero_application_id_example' # str |  (optional)
x_embarcadero_app_secret = 'x_embarcadero_app_secret_example' # str |  (optional)
x_embarcadero_master_secret = 'x_embarcadero_master_secret_example' # str |  (optional)
skip = 8.14 # float | users skipped (optional)
limit = 8.14 # float | maximum number of results to return (optional)
order = 8.14 # float | order ascending or descending (asc, desc) (optional)
where = 'where_example' # str | filter operators (lt, lte, gt, gte, eq, neq, like, nlike) (optional)

try:
    # Get Users
    api_response = api_instance.get_users(x_embarcadero_application_id=x_embarcadero_application_id, x_embarcadero_app_secret=x_embarcadero_app_secret, x_embarcadero_master_secret=x_embarcadero_master_secret, skip=skip, limit=limit, order=order, where=where)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling UsersApi->get_users: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_embarcadero_application_id** | **str**|  | [optional] 
 **x_embarcadero_app_secret** | **str**|  | [optional] 
 **x_embarcadero_master_secret** | **str**|  | [optional] 
 **skip** | **float**| users skipped | [optional] 
 **limit** | **float**| maximum number of results to return | [optional] 
 **order** | **float**| order ascending or descending (asc, desc) | [optional] 
 **where** | **str**| filter operators (lt, lte, gt, gte, eq, neq, like, nlike) | [optional] 

### Return type

[**list[UserObject]**](UserObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **login_user**
> UserTokenObject login_user(body, x_embarcadero_application_id=x_embarcadero_application_id, x_embarcadero_app_secret=x_embarcadero_app_secret, x_embarcadero_master_secret=x_embarcadero_master_secret)

Log In

 |      Logs in to the EMS Server with a specific EMS User.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.UsersApi()
body = swagger_client.UserCredentialsObject() # UserCredentialsObject | A user object
x_embarcadero_application_id = 'x_embarcadero_application_id_example' # str |  (optional)
x_embarcadero_app_secret = 'x_embarcadero_app_secret_example' # str |  (optional)
x_embarcadero_master_secret = 'x_embarcadero_master_secret_example' # str |  (optional)

try:
    # Log In
    api_response = api_instance.login_user(body, x_embarcadero_application_id=x_embarcadero_application_id, x_embarcadero_app_secret=x_embarcadero_app_secret, x_embarcadero_master_secret=x_embarcadero_master_secret)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling UsersApi->login_user: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**UserCredentialsObject**](UserCredentialsObject.md)| A user object | 
 **x_embarcadero_application_id** | **str**|  | [optional] 
 **x_embarcadero_app_secret** | **str**|  | [optional] 
 **x_embarcadero_master_secret** | **str**|  | [optional] 

### Return type

[**UserTokenObject**](UserTokenObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **logout_user**
> logout_user(x_embarcadero_application_id=x_embarcadero_application_id, x_embarcadero_app_secret=x_embarcadero_app_secret, x_embarcadero_master_secret=x_embarcadero_master_secret)

sPostLogoutSummaryTitle

sPostLogoutSummaryDesc

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.UsersApi()
x_embarcadero_application_id = 'x_embarcadero_application_id_example' # str |  (optional)
x_embarcadero_app_secret = 'x_embarcadero_app_secret_example' # str |  (optional)
x_embarcadero_master_secret = 'x_embarcadero_master_secret_example' # str |  (optional)

try:
    # sPostLogoutSummaryTitle
    api_instance.logout_user(x_embarcadero_application_id=x_embarcadero_application_id, x_embarcadero_app_secret=x_embarcadero_app_secret, x_embarcadero_master_secret=x_embarcadero_master_secret)
except ApiException as e:
    print("Exception when calling UsersApi->logout_user: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_embarcadero_application_id** | **str**|  | [optional] 
 **x_embarcadero_app_secret** | **str**|  | [optional] 
 **x_embarcadero_master_secret** | **str**|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **signup_user**
> UserSignUpResponseObject signup_user(body, x_embarcadero_application_id=x_embarcadero_application_id, x_embarcadero_app_secret=x_embarcadero_app_secret, x_embarcadero_master_secret=x_embarcadero_master_secret)

Sign Up  User

 |      Signs up to the EMS Server with an appropriate EMS User.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.UsersApi()
body = swagger_client.UserCredentialsObject() # UserCredentialsObject | Object to sign up a new EMS User in the EMS Server
x_embarcadero_application_id = 'x_embarcadero_application_id_example' # str |  (optional)
x_embarcadero_app_secret = 'x_embarcadero_app_secret_example' # str |  (optional)
x_embarcadero_master_secret = 'x_embarcadero_master_secret_example' # str |  (optional)

try:
    # Sign Up  User
    api_response = api_instance.signup_user(body, x_embarcadero_application_id=x_embarcadero_application_id, x_embarcadero_app_secret=x_embarcadero_app_secret, x_embarcadero_master_secret=x_embarcadero_master_secret)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling UsersApi->signup_user: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**UserCredentialsObject**](UserCredentialsObject.md)| Object to sign up a new EMS User in the EMS Server | 
 **x_embarcadero_application_id** | **str**|  | [optional] 
 **x_embarcadero_app_secret** | **str**|  | [optional] 
 **x_embarcadero_master_secret** | **str**|  | [optional] 

### Return type

[**UserSignUpResponseObject**](UserSignUpResponseObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_user**
> UpdatedObject update_user(id, body, x_embarcadero_application_id=x_embarcadero_application_id, x_embarcadero_app_secret=x_embarcadero_app_secret, x_embarcadero_master_secret=x_embarcadero_master_secret)

Update User

 |      Used to update a `User`. **id** is the unique EMS User identifier (UID) in the EMS database.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.UsersApi()
id = 'id_example' # str | A user ID
body = swagger_client.UpdateObject() # UpdateObject | Add any fieldName
x_embarcadero_application_id = 'x_embarcadero_application_id_example' # str |  (optional)
x_embarcadero_app_secret = 'x_embarcadero_app_secret_example' # str |  (optional)
x_embarcadero_master_secret = 'x_embarcadero_master_secret_example' # str |  (optional)

try:
    # Update User
    api_response = api_instance.update_user(id, body, x_embarcadero_application_id=x_embarcadero_application_id, x_embarcadero_app_secret=x_embarcadero_app_secret, x_embarcadero_master_secret=x_embarcadero_master_secret)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling UsersApi->update_user: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**| A user ID | 
 **body** | [**UpdateObject**](UpdateObject.md)| Add any fieldName | 
 **x_embarcadero_application_id** | **str**|  | [optional] 
 **x_embarcadero_app_secret** | **str**|  | [optional] 
 **x_embarcadero_master_secret** | **str**|  | [optional] 

### Return type

[**UpdatedObject**](UpdatedObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

