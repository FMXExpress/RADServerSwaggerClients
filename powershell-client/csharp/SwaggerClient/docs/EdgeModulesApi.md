# IO.Swagger.Api.EdgeModulesApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetModule**](EdgeModulesApi.md#getmodule) | **GET** /edgemodules/{mname} | Get Module
[**GetModuleResource**](EdgeModulesApi.md#getmoduleresource) | **GET** /edgemodules/{mname}/resources/{name} | Get EdgeModule Resource
[**GetModuleResources**](EdgeModulesApi.md#getmoduleresources) | **GET** /edgemodules/{mname}/resources | Get EdgeModule Resources
[**GetModules**](EdgeModulesApi.md#getmodules) | **GET** /edgemodules | Get Module
[**GetModulesFields**](EdgeModulesApi.md#getmodulesfields) | **GET** /edgemodules/fields | Get Fields
[**GetResources**](EdgeModulesApi.md#getresources) | **GET** /edgemodules/resources | Get EdgeModules Resources
[**GetResourcesFields**](EdgeModulesApi.md#getresourcesfields) | **GET** /edgemodules/resources/fields | Get Resource Fields
[**RegisterModule**](EdgeModulesApi.md#registermodule) | **POST** /edgemodules | Add Module
[**RegisterModuleResource**](EdgeModulesApi.md#registermoduleresource) | **POST** /edgemodules/{mname}/resources | Add Module Resource
[**UnregisterModule**](EdgeModulesApi.md#unregistermodule) | **DELETE** /edgemodules/{mname} | Delete Module
[**UnregisterModuleResource**](EdgeModulesApi.md#unregistermoduleresource) | **DELETE** /edgemodules/{mname}/resources/{name} | Delete Module Resource
[**UpdateModule**](EdgeModulesApi.md#updatemodule) | **PUT** /edgemodules/{mname} | Update Module
[**UpdateModuleResource**](EdgeModulesApi.md#updatemoduleresource) | **PUT** /edgemodules/{mname}/resources/{name} | Update Module Resource


<a name="getmodule"></a>
# **GetModule**
> EdgeModuleObject GetModule (string mname, string xEmbarcaderoApplicationId = null, string xEmbarcaderoAppSecret = null, string xEmbarcaderoMasterSecret = null)

Get Module

 |      Used to retrieve all data from `EdgeModule`.      Optional query param of **skip, limit, order, where** determines       size of returned array, filtered and order by.

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetModuleExample
    {
        public void main()
        {
            var apiInstance = new EdgeModulesApi();
            var mname = mname_example;  // string | Is the unique EMS EdgeModule identifier
            var xEmbarcaderoApplicationId = xEmbarcaderoApplicationId_example;  // string |  (optional) 
            var xEmbarcaderoAppSecret = xEmbarcaderoAppSecret_example;  // string |  (optional) 
            var xEmbarcaderoMasterSecret = xEmbarcaderoMasterSecret_example;  // string |  (optional) 

            try
            {
                // Get Module
                EdgeModuleObject result = apiInstance.GetModule(mname, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling EdgeModulesApi.GetModule: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **string**| Is the unique EMS EdgeModule identifier | 
 **xEmbarcaderoApplicationId** | **string**|  | [optional] 
 **xEmbarcaderoAppSecret** | **string**|  | [optional] 
 **xEmbarcaderoMasterSecret** | **string**|  | [optional] 

### Return type

[**EdgeModuleObject**](EdgeModuleObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getmoduleresource"></a>
# **GetModuleResource**
> EdgeModuleResourceObject GetModuleResource (string mname, string name, string xEmbarcaderoApplicationId = null, string xEmbarcaderoAppSecret = null, string xEmbarcaderoMasterSecret = null)

Get EdgeModule Resource

 |      Used to retrieve all data from a resource of an EdgeModule. **mname** is the unique EMS EdgeModule identifier in the EMS database. **resourcename** is the name of the resource.

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetModuleResourceExample
    {
        public void main()
        {
            var apiInstance = new EdgeModulesApi();
            var mname = mname_example;  // string | Is the unique EMS EdgeModule identifier
            var name = name_example;  // string | Is the unique EMS EdgeModule Resource name
            var xEmbarcaderoApplicationId = xEmbarcaderoApplicationId_example;  // string |  (optional) 
            var xEmbarcaderoAppSecret = xEmbarcaderoAppSecret_example;  // string |  (optional) 
            var xEmbarcaderoMasterSecret = xEmbarcaderoMasterSecret_example;  // string |  (optional) 

            try
            {
                // Get EdgeModule Resource
                EdgeModuleResourceObject result = apiInstance.GetModuleResource(mname, name, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling EdgeModulesApi.GetModuleResource: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **string**| Is the unique EMS EdgeModule identifier | 
 **name** | **string**| Is the unique EMS EdgeModule Resource name | 
 **xEmbarcaderoApplicationId** | **string**|  | [optional] 
 **xEmbarcaderoAppSecret** | **string**|  | [optional] 
 **xEmbarcaderoMasterSecret** | **string**|  | [optional] 

### Return type

[**EdgeModuleResourceObject**](EdgeModuleResourceObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getmoduleresources"></a>
# **GetModuleResources**
> List<EdgeModuleResourceObject> GetModuleResources (string mname, string xEmbarcaderoApplicationId = null, string xEmbarcaderoAppSecret = null, string xEmbarcaderoMasterSecret = null)

Get EdgeModule Resources

 |      Used to retrieve all data from the resources of an EdgeModule.

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetModuleResourcesExample
    {
        public void main()
        {
            var apiInstance = new EdgeModulesApi();
            var mname = mname_example;  // string | Is the unique EMS EdgeModule identifier
            var xEmbarcaderoApplicationId = xEmbarcaderoApplicationId_example;  // string |  (optional) 
            var xEmbarcaderoAppSecret = xEmbarcaderoAppSecret_example;  // string |  (optional) 
            var xEmbarcaderoMasterSecret = xEmbarcaderoMasterSecret_example;  // string |  (optional) 

            try
            {
                // Get EdgeModule Resources
                List&lt;EdgeModuleResourceObject&gt; result = apiInstance.GetModuleResources(mname, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling EdgeModulesApi.GetModuleResources: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **string**| Is the unique EMS EdgeModule identifier | 
 **xEmbarcaderoApplicationId** | **string**|  | [optional] 
 **xEmbarcaderoAppSecret** | **string**|  | [optional] 
 **xEmbarcaderoMasterSecret** | **string**|  | [optional] 

### Return type

[**List<EdgeModuleResourceObject>**](EdgeModuleResourceObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getmodules"></a>
# **GetModules**
> List<EdgeModuleObject> GetModules (string xEmbarcaderoApplicationId = null, string xEmbarcaderoAppSecret = null, string xEmbarcaderoMasterSecret = null)

Get Module

 |      Used to retrieve all data from `EdgeModule`.      Optional query param of **skip, limit, order, where** determines       size of returned array, filtered and order by.

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetModulesExample
    {
        public void main()
        {
            var apiInstance = new EdgeModulesApi();
            var xEmbarcaderoApplicationId = xEmbarcaderoApplicationId_example;  // string |  (optional) 
            var xEmbarcaderoAppSecret = xEmbarcaderoAppSecret_example;  // string |  (optional) 
            var xEmbarcaderoMasterSecret = xEmbarcaderoMasterSecret_example;  // string |  (optional) 

            try
            {
                // Get Module
                List&lt;EdgeModuleObject&gt; result = apiInstance.GetModules(xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling EdgeModulesApi.GetModules: " + e.Message );
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

[**List<EdgeModuleObject>**](EdgeModuleObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getmodulesfields"></a>
# **GetModulesFields**
> FieldsEdgeModuleObject GetModulesFields (string xEmbarcaderoApplicationId = null, string xEmbarcaderoAppSecret = null, string xEmbarcaderoMasterSecret = null)

Get Fields

 |      Used to retrieve all the `field names` of the EMS EdgeModule (including the custom fields).

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetModulesFieldsExample
    {
        public void main()
        {
            var apiInstance = new EdgeModulesApi();
            var xEmbarcaderoApplicationId = xEmbarcaderoApplicationId_example;  // string |  (optional) 
            var xEmbarcaderoAppSecret = xEmbarcaderoAppSecret_example;  // string |  (optional) 
            var xEmbarcaderoMasterSecret = xEmbarcaderoMasterSecret_example;  // string |  (optional) 

            try
            {
                // Get Fields
                FieldsEdgeModuleObject result = apiInstance.GetModulesFields(xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling EdgeModulesApi.GetModulesFields: " + e.Message );
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

[**FieldsEdgeModuleObject**](FieldsEdgeModuleObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getresources"></a>
# **GetResources**
> List<EdgeModuleResourceObject> GetResources (string xEmbarcaderoApplicationId = null, string xEmbarcaderoAppSecret = null, string xEmbarcaderoMasterSecret = null)

Get EdgeModules Resources

 |      Used to retrieve all data from the resources of all EdgeModules.

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetResourcesExample
    {
        public void main()
        {
            var apiInstance = new EdgeModulesApi();
            var xEmbarcaderoApplicationId = xEmbarcaderoApplicationId_example;  // string |  (optional) 
            var xEmbarcaderoAppSecret = xEmbarcaderoAppSecret_example;  // string |  (optional) 
            var xEmbarcaderoMasterSecret = xEmbarcaderoMasterSecret_example;  // string |  (optional) 

            try
            {
                // Get EdgeModules Resources
                List&lt;EdgeModuleResourceObject&gt; result = apiInstance.GetResources(xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling EdgeModulesApi.GetResources: " + e.Message );
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

[**List<EdgeModuleResourceObject>**](EdgeModuleResourceObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getresourcesfields"></a>
# **GetResourcesFields**
> FieldsEdgeModuleObject GetResourcesFields (string xEmbarcaderoApplicationId = null, string xEmbarcaderoAppSecret = null, string xEmbarcaderoMasterSecret = null)

Get Resource Fields

 |      Used to retrieve the `field names` of all the resources of the EMS EdgeModule (including the custom fields).

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetResourcesFieldsExample
    {
        public void main()
        {
            var apiInstance = new EdgeModulesApi();
            var xEmbarcaderoApplicationId = xEmbarcaderoApplicationId_example;  // string |  (optional) 
            var xEmbarcaderoAppSecret = xEmbarcaderoAppSecret_example;  // string |  (optional) 
            var xEmbarcaderoMasterSecret = xEmbarcaderoMasterSecret_example;  // string |  (optional) 

            try
            {
                // Get Resource Fields
                FieldsEdgeModuleObject result = apiInstance.GetResourcesFields(xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling EdgeModulesApi.GetResourcesFields: " + e.Message );
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

[**FieldsEdgeModuleObject**](FieldsEdgeModuleObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="registermodule"></a>
# **RegisterModule**
> EdgeModuleAddedObject RegisterModule (EdgeModuleAddObject body, string xEmbarcaderoApplicationId = null, string xEmbarcaderoAppSecret = null, string xEmbarcaderoMasterSecret = null)

Add Module

 |      Used to add a new `EdgeModule` object to the EMS database.

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class RegisterModuleExample
    {
        public void main()
        {
            var apiInstance = new EdgeModulesApi();
            var body = new EdgeModuleAddObject(); // EdgeModuleAddObject | EdgeModule object to add. protocolprops example string {\\\"port\\\":8082,\\\"host\\\":\\\"10.150.40.52\\\"}
            var xEmbarcaderoApplicationId = xEmbarcaderoApplicationId_example;  // string |  (optional) 
            var xEmbarcaderoAppSecret = xEmbarcaderoAppSecret_example;  // string |  (optional) 
            var xEmbarcaderoMasterSecret = xEmbarcaderoMasterSecret_example;  // string |  (optional) 

            try
            {
                // Add Module
                EdgeModuleAddedObject result = apiInstance.RegisterModule(body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling EdgeModulesApi.RegisterModule: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**EdgeModuleAddObject**](EdgeModuleAddObject.md)| EdgeModule object to add. protocolprops example string {\\\&quot;port\\\&quot;:8082,\\\&quot;host\\\&quot;:\\\&quot;10.150.40.52\\\&quot;} | 
 **xEmbarcaderoApplicationId** | **string**|  | [optional] 
 **xEmbarcaderoAppSecret** | **string**|  | [optional] 
 **xEmbarcaderoMasterSecret** | **string**|  | [optional] 

### Return type

[**EdgeModuleAddedObject**](EdgeModuleAddedObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="registermoduleresource"></a>
# **RegisterModuleResource**
> EdgeModuleResourceAddedObject RegisterModuleResource (string mname, EdgeModuleResourceAddObject body, string xEmbarcaderoApplicationId = null, string xEmbarcaderoAppSecret = null, string xEmbarcaderoMasterSecret = null)

Add Module Resource

 |      Used to register a new resource from an EMS EdgeModule. **mname** is the unique EMS EdgeModule identifier in the EMS database.

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class RegisterModuleResourceExample
    {
        public void main()
        {
            var apiInstance = new EdgeModulesApi();
            var mname = mname_example;  // string | Is the unique EMS EdgeModule identifier
            var body = new EdgeModuleResourceAddObject(); // EdgeModuleResourceAddObject | EdgModule Resource add object. protocolprops string example {\\\"port\\\":8082,\\\"host\\\":\\\"10.150.40.52\\\"}
            var xEmbarcaderoApplicationId = xEmbarcaderoApplicationId_example;  // string |  (optional) 
            var xEmbarcaderoAppSecret = xEmbarcaderoAppSecret_example;  // string |  (optional) 
            var xEmbarcaderoMasterSecret = xEmbarcaderoMasterSecret_example;  // string |  (optional) 

            try
            {
                // Add Module Resource
                EdgeModuleResourceAddedObject result = apiInstance.RegisterModuleResource(mname, body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling EdgeModulesApi.RegisterModuleResource: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **string**| Is the unique EMS EdgeModule identifier | 
 **body** | [**EdgeModuleResourceAddObject**](EdgeModuleResourceAddObject.md)| EdgModule Resource add object. protocolprops string example {\\\&quot;port\\\&quot;:8082,\\\&quot;host\\\&quot;:\\\&quot;10.150.40.52\\\&quot;} | 
 **xEmbarcaderoApplicationId** | **string**|  | [optional] 
 **xEmbarcaderoAppSecret** | **string**|  | [optional] 
 **xEmbarcaderoMasterSecret** | **string**|  | [optional] 

### Return type

[**EdgeModuleResourceAddedObject**](EdgeModuleResourceAddedObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="unregistermodule"></a>
# **UnregisterModule**
> void UnregisterModule (string mname, string xEmbarcaderoApplicationId = null, string xEmbarcaderoAppSecret = null, string xEmbarcaderoMasterSecret = null)

Delete Module

 |      Used to delete an `EdgeModule Resource`. **mname** is the unique EMS EdgeModule identifier (MID) in the EMS database. **resourcename** is the name of the resource.

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class UnregisterModuleExample
    {
        public void main()
        {
            var apiInstance = new EdgeModulesApi();
            var mname = mname_example;  // string | Is the unique EMS EdgeModule identifier
            var xEmbarcaderoApplicationId = xEmbarcaderoApplicationId_example;  // string |  (optional) 
            var xEmbarcaderoAppSecret = xEmbarcaderoAppSecret_example;  // string |  (optional) 
            var xEmbarcaderoMasterSecret = xEmbarcaderoMasterSecret_example;  // string |  (optional) 

            try
            {
                // Delete Module
                apiInstance.UnregisterModule(mname, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling EdgeModulesApi.UnregisterModule: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **string**| Is the unique EMS EdgeModule identifier | 
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

<a name="unregistermoduleresource"></a>
# **UnregisterModuleResource**
> void UnregisterModuleResource (string mname, string name, string xEmbarcaderoApplicationId = null, string xEmbarcaderoAppSecret = null, string xEmbarcaderoMasterSecret = null)

Delete Module Resource

 |      Used to delete an `EdgeModule Resource`. **mname** is the unique EMS EdgeModule identifier (MID) in the EMS database. **resourcename** is the name of the resource.

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class UnregisterModuleResourceExample
    {
        public void main()
        {
            var apiInstance = new EdgeModulesApi();
            var mname = mname_example;  // string | Is the unique EMS EdgeModule identifier
            var name = name_example;  // string | Is the unique EMS EdgeModule Resource name
            var xEmbarcaderoApplicationId = xEmbarcaderoApplicationId_example;  // string |  (optional) 
            var xEmbarcaderoAppSecret = xEmbarcaderoAppSecret_example;  // string |  (optional) 
            var xEmbarcaderoMasterSecret = xEmbarcaderoMasterSecret_example;  // string |  (optional) 

            try
            {
                // Delete Module Resource
                apiInstance.UnregisterModuleResource(mname, name, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling EdgeModulesApi.UnregisterModuleResource: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **string**| Is the unique EMS EdgeModule identifier | 
 **name** | **string**| Is the unique EMS EdgeModule Resource name | 
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

<a name="updatemodule"></a>
# **UpdateModule**
> EdgeModuleUpdatedObject UpdateModule (string mname, EdgeModuleUpdateObject body, string xEmbarcaderoApplicationId = null, string xEmbarcaderoAppSecret = null, string xEmbarcaderoMasterSecret = null)

Update Module

 |      Used to update an `EdgeModule`. **mname** is the unique EMS EdgeModule identifier (MID) in the EMS database.

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class UpdateModuleExample
    {
        public void main()
        {
            var apiInstance = new EdgeModulesApi();
            var mname = mname_example;  // string | Is the unique EMS EdgeModule identifier
            var body = new EdgeModuleUpdateObject(); // EdgeModuleUpdateObject | EdgModule Resource add object. protocolprops string example {\\\"port\\\":8082,\\\"host\\\":\\\"10.150.40.52\\\"}
            var xEmbarcaderoApplicationId = xEmbarcaderoApplicationId_example;  // string |  (optional) 
            var xEmbarcaderoAppSecret = xEmbarcaderoAppSecret_example;  // string |  (optional) 
            var xEmbarcaderoMasterSecret = xEmbarcaderoMasterSecret_example;  // string |  (optional) 

            try
            {
                // Update Module
                EdgeModuleUpdatedObject result = apiInstance.UpdateModule(mname, body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling EdgeModulesApi.UpdateModule: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **string**| Is the unique EMS EdgeModule identifier | 
 **body** | [**EdgeModuleUpdateObject**](EdgeModuleUpdateObject.md)| EdgModule Resource add object. protocolprops string example {\\\&quot;port\\\&quot;:8082,\\\&quot;host\\\&quot;:\\\&quot;10.150.40.52\\\&quot;} | 
 **xEmbarcaderoApplicationId** | **string**|  | [optional] 
 **xEmbarcaderoAppSecret** | **string**|  | [optional] 
 **xEmbarcaderoMasterSecret** | **string**|  | [optional] 

### Return type

[**EdgeModuleUpdatedObject**](EdgeModuleUpdatedObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="updatemoduleresource"></a>
# **UpdateModuleResource**
> EdgeModuleResourceUpdatedObject UpdateModuleResource (string mname, string name, EdgeModuleResourceUpdateObject body, string xEmbarcaderoApplicationId = null, string xEmbarcaderoAppSecret = null, string xEmbarcaderoMasterSecret = null)

Update Module Resource

 |      Used to update an `EdgeModule`. **mname** is the unique EMS EdgeModule identifier (MID) in the EMS database.

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class UpdateModuleResourceExample
    {
        public void main()
        {
            var apiInstance = new EdgeModulesApi();
            var mname = mname_example;  // string | Is the unique EMS EdgeModule identifier
            var name = name_example;  // string | Is the unique EMS EdgeModule Resource name
            var body = new EdgeModuleResourceUpdateObject(); // EdgeModuleResourceUpdateObject | EdgModule Resource add object. protocolprops string example {\\\"port\\\":8082,\\\"host\\\":\\\"10.150.40.52\\\"}
            var xEmbarcaderoApplicationId = xEmbarcaderoApplicationId_example;  // string |  (optional) 
            var xEmbarcaderoAppSecret = xEmbarcaderoAppSecret_example;  // string |  (optional) 
            var xEmbarcaderoMasterSecret = xEmbarcaderoMasterSecret_example;  // string |  (optional) 

            try
            {
                // Update Module Resource
                EdgeModuleResourceUpdatedObject result = apiInstance.UpdateModuleResource(mname, name, body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling EdgeModulesApi.UpdateModuleResource: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **string**| Is the unique EMS EdgeModule identifier | 
 **name** | **string**| Is the unique EMS EdgeModule Resource name | 
 **body** | [**EdgeModuleResourceUpdateObject**](EdgeModuleResourceUpdateObject.md)| EdgModule Resource add object. protocolprops string example {\\\&quot;port\\\&quot;:8082,\\\&quot;host\\\&quot;:\\\&quot;10.150.40.52\\\&quot;} | 
 **xEmbarcaderoApplicationId** | **string**|  | [optional] 
 **xEmbarcaderoAppSecret** | **string**|  | [optional] 
 **xEmbarcaderoMasterSecret** | **string**|  | [optional] 

### Return type

[**EdgeModuleResourceUpdatedObject**](EdgeModuleResourceUpdatedObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

