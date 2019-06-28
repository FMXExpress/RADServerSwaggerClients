# IO.Swagger.Api.UsersApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AddUser**](UsersApi.md#adduser) | **POST** /users | Add User
[**DeleteUser**](UsersApi.md#deleteuser) | **DELETE** /users/{id} | Delete User
[**GetUser**](UsersApi.md#getuser) | **GET** /users/{id} | Get User
[**GetUserFields**](UsersApi.md#getuserfields) | **GET** /users/fields | Get Fields
[**GetUserGroups**](UsersApi.md#getusergroups) | **GET** /users/{id}/groups | Get User Groups
[**GetUsers**](UsersApi.md#getusers) | **GET** /users | Get Users
[**LoginUser**](UsersApi.md#loginuser) | **POST** /users/login | Log In
[**LogoutUser**](UsersApi.md#logoutuser) | **POST** /users/logout | sPostLogoutSummaryTitle
[**SignupUser**](UsersApi.md#signupuser) | **POST** /users/signup | Sign Up  User
[**UpdateUser**](UsersApi.md#updateuser) | **PUT** /users/{id} | Update User


<a name="adduser"></a>
# **AddUser**
> UseridObject AddUser (UserCredentialsObject body, string xEmbarcaderoApplicationId = null, string xEmbarcaderoAppSecret = null, string xEmbarcaderoMasterSecret = null)

Add User

 |      Used to add a new `User` object to the EMS database.

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class AddUserExample
    {
        public void main()
        {
            var apiInstance = new UsersApi();
            var body = new UserCredentialsObject(); // UserCredentialsObject | Object to add a new EMS User in the EMS Server
            var xEmbarcaderoApplicationId = xEmbarcaderoApplicationId_example;  // string |  (optional) 
            var xEmbarcaderoAppSecret = xEmbarcaderoAppSecret_example;  // string |  (optional) 
            var xEmbarcaderoMasterSecret = xEmbarcaderoMasterSecret_example;  // string |  (optional) 

            try
            {
                // Add User
                UseridObject result = apiInstance.AddUser(body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling UsersApi.AddUser: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**UserCredentialsObject**](UserCredentialsObject.md)| Object to add a new EMS User in the EMS Server | 
 **xEmbarcaderoApplicationId** | **string**|  | [optional] 
 **xEmbarcaderoAppSecret** | **string**|  | [optional] 
 **xEmbarcaderoMasterSecret** | **string**|  | [optional] 

### Return type

[**UseridObject**](UseridObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="deleteuser"></a>
# **DeleteUser**
> void DeleteUser (string id, string xEmbarcaderoApplicationId = null, string xEmbarcaderoAppSecret = null, string xEmbarcaderoMasterSecret = null)

Delete User

 |      Used to delete a `User`. **id** is the unique EMS User identifier (UID) in the EMS database.

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class DeleteUserExample
    {
        public void main()
        {
            var apiInstance = new UsersApi();
            var id = id_example;  // string | A user ID
            var xEmbarcaderoApplicationId = xEmbarcaderoApplicationId_example;  // string |  (optional) 
            var xEmbarcaderoAppSecret = xEmbarcaderoAppSecret_example;  // string |  (optional) 
            var xEmbarcaderoMasterSecret = xEmbarcaderoMasterSecret_example;  // string |  (optional) 

            try
            {
                // Delete User
                apiInstance.DeleteUser(id, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling UsersApi.DeleteUser: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| A user ID | 
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

<a name="getuser"></a>
# **GetUser**
> UserObject GetUser (string id, string xEmbarcaderoApplicationId = null, string xEmbarcaderoAppSecret = null, string xEmbarcaderoMasterSecret = null)

Get User

 |      Used to retrieve all data from a `User`. **id** is the unique EMS User identifier (UID) in the EMS database.

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetUserExample
    {
        public void main()
        {
            var apiInstance = new UsersApi();
            var id = id_example;  // string | A user ID
            var xEmbarcaderoApplicationId = xEmbarcaderoApplicationId_example;  // string |  (optional) 
            var xEmbarcaderoAppSecret = xEmbarcaderoAppSecret_example;  // string |  (optional) 
            var xEmbarcaderoMasterSecret = xEmbarcaderoMasterSecret_example;  // string |  (optional) 

            try
            {
                // Get User
                UserObject result = apiInstance.GetUser(id, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling UsersApi.GetUser: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| A user ID | 
 **xEmbarcaderoApplicationId** | **string**|  | [optional] 
 **xEmbarcaderoAppSecret** | **string**|  | [optional] 
 **xEmbarcaderoMasterSecret** | **string**|  | [optional] 

### Return type

[**UserObject**](UserObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getuserfields"></a>
# **GetUserFields**
> List<FieldObject> GetUserFields (string xEmbarcaderoApplicationId = null, string xEmbarcaderoAppSecret = null, string xEmbarcaderoMasterSecret = null)

Get Fields

 |      Used to retrieve all the `field names` of the EMS Users (including the custom fields).

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetUserFieldsExample
    {
        public void main()
        {
            var apiInstance = new UsersApi();
            var xEmbarcaderoApplicationId = xEmbarcaderoApplicationId_example;  // string |  (optional) 
            var xEmbarcaderoAppSecret = xEmbarcaderoAppSecret_example;  // string |  (optional) 
            var xEmbarcaderoMasterSecret = xEmbarcaderoMasterSecret_example;  // string |  (optional) 

            try
            {
                // Get Fields
                List&lt;FieldObject&gt; result = apiInstance.GetUserFields(xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling UsersApi.GetUserFields: " + e.Message );
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

[**List<FieldObject>**](FieldObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getusergroups"></a>
# **GetUserGroups**
> List<GroupName> GetUserGroups (string id, string xEmbarcaderoApplicationId = null, string xEmbarcaderoAppSecret = null, string xEmbarcaderoMasterSecret = null)

Get User Groups

 |      Used to retrieve the EMS Groups the EMS User belongs to. **id** is the unique EMS User identifier (UID) in the EMS database.

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetUserGroupsExample
    {
        public void main()
        {
            var apiInstance = new UsersApi();
            var id = id_example;  // string | A user ID
            var xEmbarcaderoApplicationId = xEmbarcaderoApplicationId_example;  // string |  (optional) 
            var xEmbarcaderoAppSecret = xEmbarcaderoAppSecret_example;  // string |  (optional) 
            var xEmbarcaderoMasterSecret = xEmbarcaderoMasterSecret_example;  // string |  (optional) 

            try
            {
                // Get User Groups
                List&lt;GroupName&gt; result = apiInstance.GetUserGroups(id, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling UsersApi.GetUserGroups: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| A user ID | 
 **xEmbarcaderoApplicationId** | **string**|  | [optional] 
 **xEmbarcaderoAppSecret** | **string**|  | [optional] 
 **xEmbarcaderoMasterSecret** | **string**|  | [optional] 

### Return type

[**List<GroupName>**](GroupName.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getusers"></a>
# **GetUsers**
> List<UserObject> GetUsers (string xEmbarcaderoApplicationId = null, string xEmbarcaderoAppSecret = null, string xEmbarcaderoMasterSecret = null, decimal? skip = null, decimal? limit = null, decimal? order = null, string where = null)

Get Users

 |      Used to retrieve all data from `Users`.      Optional query param of **skip, limit, order, where** determines       size of returned array, filtered and order by.

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetUsersExample
    {
        public void main()
        {
            var apiInstance = new UsersApi();
            var xEmbarcaderoApplicationId = xEmbarcaderoApplicationId_example;  // string |  (optional) 
            var xEmbarcaderoAppSecret = xEmbarcaderoAppSecret_example;  // string |  (optional) 
            var xEmbarcaderoMasterSecret = xEmbarcaderoMasterSecret_example;  // string |  (optional) 
            var skip = 8.14;  // decimal? | users skipped (optional) 
            var limit = 8.14;  // decimal? | maximum number of results to return (optional) 
            var order = 8.14;  // decimal? | order ascending or descending (asc, desc) (optional) 
            var where = where_example;  // string | filter operators (lt, lte, gt, gte, eq, neq, like, nlike) (optional) 

            try
            {
                // Get Users
                List&lt;UserObject&gt; result = apiInstance.GetUsers(xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret, skip, limit, order, where);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling UsersApi.GetUsers: " + e.Message );
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

[**List<UserObject>**](UserObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="loginuser"></a>
# **LoginUser**
> UserTokenObject LoginUser (UserCredentialsObject body, string xEmbarcaderoApplicationId = null, string xEmbarcaderoAppSecret = null, string xEmbarcaderoMasterSecret = null)

Log In

 |      Logs in to the EMS Server with a specific EMS User.

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class LoginUserExample
    {
        public void main()
        {
            var apiInstance = new UsersApi();
            var body = new UserCredentialsObject(); // UserCredentialsObject | A user object
            var xEmbarcaderoApplicationId = xEmbarcaderoApplicationId_example;  // string |  (optional) 
            var xEmbarcaderoAppSecret = xEmbarcaderoAppSecret_example;  // string |  (optional) 
            var xEmbarcaderoMasterSecret = xEmbarcaderoMasterSecret_example;  // string |  (optional) 

            try
            {
                // Log In
                UserTokenObject result = apiInstance.LoginUser(body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling UsersApi.LoginUser: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**UserCredentialsObject**](UserCredentialsObject.md)| A user object | 
 **xEmbarcaderoApplicationId** | **string**|  | [optional] 
 **xEmbarcaderoAppSecret** | **string**|  | [optional] 
 **xEmbarcaderoMasterSecret** | **string**|  | [optional] 

### Return type

[**UserTokenObject**](UserTokenObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="logoutuser"></a>
# **LogoutUser**
> void LogoutUser (string xEmbarcaderoApplicationId = null, string xEmbarcaderoAppSecret = null, string xEmbarcaderoMasterSecret = null)

sPostLogoutSummaryTitle

sPostLogoutSummaryDesc

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class LogoutUserExample
    {
        public void main()
        {
            var apiInstance = new UsersApi();
            var xEmbarcaderoApplicationId = xEmbarcaderoApplicationId_example;  // string |  (optional) 
            var xEmbarcaderoAppSecret = xEmbarcaderoAppSecret_example;  // string |  (optional) 
            var xEmbarcaderoMasterSecret = xEmbarcaderoMasterSecret_example;  // string |  (optional) 

            try
            {
                // sPostLogoutSummaryTitle
                apiInstance.LogoutUser(xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling UsersApi.LogoutUser: " + e.Message );
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

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="signupuser"></a>
# **SignupUser**
> UserSignUpResponseObject SignupUser (UserCredentialsObject body, string xEmbarcaderoApplicationId = null, string xEmbarcaderoAppSecret = null, string xEmbarcaderoMasterSecret = null)

Sign Up  User

 |      Signs up to the EMS Server with an appropriate EMS User.

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class SignupUserExample
    {
        public void main()
        {
            var apiInstance = new UsersApi();
            var body = new UserCredentialsObject(); // UserCredentialsObject | Object to sign up a new EMS User in the EMS Server
            var xEmbarcaderoApplicationId = xEmbarcaderoApplicationId_example;  // string |  (optional) 
            var xEmbarcaderoAppSecret = xEmbarcaderoAppSecret_example;  // string |  (optional) 
            var xEmbarcaderoMasterSecret = xEmbarcaderoMasterSecret_example;  // string |  (optional) 

            try
            {
                // Sign Up  User
                UserSignUpResponseObject result = apiInstance.SignupUser(body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling UsersApi.SignupUser: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**UserCredentialsObject**](UserCredentialsObject.md)| Object to sign up a new EMS User in the EMS Server | 
 **xEmbarcaderoApplicationId** | **string**|  | [optional] 
 **xEmbarcaderoAppSecret** | **string**|  | [optional] 
 **xEmbarcaderoMasterSecret** | **string**|  | [optional] 

### Return type

[**UserSignUpResponseObject**](UserSignUpResponseObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="updateuser"></a>
# **UpdateUser**
> UpdatedObject UpdateUser (string id, UpdateObject body, string xEmbarcaderoApplicationId = null, string xEmbarcaderoAppSecret = null, string xEmbarcaderoMasterSecret = null)

Update User

 |      Used to update a `User`. **id** is the unique EMS User identifier (UID) in the EMS database.

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class UpdateUserExample
    {
        public void main()
        {
            var apiInstance = new UsersApi();
            var id = id_example;  // string | A user ID
            var body = new UpdateObject(); // UpdateObject | Add any fieldName
            var xEmbarcaderoApplicationId = xEmbarcaderoApplicationId_example;  // string |  (optional) 
            var xEmbarcaderoAppSecret = xEmbarcaderoAppSecret_example;  // string |  (optional) 
            var xEmbarcaderoMasterSecret = xEmbarcaderoMasterSecret_example;  // string |  (optional) 

            try
            {
                // Update User
                UpdatedObject result = apiInstance.UpdateUser(id, body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling UsersApi.UpdateUser: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| A user ID | 
 **body** | [**UpdateObject**](UpdateObject.md)| Add any fieldName | 
 **xEmbarcaderoApplicationId** | **string**|  | [optional] 
 **xEmbarcaderoAppSecret** | **string**|  | [optional] 
 **xEmbarcaderoMasterSecret** | **string**|  | [optional] 

### Return type

[**UpdatedObject**](UpdatedObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

