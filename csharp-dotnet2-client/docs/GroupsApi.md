# IO.Swagger.Api.GroupsApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AddGroup**](GroupsApi.md#addgroup) | **POST** /groups | Add Group
[**DeleteGroup**](GroupsApi.md#deletegroup) | **DELETE** /groups/{item} | Delete Group
[**GetGroup**](GroupsApi.md#getgroup) | **GET** /groups/{item} | Get Group
[**GetGroupFields**](GroupsApi.md#getgroupfields) | **GET** /groups/fields | Get Fields
[**GetGroups**](GroupsApi.md#getgroups) | **GET** /groups | Get Groups
[**UpdateGroup**](GroupsApi.md#updategroup) | **PUT** /groups/{item} | Update Group


<a name="addgroup"></a>
# **AddGroup**
> void AddGroup (GroupAddObject body, string xEmbarcaderoApplicationId, string xEmbarcaderoAppSecret, string xEmbarcaderoMasterSecret)

Add Group

 |      Used to add a new `Group` object to the EMS database.

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class AddGroupExample
    {
        public void main()
        {
            
            var apiInstance = new GroupsApi();
            var body = new GroupAddObject(); // GroupAddObject | Object to sign up a new EMS User in the EMS Server
            var xEmbarcaderoApplicationId = xEmbarcaderoApplicationId_example;  // string |  (optional) 
            var xEmbarcaderoAppSecret = xEmbarcaderoAppSecret_example;  // string |  (optional) 
            var xEmbarcaderoMasterSecret = xEmbarcaderoMasterSecret_example;  // string |  (optional) 

            try
            {
                // Add Group
                apiInstance.AddGroup(body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling GroupsApi.AddGroup: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**GroupAddObject**](GroupAddObject.md)| Object to sign up a new EMS User in the EMS Server | 
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

<a name="deletegroup"></a>
# **DeleteGroup**
> void DeleteGroup (string item, string xEmbarcaderoApplicationId, string xEmbarcaderoAppSecret, string xEmbarcaderoMasterSecret)

Delete Group

 |      Used to delete a `Group`. **item** is the unique EMS Group name in the EMS database.

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class DeleteGroupExample
    {
        public void main()
        {
            
            var apiInstance = new GroupsApi();
            var item = item_example;  // string | A group name
            var xEmbarcaderoApplicationId = xEmbarcaderoApplicationId_example;  // string |  (optional) 
            var xEmbarcaderoAppSecret = xEmbarcaderoAppSecret_example;  // string |  (optional) 
            var xEmbarcaderoMasterSecret = xEmbarcaderoMasterSecret_example;  // string |  (optional) 

            try
            {
                // Delete Group
                apiInstance.DeleteGroup(item, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling GroupsApi.DeleteGroup: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **item** | **string**| A group name | 
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

<a name="getgroup"></a>
# **GetGroup**
> GroupObject GetGroup (string item, string xEmbarcaderoApplicationId, string xEmbarcaderoAppSecret, string xEmbarcaderoMasterSecret)

Get Group

 |      Used to retrieve all data from a `Group`. **item** is the unique EMS Group name in the EMS database.

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetGroupExample
    {
        public void main()
        {
            
            var apiInstance = new GroupsApi();
            var item = item_example;  // string | A group name
            var xEmbarcaderoApplicationId = xEmbarcaderoApplicationId_example;  // string |  (optional) 
            var xEmbarcaderoAppSecret = xEmbarcaderoAppSecret_example;  // string |  (optional) 
            var xEmbarcaderoMasterSecret = xEmbarcaderoMasterSecret_example;  // string |  (optional) 

            try
            {
                // Get Group
                GroupObject result = apiInstance.GetGroup(item, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling GroupsApi.GetGroup: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **item** | **string**| A group name | 
 **xEmbarcaderoApplicationId** | **string**|  | [optional] 
 **xEmbarcaderoAppSecret** | **string**|  | [optional] 
 **xEmbarcaderoMasterSecret** | **string**|  | [optional] 

### Return type

[**GroupObject**](GroupObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getgroupfields"></a>
# **GetGroupFields**
> List<FieldGroupObject> GetGroupFields (string xEmbarcaderoApplicationId, string xEmbarcaderoAppSecret, string xEmbarcaderoMasterSecret)

Get Fields

 |      Used to retrieve all the `field names` of the EMS Group (including the custom fields).

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetGroupFieldsExample
    {
        public void main()
        {
            
            var apiInstance = new GroupsApi();
            var xEmbarcaderoApplicationId = xEmbarcaderoApplicationId_example;  // string |  (optional) 
            var xEmbarcaderoAppSecret = xEmbarcaderoAppSecret_example;  // string |  (optional) 
            var xEmbarcaderoMasterSecret = xEmbarcaderoMasterSecret_example;  // string |  (optional) 

            try
            {
                // Get Fields
                List&lt;FieldGroupObject&gt; result = apiInstance.GetGroupFields(xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling GroupsApi.GetGroupFields: " + e.Message );
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

[**List<FieldGroupObject>**](FieldGroupObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getgroups"></a>
# **GetGroups**
> List<GroupObject> GetGroups (string xEmbarcaderoApplicationId, string xEmbarcaderoAppSecret, string xEmbarcaderoMasterSecret, decimal? skip, decimal? limit, decimal? order, string where)

Get Groups

 |      Used to retrieve all data from `Groups`.      Optional query param of **skip, limit, order, where** determines       size of returned array, filtered and order by.

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetGroupsExample
    {
        public void main()
        {
            
            var apiInstance = new GroupsApi();
            var xEmbarcaderoApplicationId = xEmbarcaderoApplicationId_example;  // string |  (optional) 
            var xEmbarcaderoAppSecret = xEmbarcaderoAppSecret_example;  // string |  (optional) 
            var xEmbarcaderoMasterSecret = xEmbarcaderoMasterSecret_example;  // string |  (optional) 
            var skip = 8.14;  // decimal? | users skipped (optional) 
            var limit = 8.14;  // decimal? | maximum number of results to return (optional) 
            var order = 8.14;  // decimal? | order ascending or descending (asc, desc) (optional) 
            var where = where_example;  // string | filter operators (lt, lte, gt, gte, eq, neq, like, nlike) (optional) 

            try
            {
                // Get Groups
                List&lt;GroupObject&gt; result = apiInstance.GetGroups(xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret, skip, limit, order, where);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling GroupsApi.GetGroups: " + e.Message );
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
 **skip** | **decimal?**| users skipped | [optional] 
 **limit** | **decimal?**| maximum number of results to return | [optional] 
 **order** | **decimal?**| order ascending or descending (asc, desc) | [optional] 
 **where** | **string**| filter operators (lt, lte, gt, gte, eq, neq, like, nlike) | [optional] 

### Return type

[**List<GroupObject>**](GroupObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="updategroup"></a>
# **UpdateGroup**
> UpdatedGroupObject UpdateGroup (string item, UpdateGroupObject body, string xEmbarcaderoApplicationId, string xEmbarcaderoAppSecret, string xEmbarcaderoMasterSecret)

Update Group

 |      Used to update a `Group`. **item** is the unique EMS Group name in the EMS database.

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class UpdateGroupExample
    {
        public void main()
        {
            
            var apiInstance = new GroupsApi();
            var item = item_example;  // string | A group name
            var body = new UpdateGroupObject(); // UpdateGroupObject | Object to sign up a new EMS User in the EMS Server
            var xEmbarcaderoApplicationId = xEmbarcaderoApplicationId_example;  // string |  (optional) 
            var xEmbarcaderoAppSecret = xEmbarcaderoAppSecret_example;  // string |  (optional) 
            var xEmbarcaderoMasterSecret = xEmbarcaderoMasterSecret_example;  // string |  (optional) 

            try
            {
                // Update Group
                UpdatedGroupObject result = apiInstance.UpdateGroup(item, body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling GroupsApi.UpdateGroup: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **item** | **string**| A group name | 
 **body** | [**UpdateGroupObject**](UpdateGroupObject.md)| Object to sign up a new EMS User in the EMS Server | 
 **xEmbarcaderoApplicationId** | **string**|  | [optional] 
 **xEmbarcaderoAppSecret** | **string**|  | [optional] 
 **xEmbarcaderoMasterSecret** | **string**|  | [optional] 

### Return type

[**UpdatedGroupObject**](UpdatedGroupObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

