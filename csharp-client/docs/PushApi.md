# IO.Swagger.Api.PushApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Send**](PushApi.md#send) | **POST** /push | Send Push


<a name="send"></a>
# **Send**
> void Send (PushObject body, string xEmbarcaderoApplicationId = null, string xEmbarcaderoAppSecret = null, string xEmbarcaderoMasterSecret = null)

Send Push

Used to send a push notification message to a registered device

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class SendExample
    {
        public void main()
        {
            var apiInstance = new PushApi();
            var body = new PushObject(); // PushObject | Object containing the Push Message data structure
            var xEmbarcaderoApplicationId = xEmbarcaderoApplicationId_example;  // string |  (optional) 
            var xEmbarcaderoAppSecret = xEmbarcaderoAppSecret_example;  // string |  (optional) 
            var xEmbarcaderoMasterSecret = xEmbarcaderoMasterSecret_example;  // string |  (optional) 

            try
            {
                // Send Push
                apiInstance.Send(body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling PushApi.Send: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PushObject**](PushObject.md)| Object containing the Push Message data structure | 
 **xEmbarcaderoApplicationId** | **string**|  | [optional] 
 **xEmbarcaderoAppSecret** | **string**|  | [optional] 
 **xEmbarcaderoMasterSecret** | **string**|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

