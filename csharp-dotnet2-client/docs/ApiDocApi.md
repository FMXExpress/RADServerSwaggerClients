# IO.Swagger.Api.ApiDocApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**API**](ApiDocApi.md#api) | **GET** /api | Get API EndPoints
[**GetAPIJSONFormat**](ApiDocApi.md#getapijsonformat) | **GET** /api/apidoc.json | Get JSON
[**GetAPIYAMLFormat**](ApiDocApi.md#getapiyamlformat) | **GET** /api/apidoc.yaml | Get YAML
[**GetAPIYAMLFormatEndPoint**](ApiDocApi.md#getapiyamlformatendpoint) | **GET** /api/{item}/apidoc.yaml | Get API EndPoint


<a name="api"></a>
# **API**
> void API (string xEmbarcaderoApplicationId, string xEmbarcaderoAppSecret, string xEmbarcaderoMasterSecret)

Get API EndPoints

 |      Used to retrieve all the API EndPoints.

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class APIExample
    {
        public void main()
        {
            
            var apiInstance = new ApiDocApi();
            var xEmbarcaderoApplicationId = xEmbarcaderoApplicationId_example;  // string |  (optional) 
            var xEmbarcaderoAppSecret = xEmbarcaderoAppSecret_example;  // string |  (optional) 
            var xEmbarcaderoMasterSecret = xEmbarcaderoMasterSecret_example;  // string |  (optional) 

            try
            {
                // Get API EndPoints
                apiInstance.API(xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling ApiDocApi.API: " + e.Message );
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

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getapijsonformat"></a>
# **GetAPIJSONFormat**
> void GetAPIJSONFormat (string xEmbarcaderoApplicationId, string xEmbarcaderoAppSecret, string xEmbarcaderoMasterSecret)

Get JSON

Get API in JSON format

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetAPIJSONFormatExample
    {
        public void main()
        {
            
            var apiInstance = new ApiDocApi();
            var xEmbarcaderoApplicationId = xEmbarcaderoApplicationId_example;  // string |  (optional) 
            var xEmbarcaderoAppSecret = xEmbarcaderoAppSecret_example;  // string |  (optional) 
            var xEmbarcaderoMasterSecret = xEmbarcaderoMasterSecret_example;  // string |  (optional) 

            try
            {
                // Get JSON
                apiInstance.GetAPIJSONFormat(xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling ApiDocApi.GetAPIJSONFormat: " + e.Message );
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

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getapiyamlformat"></a>
# **GetAPIYAMLFormat**
> void GetAPIYAMLFormat (string xEmbarcaderoApplicationId, string xEmbarcaderoAppSecret, string xEmbarcaderoMasterSecret)

Get YAML

Get API in YAML format

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetAPIYAMLFormatExample
    {
        public void main()
        {
            
            var apiInstance = new ApiDocApi();
            var xEmbarcaderoApplicationId = xEmbarcaderoApplicationId_example;  // string |  (optional) 
            var xEmbarcaderoAppSecret = xEmbarcaderoAppSecret_example;  // string |  (optional) 
            var xEmbarcaderoMasterSecret = xEmbarcaderoMasterSecret_example;  // string |  (optional) 

            try
            {
                // Get YAML
                apiInstance.GetAPIYAMLFormat(xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling ApiDocApi.GetAPIYAMLFormat: " + e.Message );
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

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getapiyamlformatendpoint"></a>
# **GetAPIYAMLFormatEndPoint**
> void GetAPIYAMLFormatEndPoint (string item, string xEmbarcaderoApplicationId, string xEmbarcaderoAppSecret, string xEmbarcaderoMasterSecret)

Get API EndPoint

 |      Used to retrieve an EndPoint for the API EndPoints.

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetAPIYAMLFormatEndPointExample
    {
        public void main()
        {
            
            var apiInstance = new ApiDocApi();
            var item = item_example;  // string | Path Segment to an EndPoint
            var xEmbarcaderoApplicationId = xEmbarcaderoApplicationId_example;  // string |  (optional) 
            var xEmbarcaderoAppSecret = xEmbarcaderoAppSecret_example;  // string |  (optional) 
            var xEmbarcaderoMasterSecret = xEmbarcaderoMasterSecret_example;  // string |  (optional) 

            try
            {
                // Get API EndPoint
                apiInstance.GetAPIYAMLFormatEndPoint(item, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling ApiDocApi.GetAPIYAMLFormatEndPoint: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **item** | **string**| Path Segment to an EndPoint | 
 **xEmbarcaderoApplicationId** | **string**|  | [optional] 
 **xEmbarcaderoAppSecret** | **string**|  | [optional] 
 **xEmbarcaderoMasterSecret** | **string**|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

