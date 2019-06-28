# swagger_client.ApiDocApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**a_pi**](ApiDocApi.md#a_pi) | **GET** /api | Get API EndPoints
[**get_apijson_format**](ApiDocApi.md#get_apijson_format) | **GET** /api/apidoc.json | Get JSON
[**get_apiyaml_format**](ApiDocApi.md#get_apiyaml_format) | **GET** /api/apidoc.yaml | Get YAML
[**get_apiyaml_format_end_point**](ApiDocApi.md#get_apiyaml_format_end_point) | **GET** /api/{item}/apidoc.yaml | Get API EndPoint


# **a_pi**
> a_pi(x_embarcadero_application_id=x_embarcadero_application_id, x_embarcadero_app_secret=x_embarcadero_app_secret, x_embarcadero_master_secret=x_embarcadero_master_secret)

Get API EndPoints

 |      Used to retrieve all the API EndPoints.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.ApiDocApi()
x_embarcadero_application_id = 'x_embarcadero_application_id_example' # str |  (optional)
x_embarcadero_app_secret = 'x_embarcadero_app_secret_example' # str |  (optional)
x_embarcadero_master_secret = 'x_embarcadero_master_secret_example' # str |  (optional)

try:
    # Get API EndPoints
    api_instance.a_pi(x_embarcadero_application_id=x_embarcadero_application_id, x_embarcadero_app_secret=x_embarcadero_app_secret, x_embarcadero_master_secret=x_embarcadero_master_secret)
except ApiException as e:
    print("Exception when calling ApiDocApi->a_pi: %s\n" % e)
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

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_apijson_format**
> get_apijson_format(x_embarcadero_application_id=x_embarcadero_application_id, x_embarcadero_app_secret=x_embarcadero_app_secret, x_embarcadero_master_secret=x_embarcadero_master_secret)

Get JSON

Get API in JSON format

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.ApiDocApi()
x_embarcadero_application_id = 'x_embarcadero_application_id_example' # str |  (optional)
x_embarcadero_app_secret = 'x_embarcadero_app_secret_example' # str |  (optional)
x_embarcadero_master_secret = 'x_embarcadero_master_secret_example' # str |  (optional)

try:
    # Get JSON
    api_instance.get_apijson_format(x_embarcadero_application_id=x_embarcadero_application_id, x_embarcadero_app_secret=x_embarcadero_app_secret, x_embarcadero_master_secret=x_embarcadero_master_secret)
except ApiException as e:
    print("Exception when calling ApiDocApi->get_apijson_format: %s\n" % e)
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

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_apiyaml_format**
> get_apiyaml_format(x_embarcadero_application_id=x_embarcadero_application_id, x_embarcadero_app_secret=x_embarcadero_app_secret, x_embarcadero_master_secret=x_embarcadero_master_secret)

Get YAML

Get API in YAML format

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.ApiDocApi()
x_embarcadero_application_id = 'x_embarcadero_application_id_example' # str |  (optional)
x_embarcadero_app_secret = 'x_embarcadero_app_secret_example' # str |  (optional)
x_embarcadero_master_secret = 'x_embarcadero_master_secret_example' # str |  (optional)

try:
    # Get YAML
    api_instance.get_apiyaml_format(x_embarcadero_application_id=x_embarcadero_application_id, x_embarcadero_app_secret=x_embarcadero_app_secret, x_embarcadero_master_secret=x_embarcadero_master_secret)
except ApiException as e:
    print("Exception when calling ApiDocApi->get_apiyaml_format: %s\n" % e)
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

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_apiyaml_format_end_point**
> get_apiyaml_format_end_point(item, x_embarcadero_application_id=x_embarcadero_application_id, x_embarcadero_app_secret=x_embarcadero_app_secret, x_embarcadero_master_secret=x_embarcadero_master_secret)

Get API EndPoint

 |      Used to retrieve an EndPoint for the API EndPoints.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.ApiDocApi()
item = 'item_example' # str | Path Segment to an EndPoint
x_embarcadero_application_id = 'x_embarcadero_application_id_example' # str |  (optional)
x_embarcadero_app_secret = 'x_embarcadero_app_secret_example' # str |  (optional)
x_embarcadero_master_secret = 'x_embarcadero_master_secret_example' # str |  (optional)

try:
    # Get API EndPoint
    api_instance.get_apiyaml_format_end_point(item, x_embarcadero_application_id=x_embarcadero_application_id, x_embarcadero_app_secret=x_embarcadero_app_secret, x_embarcadero_master_secret=x_embarcadero_master_secret)
except ApiException as e:
    print("Exception when calling ApiDocApi->get_apiyaml_format_end_point: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **item** | **str**| Path Segment to an EndPoint | 
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

