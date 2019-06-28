# swagger_client.PushApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**send**](PushApi.md#send) | **POST** /push | Send Push


# **send**
> send(body, x_embarcadero_application_id=x_embarcadero_application_id, x_embarcadero_app_secret=x_embarcadero_app_secret, x_embarcadero_master_secret=x_embarcadero_master_secret)

Send Push

Used to send a push notification message to a registered device

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.PushApi()
body = swagger_client.PushObject() # PushObject | Object containing the Push Message data structure
x_embarcadero_application_id = 'x_embarcadero_application_id_example' # str |  (optional)
x_embarcadero_app_secret = 'x_embarcadero_app_secret_example' # str |  (optional)
x_embarcadero_master_secret = 'x_embarcadero_master_secret_example' # str |  (optional)

try:
    # Send Push
    api_instance.send(body, x_embarcadero_application_id=x_embarcadero_application_id, x_embarcadero_app_secret=x_embarcadero_app_secret, x_embarcadero_master_secret=x_embarcadero_master_secret)
except ApiException as e:
    print("Exception when calling PushApi->send: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PushObject**](PushObject.md)| Object containing the Push Message data structure | 
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

