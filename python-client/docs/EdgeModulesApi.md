# swagger_client.EdgeModulesApi

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
> EdgeModuleObject get_module(mname, x_embarcadero_application_id=x_embarcadero_application_id, x_embarcadero_app_secret=x_embarcadero_app_secret, x_embarcadero_master_secret=x_embarcadero_master_secret)

Get Module

 |      Used to retrieve all data from `EdgeModule`.      Optional query param of **skip, limit, order, where** determines       size of returned array, filtered and order by.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.EdgeModulesApi()
mname = 'mname_example' # str | Is the unique EMS EdgeModule identifier
x_embarcadero_application_id = 'x_embarcadero_application_id_example' # str |  (optional)
x_embarcadero_app_secret = 'x_embarcadero_app_secret_example' # str |  (optional)
x_embarcadero_master_secret = 'x_embarcadero_master_secret_example' # str |  (optional)

try:
    # Get Module
    api_response = api_instance.get_module(mname, x_embarcadero_application_id=x_embarcadero_application_id, x_embarcadero_app_secret=x_embarcadero_app_secret, x_embarcadero_master_secret=x_embarcadero_master_secret)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling EdgeModulesApi->get_module: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **str**| Is the unique EMS EdgeModule identifier | 
 **x_embarcadero_application_id** | **str**|  | [optional] 
 **x_embarcadero_app_secret** | **str**|  | [optional] 
 **x_embarcadero_master_secret** | **str**|  | [optional] 

### Return type

[**EdgeModuleObject**](EdgeModuleObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_module_resource**
> EdgeModuleResourceObject get_module_resource(mname, name, x_embarcadero_application_id=x_embarcadero_application_id, x_embarcadero_app_secret=x_embarcadero_app_secret, x_embarcadero_master_secret=x_embarcadero_master_secret)

Get EdgeModule Resource

 |      Used to retrieve all data from a resource of an EdgeModule. **mname** is the unique EMS EdgeModule identifier in the EMS database. **resourcename** is the name of the resource.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.EdgeModulesApi()
mname = 'mname_example' # str | Is the unique EMS EdgeModule identifier
name = 'name_example' # str | Is the unique EMS EdgeModule Resource name
x_embarcadero_application_id = 'x_embarcadero_application_id_example' # str |  (optional)
x_embarcadero_app_secret = 'x_embarcadero_app_secret_example' # str |  (optional)
x_embarcadero_master_secret = 'x_embarcadero_master_secret_example' # str |  (optional)

try:
    # Get EdgeModule Resource
    api_response = api_instance.get_module_resource(mname, name, x_embarcadero_application_id=x_embarcadero_application_id, x_embarcadero_app_secret=x_embarcadero_app_secret, x_embarcadero_master_secret=x_embarcadero_master_secret)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling EdgeModulesApi->get_module_resource: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **str**| Is the unique EMS EdgeModule identifier | 
 **name** | **str**| Is the unique EMS EdgeModule Resource name | 
 **x_embarcadero_application_id** | **str**|  | [optional] 
 **x_embarcadero_app_secret** | **str**|  | [optional] 
 **x_embarcadero_master_secret** | **str**|  | [optional] 

### Return type

[**EdgeModuleResourceObject**](EdgeModuleResourceObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_module_resources**
> list[EdgeModuleResourceObject] get_module_resources(mname, x_embarcadero_application_id=x_embarcadero_application_id, x_embarcadero_app_secret=x_embarcadero_app_secret, x_embarcadero_master_secret=x_embarcadero_master_secret)

Get EdgeModule Resources

 |      Used to retrieve all data from the resources of an EdgeModule.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.EdgeModulesApi()
mname = 'mname_example' # str | Is the unique EMS EdgeModule identifier
x_embarcadero_application_id = 'x_embarcadero_application_id_example' # str |  (optional)
x_embarcadero_app_secret = 'x_embarcadero_app_secret_example' # str |  (optional)
x_embarcadero_master_secret = 'x_embarcadero_master_secret_example' # str |  (optional)

try:
    # Get EdgeModule Resources
    api_response = api_instance.get_module_resources(mname, x_embarcadero_application_id=x_embarcadero_application_id, x_embarcadero_app_secret=x_embarcadero_app_secret, x_embarcadero_master_secret=x_embarcadero_master_secret)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling EdgeModulesApi->get_module_resources: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **str**| Is the unique EMS EdgeModule identifier | 
 **x_embarcadero_application_id** | **str**|  | [optional] 
 **x_embarcadero_app_secret** | **str**|  | [optional] 
 **x_embarcadero_master_secret** | **str**|  | [optional] 

### Return type

[**list[EdgeModuleResourceObject]**](EdgeModuleResourceObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_modules**
> list[EdgeModuleObject] get_modules(x_embarcadero_application_id=x_embarcadero_application_id, x_embarcadero_app_secret=x_embarcadero_app_secret, x_embarcadero_master_secret=x_embarcadero_master_secret)

Get Module

 |      Used to retrieve all data from `EdgeModule`.      Optional query param of **skip, limit, order, where** determines       size of returned array, filtered and order by.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.EdgeModulesApi()
x_embarcadero_application_id = 'x_embarcadero_application_id_example' # str |  (optional)
x_embarcadero_app_secret = 'x_embarcadero_app_secret_example' # str |  (optional)
x_embarcadero_master_secret = 'x_embarcadero_master_secret_example' # str |  (optional)

try:
    # Get Module
    api_response = api_instance.get_modules(x_embarcadero_application_id=x_embarcadero_application_id, x_embarcadero_app_secret=x_embarcadero_app_secret, x_embarcadero_master_secret=x_embarcadero_master_secret)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling EdgeModulesApi->get_modules: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_embarcadero_application_id** | **str**|  | [optional] 
 **x_embarcadero_app_secret** | **str**|  | [optional] 
 **x_embarcadero_master_secret** | **str**|  | [optional] 

### Return type

[**list[EdgeModuleObject]**](EdgeModuleObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_modules_fields**
> FieldsEdgeModuleObject get_modules_fields(x_embarcadero_application_id=x_embarcadero_application_id, x_embarcadero_app_secret=x_embarcadero_app_secret, x_embarcadero_master_secret=x_embarcadero_master_secret)

Get Fields

 |      Used to retrieve all the `field names` of the EMS EdgeModule (including the custom fields).

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.EdgeModulesApi()
x_embarcadero_application_id = 'x_embarcadero_application_id_example' # str |  (optional)
x_embarcadero_app_secret = 'x_embarcadero_app_secret_example' # str |  (optional)
x_embarcadero_master_secret = 'x_embarcadero_master_secret_example' # str |  (optional)

try:
    # Get Fields
    api_response = api_instance.get_modules_fields(x_embarcadero_application_id=x_embarcadero_application_id, x_embarcadero_app_secret=x_embarcadero_app_secret, x_embarcadero_master_secret=x_embarcadero_master_secret)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling EdgeModulesApi->get_modules_fields: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_embarcadero_application_id** | **str**|  | [optional] 
 **x_embarcadero_app_secret** | **str**|  | [optional] 
 **x_embarcadero_master_secret** | **str**|  | [optional] 

### Return type

[**FieldsEdgeModuleObject**](FieldsEdgeModuleObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_resources**
> list[EdgeModuleResourceObject] get_resources(x_embarcadero_application_id=x_embarcadero_application_id, x_embarcadero_app_secret=x_embarcadero_app_secret, x_embarcadero_master_secret=x_embarcadero_master_secret)

Get EdgeModules Resources

 |      Used to retrieve all data from the resources of all EdgeModules.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.EdgeModulesApi()
x_embarcadero_application_id = 'x_embarcadero_application_id_example' # str |  (optional)
x_embarcadero_app_secret = 'x_embarcadero_app_secret_example' # str |  (optional)
x_embarcadero_master_secret = 'x_embarcadero_master_secret_example' # str |  (optional)

try:
    # Get EdgeModules Resources
    api_response = api_instance.get_resources(x_embarcadero_application_id=x_embarcadero_application_id, x_embarcadero_app_secret=x_embarcadero_app_secret, x_embarcadero_master_secret=x_embarcadero_master_secret)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling EdgeModulesApi->get_resources: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_embarcadero_application_id** | **str**|  | [optional] 
 **x_embarcadero_app_secret** | **str**|  | [optional] 
 **x_embarcadero_master_secret** | **str**|  | [optional] 

### Return type

[**list[EdgeModuleResourceObject]**](EdgeModuleResourceObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_resources_fields**
> FieldsEdgeModuleObject get_resources_fields(x_embarcadero_application_id=x_embarcadero_application_id, x_embarcadero_app_secret=x_embarcadero_app_secret, x_embarcadero_master_secret=x_embarcadero_master_secret)

Get Resource Fields

 |      Used to retrieve the `field names` of all the resources of the EMS EdgeModule (including the custom fields).

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.EdgeModulesApi()
x_embarcadero_application_id = 'x_embarcadero_application_id_example' # str |  (optional)
x_embarcadero_app_secret = 'x_embarcadero_app_secret_example' # str |  (optional)
x_embarcadero_master_secret = 'x_embarcadero_master_secret_example' # str |  (optional)

try:
    # Get Resource Fields
    api_response = api_instance.get_resources_fields(x_embarcadero_application_id=x_embarcadero_application_id, x_embarcadero_app_secret=x_embarcadero_app_secret, x_embarcadero_master_secret=x_embarcadero_master_secret)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling EdgeModulesApi->get_resources_fields: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_embarcadero_application_id** | **str**|  | [optional] 
 **x_embarcadero_app_secret** | **str**|  | [optional] 
 **x_embarcadero_master_secret** | **str**|  | [optional] 

### Return type

[**FieldsEdgeModuleObject**](FieldsEdgeModuleObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **register_module**
> EdgeModuleAddedObject register_module(body, x_embarcadero_application_id=x_embarcadero_application_id, x_embarcadero_app_secret=x_embarcadero_app_secret, x_embarcadero_master_secret=x_embarcadero_master_secret)

Add Module

 |      Used to add a new `EdgeModule` object to the EMS database.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.EdgeModulesApi()
body = swagger_client.EdgeModuleAddObject() # EdgeModuleAddObject | EdgeModule object to add. protocolprops example string {\\\"port\\\":8082,\\\"host\\\":\\\"10.150.40.52\\\"}
x_embarcadero_application_id = 'x_embarcadero_application_id_example' # str |  (optional)
x_embarcadero_app_secret = 'x_embarcadero_app_secret_example' # str |  (optional)
x_embarcadero_master_secret = 'x_embarcadero_master_secret_example' # str |  (optional)

try:
    # Add Module
    api_response = api_instance.register_module(body, x_embarcadero_application_id=x_embarcadero_application_id, x_embarcadero_app_secret=x_embarcadero_app_secret, x_embarcadero_master_secret=x_embarcadero_master_secret)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling EdgeModulesApi->register_module: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**EdgeModuleAddObject**](EdgeModuleAddObject.md)| EdgeModule object to add. protocolprops example string {\\\&quot;port\\\&quot;:8082,\\\&quot;host\\\&quot;:\\\&quot;10.150.40.52\\\&quot;} | 
 **x_embarcadero_application_id** | **str**|  | [optional] 
 **x_embarcadero_app_secret** | **str**|  | [optional] 
 **x_embarcadero_master_secret** | **str**|  | [optional] 

### Return type

[**EdgeModuleAddedObject**](EdgeModuleAddedObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **register_module_resource**
> EdgeModuleResourceAddedObject register_module_resource(mname, body, x_embarcadero_application_id=x_embarcadero_application_id, x_embarcadero_app_secret=x_embarcadero_app_secret, x_embarcadero_master_secret=x_embarcadero_master_secret)

Add Module Resource

 |      Used to register a new resource from an EMS EdgeModule. **mname** is the unique EMS EdgeModule identifier in the EMS database.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.EdgeModulesApi()
mname = 'mname_example' # str | Is the unique EMS EdgeModule identifier
body = swagger_client.EdgeModuleResourceAddObject() # EdgeModuleResourceAddObject | EdgModule Resource add object. protocolprops string example {\\\"port\\\":8082,\\\"host\\\":\\\"10.150.40.52\\\"}
x_embarcadero_application_id = 'x_embarcadero_application_id_example' # str |  (optional)
x_embarcadero_app_secret = 'x_embarcadero_app_secret_example' # str |  (optional)
x_embarcadero_master_secret = 'x_embarcadero_master_secret_example' # str |  (optional)

try:
    # Add Module Resource
    api_response = api_instance.register_module_resource(mname, body, x_embarcadero_application_id=x_embarcadero_application_id, x_embarcadero_app_secret=x_embarcadero_app_secret, x_embarcadero_master_secret=x_embarcadero_master_secret)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling EdgeModulesApi->register_module_resource: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **str**| Is the unique EMS EdgeModule identifier | 
 **body** | [**EdgeModuleResourceAddObject**](EdgeModuleResourceAddObject.md)| EdgModule Resource add object. protocolprops string example {\\\&quot;port\\\&quot;:8082,\\\&quot;host\\\&quot;:\\\&quot;10.150.40.52\\\&quot;} | 
 **x_embarcadero_application_id** | **str**|  | [optional] 
 **x_embarcadero_app_secret** | **str**|  | [optional] 
 **x_embarcadero_master_secret** | **str**|  | [optional] 

### Return type

[**EdgeModuleResourceAddedObject**](EdgeModuleResourceAddedObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **unregister_module**
> unregister_module(mname, x_embarcadero_application_id=x_embarcadero_application_id, x_embarcadero_app_secret=x_embarcadero_app_secret, x_embarcadero_master_secret=x_embarcadero_master_secret)

Delete Module

 |      Used to delete an `EdgeModule Resource`. **mname** is the unique EMS EdgeModule identifier (MID) in the EMS database. **resourcename** is the name of the resource.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.EdgeModulesApi()
mname = 'mname_example' # str | Is the unique EMS EdgeModule identifier
x_embarcadero_application_id = 'x_embarcadero_application_id_example' # str |  (optional)
x_embarcadero_app_secret = 'x_embarcadero_app_secret_example' # str |  (optional)
x_embarcadero_master_secret = 'x_embarcadero_master_secret_example' # str |  (optional)

try:
    # Delete Module
    api_instance.unregister_module(mname, x_embarcadero_application_id=x_embarcadero_application_id, x_embarcadero_app_secret=x_embarcadero_app_secret, x_embarcadero_master_secret=x_embarcadero_master_secret)
except ApiException as e:
    print("Exception when calling EdgeModulesApi->unregister_module: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **str**| Is the unique EMS EdgeModule identifier | 
 **x_embarcadero_application_id** | **str**|  | [optional] 
 **x_embarcadero_app_secret** | **str**|  | [optional] 
 **x_embarcadero_master_secret** | **str**|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **unregister_module_resource**
> unregister_module_resource(mname, name, x_embarcadero_application_id=x_embarcadero_application_id, x_embarcadero_app_secret=x_embarcadero_app_secret, x_embarcadero_master_secret=x_embarcadero_master_secret)

Delete Module Resource

 |      Used to delete an `EdgeModule Resource`. **mname** is the unique EMS EdgeModule identifier (MID) in the EMS database. **resourcename** is the name of the resource.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.EdgeModulesApi()
mname = 'mname_example' # str | Is the unique EMS EdgeModule identifier
name = 'name_example' # str | Is the unique EMS EdgeModule Resource name
x_embarcadero_application_id = 'x_embarcadero_application_id_example' # str |  (optional)
x_embarcadero_app_secret = 'x_embarcadero_app_secret_example' # str |  (optional)
x_embarcadero_master_secret = 'x_embarcadero_master_secret_example' # str |  (optional)

try:
    # Delete Module Resource
    api_instance.unregister_module_resource(mname, name, x_embarcadero_application_id=x_embarcadero_application_id, x_embarcadero_app_secret=x_embarcadero_app_secret, x_embarcadero_master_secret=x_embarcadero_master_secret)
except ApiException as e:
    print("Exception when calling EdgeModulesApi->unregister_module_resource: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **str**| Is the unique EMS EdgeModule identifier | 
 **name** | **str**| Is the unique EMS EdgeModule Resource name | 
 **x_embarcadero_application_id** | **str**|  | [optional] 
 **x_embarcadero_app_secret** | **str**|  | [optional] 
 **x_embarcadero_master_secret** | **str**|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_module**
> EdgeModuleUpdatedObject update_module(mname, body, x_embarcadero_application_id=x_embarcadero_application_id, x_embarcadero_app_secret=x_embarcadero_app_secret, x_embarcadero_master_secret=x_embarcadero_master_secret)

Update Module

 |      Used to update an `EdgeModule`. **mname** is the unique EMS EdgeModule identifier (MID) in the EMS database.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.EdgeModulesApi()
mname = 'mname_example' # str | Is the unique EMS EdgeModule identifier
body = swagger_client.EdgeModuleUpdateObject() # EdgeModuleUpdateObject | EdgModule Resource add object. protocolprops string example {\\\"port\\\":8082,\\\"host\\\":\\\"10.150.40.52\\\"}
x_embarcadero_application_id = 'x_embarcadero_application_id_example' # str |  (optional)
x_embarcadero_app_secret = 'x_embarcadero_app_secret_example' # str |  (optional)
x_embarcadero_master_secret = 'x_embarcadero_master_secret_example' # str |  (optional)

try:
    # Update Module
    api_response = api_instance.update_module(mname, body, x_embarcadero_application_id=x_embarcadero_application_id, x_embarcadero_app_secret=x_embarcadero_app_secret, x_embarcadero_master_secret=x_embarcadero_master_secret)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling EdgeModulesApi->update_module: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **str**| Is the unique EMS EdgeModule identifier | 
 **body** | [**EdgeModuleUpdateObject**](EdgeModuleUpdateObject.md)| EdgModule Resource add object. protocolprops string example {\\\&quot;port\\\&quot;:8082,\\\&quot;host\\\&quot;:\\\&quot;10.150.40.52\\\&quot;} | 
 **x_embarcadero_application_id** | **str**|  | [optional] 
 **x_embarcadero_app_secret** | **str**|  | [optional] 
 **x_embarcadero_master_secret** | **str**|  | [optional] 

### Return type

[**EdgeModuleUpdatedObject**](EdgeModuleUpdatedObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_module_resource**
> EdgeModuleResourceUpdatedObject update_module_resource(mname, name, body, x_embarcadero_application_id=x_embarcadero_application_id, x_embarcadero_app_secret=x_embarcadero_app_secret, x_embarcadero_master_secret=x_embarcadero_master_secret)

Update Module Resource

 |      Used to update an `EdgeModule`. **mname** is the unique EMS EdgeModule identifier (MID) in the EMS database.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.EdgeModulesApi()
mname = 'mname_example' # str | Is the unique EMS EdgeModule identifier
name = 'name_example' # str | Is the unique EMS EdgeModule Resource name
body = swagger_client.EdgeModuleResourceUpdateObject() # EdgeModuleResourceUpdateObject | EdgModule Resource add object. protocolprops string example {\\\"port\\\":8082,\\\"host\\\":\\\"10.150.40.52\\\"}
x_embarcadero_application_id = 'x_embarcadero_application_id_example' # str |  (optional)
x_embarcadero_app_secret = 'x_embarcadero_app_secret_example' # str |  (optional)
x_embarcadero_master_secret = 'x_embarcadero_master_secret_example' # str |  (optional)

try:
    # Update Module Resource
    api_response = api_instance.update_module_resource(mname, name, body, x_embarcadero_application_id=x_embarcadero_application_id, x_embarcadero_app_secret=x_embarcadero_app_secret, x_embarcadero_master_secret=x_embarcadero_master_secret)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling EdgeModulesApi->update_module_resource: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **str**| Is the unique EMS EdgeModule identifier | 
 **name** | **str**| Is the unique EMS EdgeModule Resource name | 
 **body** | [**EdgeModuleResourceUpdateObject**](EdgeModuleResourceUpdateObject.md)| EdgModule Resource add object. protocolprops string example {\\\&quot;port\\\&quot;:8082,\\\&quot;host\\\&quot;:\\\&quot;10.150.40.52\\\&quot;} | 
 **x_embarcadero_application_id** | **str**|  | [optional] 
 **x_embarcadero_app_secret** | **str**|  | [optional] 
 **x_embarcadero_master_secret** | **str**|  | [optional] 

### Return type

[**EdgeModuleResourceUpdatedObject**](EdgeModuleResourceUpdatedObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

