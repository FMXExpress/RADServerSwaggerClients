# IO.Swagger.Api.EdgeModulesInvokersApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**DeleteResourceEndpoint**](EdgeModulesInvokersApi.md#deleteresourceendpoint) | **DELETE** /edgemodules/{mname}/{rname} | Invoke Resource Delete Method
[**DeleteResourceEndpointItem**](EdgeModulesInvokersApi.md#deleteresourceendpointitem) | **DELETE** /edgemodules/{mname}/{rname}/{wildcard} | Invoke Resource/_* Delete Method
[**GetResourceEndpoint**](EdgeModulesInvokersApi.md#getresourceendpoint) | **GET** /edgemodules/{mname}/{rname} | Invoke Resource Get Method
[**GetResourceEndpointItem**](EdgeModulesInvokersApi.md#getresourceendpointitem) | **GET** /edgemodules/{mname}/{rname}/{wildcard} | Invoke Resource/_* Get Method
[**PatchResourceEndpoint**](EdgeModulesInvokersApi.md#patchresourceendpoint) | **PATCH** /edgemodules/{mname}/{rname} | Invoke Resource Patch Method
[**PatchResourceEndpointItem**](EdgeModulesInvokersApi.md#patchresourceendpointitem) | **PATCH** /edgemodules/{mname}/{rname}/{wildcard} | Invoke Resource/_* Patch Method
[**PostResourceEndpoint**](EdgeModulesInvokersApi.md#postresourceendpoint) | **POST** /edgemodules/{mname}/{rname} | Invoke Resource Post Method
[**PostResourceEndpointItem**](EdgeModulesInvokersApi.md#postresourceendpointitem) | **POST** /edgemodules/{mname}/{rname}/{wildcard} | Invoke Resource/_* Post Method
[**PutResourceEndpoint**](EdgeModulesInvokersApi.md#putresourceendpoint) | **PUT** /edgemodules/{mname}/{rname} | Invoke Resource Put Method
[**PutResourceEndpointItem**](EdgeModulesInvokersApi.md#putresourceendpointitem) | **PUT** /edgemodules/{mname}/{rname}/{wildcard} | Invoke Resource/_* Put Method


<a name="deleteresourceendpoint"></a>
# **DeleteResourceEndpoint**
> void DeleteResourceEndpoint (string mname, string rname, string xEmbarcaderoApplicationId = null, string xEmbarcaderoAppSecret = null, string xEmbarcaderoMasterSecret = null)

Invoke Resource Delete Method

Used to invoke the DELETE method of the resource from an existing EMS EdgeModule.

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class DeleteResourceEndpointExample
    {
        public void main()
        {
            var apiInstance = new EdgeModulesInvokersApi();
            var mname = mname_example;  // string | Is the EMS EdgeModule name
            var rname = rname_example;  // string | Is the unique EMS EdgeModule Resource name
            var xEmbarcaderoApplicationId = xEmbarcaderoApplicationId_example;  // string |  (optional) 
            var xEmbarcaderoAppSecret = xEmbarcaderoAppSecret_example;  // string |  (optional) 
            var xEmbarcaderoMasterSecret = xEmbarcaderoMasterSecret_example;  // string |  (optional) 

            try
            {
                // Invoke Resource Delete Method
                apiInstance.DeleteResourceEndpoint(mname, rname, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling EdgeModulesInvokersApi.DeleteResourceEndpoint: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **string**| Is the EMS EdgeModule name | 
 **rname** | **string**| Is the unique EMS EdgeModule Resource name | 
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

<a name="deleteresourceendpointitem"></a>
# **DeleteResourceEndpointItem**
> void DeleteResourceEndpointItem (string mname, string rname, string wildcard, string xEmbarcaderoApplicationId = null, string xEmbarcaderoAppSecret = null, string xEmbarcaderoMasterSecret = null)

Invoke Resource/_* Delete Method

Used to invoke the DELETE method of the resource from an existing EMS EdgeModule.

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class DeleteResourceEndpointItemExample
    {
        public void main()
        {
            var apiInstance = new EdgeModulesInvokersApi();
            var mname = mname_example;  // string | Is the EMS EdgeModule name
            var rname = rname_example;  // string | Is the unique EMS EdgeModule Resource name
            var wildcard = wildcard_example;  // string | Is the Wild card part of the URL
            var xEmbarcaderoApplicationId = xEmbarcaderoApplicationId_example;  // string |  (optional) 
            var xEmbarcaderoAppSecret = xEmbarcaderoAppSecret_example;  // string |  (optional) 
            var xEmbarcaderoMasterSecret = xEmbarcaderoMasterSecret_example;  // string |  (optional) 

            try
            {
                // Invoke Resource/_* Delete Method
                apiInstance.DeleteResourceEndpointItem(mname, rname, wildcard, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling EdgeModulesInvokersApi.DeleteResourceEndpointItem: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **string**| Is the EMS EdgeModule name | 
 **rname** | **string**| Is the unique EMS EdgeModule Resource name | 
 **wildcard** | **string**| Is the Wild card part of the URL | 
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

<a name="getresourceendpoint"></a>
# **GetResourceEndpoint**
> void GetResourceEndpoint (string mname, string rname, string xEmbarcaderoApplicationId = null, string xEmbarcaderoAppSecret = null, string xEmbarcaderoMasterSecret = null)

Invoke Resource Get Method

Used to invoke the GET method of the resource from an existing EMS EdgeModule.

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetResourceEndpointExample
    {
        public void main()
        {
            var apiInstance = new EdgeModulesInvokersApi();
            var mname = mname_example;  // string | Is the EMS EdgeModule name
            var rname = rname_example;  // string | Is the unique EMS EdgeModule Resource name
            var xEmbarcaderoApplicationId = xEmbarcaderoApplicationId_example;  // string |  (optional) 
            var xEmbarcaderoAppSecret = xEmbarcaderoAppSecret_example;  // string |  (optional) 
            var xEmbarcaderoMasterSecret = xEmbarcaderoMasterSecret_example;  // string |  (optional) 

            try
            {
                // Invoke Resource Get Method
                apiInstance.GetResourceEndpoint(mname, rname, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling EdgeModulesInvokersApi.GetResourceEndpoint: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **string**| Is the EMS EdgeModule name | 
 **rname** | **string**| Is the unique EMS EdgeModule Resource name | 
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

<a name="getresourceendpointitem"></a>
# **GetResourceEndpointItem**
> void GetResourceEndpointItem (string mname, string rname, string wildcard, string xEmbarcaderoApplicationId = null, string xEmbarcaderoAppSecret = null, string xEmbarcaderoMasterSecret = null)

Invoke Resource/_* Get Method

Used to invoke the GET method of the resource from an existing EMS EdgeModule.

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetResourceEndpointItemExample
    {
        public void main()
        {
            var apiInstance = new EdgeModulesInvokersApi();
            var mname = mname_example;  // string | Is the EMS EdgeModule name
            var rname = rname_example;  // string | Is the unique EMS EdgeModule Resource name
            var wildcard = wildcard_example;  // string | Is the Wild card part of the URL
            var xEmbarcaderoApplicationId = xEmbarcaderoApplicationId_example;  // string |  (optional) 
            var xEmbarcaderoAppSecret = xEmbarcaderoAppSecret_example;  // string |  (optional) 
            var xEmbarcaderoMasterSecret = xEmbarcaderoMasterSecret_example;  // string |  (optional) 

            try
            {
                // Invoke Resource/_* Get Method
                apiInstance.GetResourceEndpointItem(mname, rname, wildcard, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling EdgeModulesInvokersApi.GetResourceEndpointItem: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **string**| Is the EMS EdgeModule name | 
 **rname** | **string**| Is the unique EMS EdgeModule Resource name | 
 **wildcard** | **string**| Is the Wild card part of the URL | 
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

<a name="patchresourceendpoint"></a>
# **PatchResourceEndpoint**
> void PatchResourceEndpoint (string mname, string rname, Object body, string xEmbarcaderoApplicationId = null, string xEmbarcaderoAppSecret = null, string xEmbarcaderoMasterSecret = null)

Invoke Resource Patch Method

Used to invoke the PATCH method of the resource from an existing EMS EdgeModule.

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class PatchResourceEndpointExample
    {
        public void main()
        {
            var apiInstance = new EdgeModulesInvokersApi();
            var mname = mname_example;  // string | Is the EMS EdgeModule name
            var rname = rname_example;  // string | Is the unique EMS EdgeModule Resource name
            var body = ;  // Object | Body Object
            var xEmbarcaderoApplicationId = xEmbarcaderoApplicationId_example;  // string |  (optional) 
            var xEmbarcaderoAppSecret = xEmbarcaderoAppSecret_example;  // string |  (optional) 
            var xEmbarcaderoMasterSecret = xEmbarcaderoMasterSecret_example;  // string |  (optional) 

            try
            {
                // Invoke Resource Patch Method
                apiInstance.PatchResourceEndpoint(mname, rname, body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling EdgeModulesInvokersApi.PatchResourceEndpoint: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **string**| Is the EMS EdgeModule name | 
 **rname** | **string**| Is the unique EMS EdgeModule Resource name | 
 **body** | **Object**| Body Object | 
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

<a name="patchresourceendpointitem"></a>
# **PatchResourceEndpointItem**
> void PatchResourceEndpointItem (string mname, string rname, string wildcard, Object body, string xEmbarcaderoApplicationId = null, string xEmbarcaderoAppSecret = null, string xEmbarcaderoMasterSecret = null)

Invoke Resource/_* Patch Method

Used to invoke the PATCH method of the resource from an existing EMS EdgeModule.

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class PatchResourceEndpointItemExample
    {
        public void main()
        {
            var apiInstance = new EdgeModulesInvokersApi();
            var mname = mname_example;  // string | Is the EMS EdgeModule name
            var rname = rname_example;  // string | Is the unique EMS EdgeModule Resource name
            var wildcard = wildcard_example;  // string | Is the Wild card part of the URL
            var body = ;  // Object | Body Object
            var xEmbarcaderoApplicationId = xEmbarcaderoApplicationId_example;  // string |  (optional) 
            var xEmbarcaderoAppSecret = xEmbarcaderoAppSecret_example;  // string |  (optional) 
            var xEmbarcaderoMasterSecret = xEmbarcaderoMasterSecret_example;  // string |  (optional) 

            try
            {
                // Invoke Resource/_* Patch Method
                apiInstance.PatchResourceEndpointItem(mname, rname, wildcard, body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling EdgeModulesInvokersApi.PatchResourceEndpointItem: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **string**| Is the EMS EdgeModule name | 
 **rname** | **string**| Is the unique EMS EdgeModule Resource name | 
 **wildcard** | **string**| Is the Wild card part of the URL | 
 **body** | **Object**| Body Object | 
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

<a name="postresourceendpoint"></a>
# **PostResourceEndpoint**
> void PostResourceEndpoint (string mname, string rname, Object body, string xEmbarcaderoApplicationId = null, string xEmbarcaderoAppSecret = null, string xEmbarcaderoMasterSecret = null)

Invoke Resource Post Method

Used to invoke the POST method of the resource from an existing EMS EdgeModule.

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class PostResourceEndpointExample
    {
        public void main()
        {
            var apiInstance = new EdgeModulesInvokersApi();
            var mname = mname_example;  // string | Is the EMS EdgeModule name
            var rname = rname_example;  // string | Is the unique EMS EdgeModule Resource name
            var body = ;  // Object | Body Object
            var xEmbarcaderoApplicationId = xEmbarcaderoApplicationId_example;  // string |  (optional) 
            var xEmbarcaderoAppSecret = xEmbarcaderoAppSecret_example;  // string |  (optional) 
            var xEmbarcaderoMasterSecret = xEmbarcaderoMasterSecret_example;  // string |  (optional) 

            try
            {
                // Invoke Resource Post Method
                apiInstance.PostResourceEndpoint(mname, rname, body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling EdgeModulesInvokersApi.PostResourceEndpoint: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **string**| Is the EMS EdgeModule name | 
 **rname** | **string**| Is the unique EMS EdgeModule Resource name | 
 **body** | **Object**| Body Object | 
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

<a name="postresourceendpointitem"></a>
# **PostResourceEndpointItem**
> void PostResourceEndpointItem (string mname, string rname, string wildcard, Object body, string xEmbarcaderoApplicationId = null, string xEmbarcaderoAppSecret = null, string xEmbarcaderoMasterSecret = null)

Invoke Resource/_* Post Method

Used to invoke the POST method of the resource from an existing EMS EdgeModule.

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class PostResourceEndpointItemExample
    {
        public void main()
        {
            var apiInstance = new EdgeModulesInvokersApi();
            var mname = mname_example;  // string | Is the EMS EdgeModule name
            var rname = rname_example;  // string | Is the unique EMS EdgeModule Resource name
            var wildcard = wildcard_example;  // string | Is the Wild card part of the URL
            var body = ;  // Object | Body Object
            var xEmbarcaderoApplicationId = xEmbarcaderoApplicationId_example;  // string |  (optional) 
            var xEmbarcaderoAppSecret = xEmbarcaderoAppSecret_example;  // string |  (optional) 
            var xEmbarcaderoMasterSecret = xEmbarcaderoMasterSecret_example;  // string |  (optional) 

            try
            {
                // Invoke Resource/_* Post Method
                apiInstance.PostResourceEndpointItem(mname, rname, wildcard, body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling EdgeModulesInvokersApi.PostResourceEndpointItem: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **string**| Is the EMS EdgeModule name | 
 **rname** | **string**| Is the unique EMS EdgeModule Resource name | 
 **wildcard** | **string**| Is the Wild card part of the URL | 
 **body** | **Object**| Body Object | 
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

<a name="putresourceendpoint"></a>
# **PutResourceEndpoint**
> void PutResourceEndpoint (string mname, string rname, Object body, string xEmbarcaderoApplicationId = null, string xEmbarcaderoAppSecret = null, string xEmbarcaderoMasterSecret = null)

Invoke Resource Put Method

Used to invoke the PUT method of the resource from an existing EMS EdgeModule.

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class PutResourceEndpointExample
    {
        public void main()
        {
            var apiInstance = new EdgeModulesInvokersApi();
            var mname = mname_example;  // string | Is the EMS EdgeModule name
            var rname = rname_example;  // string | Is the unique EMS EdgeModule Resource name
            var body = ;  // Object | Body Object
            var xEmbarcaderoApplicationId = xEmbarcaderoApplicationId_example;  // string |  (optional) 
            var xEmbarcaderoAppSecret = xEmbarcaderoAppSecret_example;  // string |  (optional) 
            var xEmbarcaderoMasterSecret = xEmbarcaderoMasterSecret_example;  // string |  (optional) 

            try
            {
                // Invoke Resource Put Method
                apiInstance.PutResourceEndpoint(mname, rname, body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling EdgeModulesInvokersApi.PutResourceEndpoint: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **string**| Is the EMS EdgeModule name | 
 **rname** | **string**| Is the unique EMS EdgeModule Resource name | 
 **body** | **Object**| Body Object | 
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

<a name="putresourceendpointitem"></a>
# **PutResourceEndpointItem**
> void PutResourceEndpointItem (string mname, string rname, string wildcard, Object body, string xEmbarcaderoApplicationId = null, string xEmbarcaderoAppSecret = null, string xEmbarcaderoMasterSecret = null)

Invoke Resource/_* Put Method

Used to invoke the PUT method of the resource from an existing EMS EdgeModule.

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class PutResourceEndpointItemExample
    {
        public void main()
        {
            var apiInstance = new EdgeModulesInvokersApi();
            var mname = mname_example;  // string | Is the EMS EdgeModule name
            var rname = rname_example;  // string | Is the unique EMS EdgeModule Resource name
            var wildcard = wildcard_example;  // string | Is the Wild card part of the URL
            var body = ;  // Object | Body Object
            var xEmbarcaderoApplicationId = xEmbarcaderoApplicationId_example;  // string |  (optional) 
            var xEmbarcaderoAppSecret = xEmbarcaderoAppSecret_example;  // string |  (optional) 
            var xEmbarcaderoMasterSecret = xEmbarcaderoMasterSecret_example;  // string |  (optional) 

            try
            {
                // Invoke Resource/_* Put Method
                apiInstance.PutResourceEndpointItem(mname, rname, wildcard, body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling EdgeModulesInvokersApi.PutResourceEndpointItem: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **string**| Is the EMS EdgeModule name | 
 **rname** | **string**| Is the unique EMS EdgeModule Resource name | 
 **wildcard** | **string**| Is the Wild card part of the URL | 
 **body** | **Object**| Body Object | 
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

