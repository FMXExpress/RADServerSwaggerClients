# swagger_client.GroupsApi

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
> add_group(body, x_embarcadero_application_id=x_embarcadero_application_id, x_embarcadero_app_secret=x_embarcadero_app_secret, x_embarcadero_master_secret=x_embarcadero_master_secret)

Add Group

 |      Used to add a new `Group` object to the EMS database.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.GroupsApi()
body = swagger_client.GroupAddObject() # GroupAddObject | Object to sign up a new EMS User in the EMS Server
x_embarcadero_application_id = 'x_embarcadero_application_id_example' # str |  (optional)
x_embarcadero_app_secret = 'x_embarcadero_app_secret_example' # str |  (optional)
x_embarcadero_master_secret = 'x_embarcadero_master_secret_example' # str |  (optional)

try:
    # Add Group
    api_instance.add_group(body, x_embarcadero_application_id=x_embarcadero_application_id, x_embarcadero_app_secret=x_embarcadero_app_secret, x_embarcadero_master_secret=x_embarcadero_master_secret)
except ApiException as e:
    print("Exception when calling GroupsApi->add_group: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**GroupAddObject**](GroupAddObject.md)| Object to sign up a new EMS User in the EMS Server | 
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

# **delete_group**
> delete_group(item, x_embarcadero_application_id=x_embarcadero_application_id, x_embarcadero_app_secret=x_embarcadero_app_secret, x_embarcadero_master_secret=x_embarcadero_master_secret)

Delete Group

 |      Used to delete a `Group`. **item** is the unique EMS Group name in the EMS database.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.GroupsApi()
item = 'item_example' # str | A group name
x_embarcadero_application_id = 'x_embarcadero_application_id_example' # str |  (optional)
x_embarcadero_app_secret = 'x_embarcadero_app_secret_example' # str |  (optional)
x_embarcadero_master_secret = 'x_embarcadero_master_secret_example' # str |  (optional)

try:
    # Delete Group
    api_instance.delete_group(item, x_embarcadero_application_id=x_embarcadero_application_id, x_embarcadero_app_secret=x_embarcadero_app_secret, x_embarcadero_master_secret=x_embarcadero_master_secret)
except ApiException as e:
    print("Exception when calling GroupsApi->delete_group: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **item** | **str**| A group name | 
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

# **get_group**
> GroupObject get_group(item, x_embarcadero_application_id=x_embarcadero_application_id, x_embarcadero_app_secret=x_embarcadero_app_secret, x_embarcadero_master_secret=x_embarcadero_master_secret)

Get Group

 |      Used to retrieve all data from a `Group`. **item** is the unique EMS Group name in the EMS database.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.GroupsApi()
item = 'item_example' # str | A group name
x_embarcadero_application_id = 'x_embarcadero_application_id_example' # str |  (optional)
x_embarcadero_app_secret = 'x_embarcadero_app_secret_example' # str |  (optional)
x_embarcadero_master_secret = 'x_embarcadero_master_secret_example' # str |  (optional)

try:
    # Get Group
    api_response = api_instance.get_group(item, x_embarcadero_application_id=x_embarcadero_application_id, x_embarcadero_app_secret=x_embarcadero_app_secret, x_embarcadero_master_secret=x_embarcadero_master_secret)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling GroupsApi->get_group: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **item** | **str**| A group name | 
 **x_embarcadero_application_id** | **str**|  | [optional] 
 **x_embarcadero_app_secret** | **str**|  | [optional] 
 **x_embarcadero_master_secret** | **str**|  | [optional] 

### Return type

[**GroupObject**](GroupObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_group_fields**
> list[FieldGroupObject] get_group_fields(x_embarcadero_application_id=x_embarcadero_application_id, x_embarcadero_app_secret=x_embarcadero_app_secret, x_embarcadero_master_secret=x_embarcadero_master_secret)

Get Fields

 |      Used to retrieve all the `field names` of the EMS Group (including the custom fields).

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.GroupsApi()
x_embarcadero_application_id = 'x_embarcadero_application_id_example' # str |  (optional)
x_embarcadero_app_secret = 'x_embarcadero_app_secret_example' # str |  (optional)
x_embarcadero_master_secret = 'x_embarcadero_master_secret_example' # str |  (optional)

try:
    # Get Fields
    api_response = api_instance.get_group_fields(x_embarcadero_application_id=x_embarcadero_application_id, x_embarcadero_app_secret=x_embarcadero_app_secret, x_embarcadero_master_secret=x_embarcadero_master_secret)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling GroupsApi->get_group_fields: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_embarcadero_application_id** | **str**|  | [optional] 
 **x_embarcadero_app_secret** | **str**|  | [optional] 
 **x_embarcadero_master_secret** | **str**|  | [optional] 

### Return type

[**list[FieldGroupObject]**](FieldGroupObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_groups**
> list[GroupObject] get_groups(x_embarcadero_application_id=x_embarcadero_application_id, x_embarcadero_app_secret=x_embarcadero_app_secret, x_embarcadero_master_secret=x_embarcadero_master_secret, skip=skip, limit=limit, order=order, where=where)

Get Groups

 |      Used to retrieve all data from `Groups`.      Optional query param of **skip, limit, order, where** determines       size of returned array, filtered and order by.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.GroupsApi()
x_embarcadero_application_id = 'x_embarcadero_application_id_example' # str |  (optional)
x_embarcadero_app_secret = 'x_embarcadero_app_secret_example' # str |  (optional)
x_embarcadero_master_secret = 'x_embarcadero_master_secret_example' # str |  (optional)
skip = 8.14 # float | users skipped (optional)
limit = 8.14 # float | maximum number of results to return (optional)
order = 8.14 # float | order ascending or descending (asc, desc) (optional)
where = 'where_example' # str | filter operators (lt, lte, gt, gte, eq, neq, like, nlike) (optional)

try:
    # Get Groups
    api_response = api_instance.get_groups(x_embarcadero_application_id=x_embarcadero_application_id, x_embarcadero_app_secret=x_embarcadero_app_secret, x_embarcadero_master_secret=x_embarcadero_master_secret, skip=skip, limit=limit, order=order, where=where)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling GroupsApi->get_groups: %s\n" % e)
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

[**list[GroupObject]**](GroupObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_group**
> UpdatedGroupObject update_group(item, body, x_embarcadero_application_id=x_embarcadero_application_id, x_embarcadero_app_secret=x_embarcadero_app_secret, x_embarcadero_master_secret=x_embarcadero_master_secret)

Update Group

 |      Used to update a `Group`. **item** is the unique EMS Group name in the EMS database.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.GroupsApi()
item = 'item_example' # str | A group name
body = swagger_client.UpdateGroupObject() # UpdateGroupObject | Object to sign up a new EMS User in the EMS Server
x_embarcadero_application_id = 'x_embarcadero_application_id_example' # str |  (optional)
x_embarcadero_app_secret = 'x_embarcadero_app_secret_example' # str |  (optional)
x_embarcadero_master_secret = 'x_embarcadero_master_secret_example' # str |  (optional)

try:
    # Update Group
    api_response = api_instance.update_group(item, body, x_embarcadero_application_id=x_embarcadero_application_id, x_embarcadero_app_secret=x_embarcadero_app_secret, x_embarcadero_master_secret=x_embarcadero_master_secret)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling GroupsApi->update_group: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **item** | **str**| A group name | 
 **body** | [**UpdateGroupObject**](UpdateGroupObject.md)| Object to sign up a new EMS User in the EMS Server | 
 **x_embarcadero_application_id** | **str**|  | [optional] 
 **x_embarcadero_app_secret** | **str**|  | [optional] 
 **x_embarcadero_master_secret** | **str**|  | [optional] 

### Return type

[**UpdatedGroupObject**](UpdatedGroupObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

