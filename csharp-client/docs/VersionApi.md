# IO.Swagger.Api.VersionApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetVersion**](VersionApi.md#getversion) | **GET** /version | Get version


<a name="getversion"></a>
# **GetVersion**
> VersionObject GetVersion (string xEmbarcaderoApplicationId = null, string xEmbarcaderoAppSecret = null, string xEmbarcaderoMasterSecret = null)

Get version

 |      Used to retrieve the `Version` of the EMS Server.

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetVersionExample
    {
        public void main()
        {
            var apiInstance = new VersionApi();
            var xEmbarcaderoApplicationId = xEmbarcaderoApplicationId_example;  // string |  (optional) 
            var xEmbarcaderoAppSecret = xEmbarcaderoAppSecret_example;  // string |  (optional) 
            var xEmbarcaderoMasterSecret = xEmbarcaderoMasterSecret_example;  // string |  (optional) 

            try
            {
                // Get version
                VersionObject result = apiInstance.GetVersion(xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling VersionApi.GetVersion: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xEmbarcaderoApplicationId** | **string**|  | [optional] 
 **xEmbarcaderoAppSecret** | **string**|  | [optional] 
 **xEmbarcaderoMasterSecret** | **string**|  | [optional] 

### Return type

[**VersionObject**](VersionObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

