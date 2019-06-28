# EdgeModulesApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getModule**](EdgeModulesApi.md#getModule) | **GET** /edgemodules/{mname} | Get Module
[**getModuleResource**](EdgeModulesApi.md#getModuleResource) | **GET** /edgemodules/{mname}/resources/{name} | Get EdgeModule Resource
[**getModuleResources**](EdgeModulesApi.md#getModuleResources) | **GET** /edgemodules/{mname}/resources | Get EdgeModule Resources
[**getModules**](EdgeModulesApi.md#getModules) | **GET** /edgemodules | Get Module
[**getModulesFields**](EdgeModulesApi.md#getModulesFields) | **GET** /edgemodules/fields | Get Fields
[**getResources**](EdgeModulesApi.md#getResources) | **GET** /edgemodules/resources | Get EdgeModules Resources
[**getResourcesFields**](EdgeModulesApi.md#getResourcesFields) | **GET** /edgemodules/resources/fields | Get Resource Fields
[**registerModule**](EdgeModulesApi.md#registerModule) | **POST** /edgemodules | Add Module
[**registerModuleResource**](EdgeModulesApi.md#registerModuleResource) | **POST** /edgemodules/{mname}/resources | Add Module Resource
[**unregisterModule**](EdgeModulesApi.md#unregisterModule) | **DELETE** /edgemodules/{mname} | Delete Module
[**unregisterModuleResource**](EdgeModulesApi.md#unregisterModuleResource) | **DELETE** /edgemodules/{mname}/resources/{name} | Delete Module Resource
[**updateModule**](EdgeModulesApi.md#updateModule) | **PUT** /edgemodules/{mname} | Update Module
[**updateModuleResource**](EdgeModulesApi.md#updateModuleResource) | **PUT** /edgemodules/{mname}/resources/{name} | Update Module Resource


<a name="getModule"></a>
# **getModule**
> EdgeModuleObject getModule(mname, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Get Module

 |      Used to retrieve all data from &#x60;EdgeModule&#x60;.      Optional query param of **skip, limit, order, where** determines       size of returned array, filtered and order by.

### Example
```java
// Import classes:
//import io.swagger.client.ApiException;
//import io.swagger.client.api.EdgeModulesApi;


EdgeModulesApi apiInstance = new EdgeModulesApi();
String mname = "mname_example"; // String | Is the unique EMS EdgeModule identifier
String xEmbarcaderoApplicationId = "xEmbarcaderoApplicationId_example"; // String | 
String xEmbarcaderoAppSecret = "xEmbarcaderoAppSecret_example"; // String | 
String xEmbarcaderoMasterSecret = "xEmbarcaderoMasterSecret_example"; // String | 
try {
    EdgeModuleObject result = apiInstance.getModule(mname, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling EdgeModulesApi#getModule");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **String**| Is the unique EMS EdgeModule identifier |
 **xEmbarcaderoApplicationId** | **String**|  | [optional]
 **xEmbarcaderoAppSecret** | **String**|  | [optional]
 **xEmbarcaderoMasterSecret** | **String**|  | [optional]

### Return type

[**EdgeModuleObject**](EdgeModuleObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getModuleResource"></a>
# **getModuleResource**
> EdgeModuleResourceObject getModuleResource(mname, name, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Get EdgeModule Resource

 |      Used to retrieve all data from a resource of an EdgeModule. **mname** is the unique EMS EdgeModule identifier in the EMS database. **resourcename** is the name of the resource.

### Example
```java
// Import classes:
//import io.swagger.client.ApiException;
//import io.swagger.client.api.EdgeModulesApi;


EdgeModulesApi apiInstance = new EdgeModulesApi();
String mname = "mname_example"; // String | Is the unique EMS EdgeModule identifier
String name = "name_example"; // String | Is the unique EMS EdgeModule Resource name
String xEmbarcaderoApplicationId = "xEmbarcaderoApplicationId_example"; // String | 
String xEmbarcaderoAppSecret = "xEmbarcaderoAppSecret_example"; // String | 
String xEmbarcaderoMasterSecret = "xEmbarcaderoMasterSecret_example"; // String | 
try {
    EdgeModuleResourceObject result = apiInstance.getModuleResource(mname, name, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling EdgeModulesApi#getModuleResource");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **String**| Is the unique EMS EdgeModule identifier |
 **name** | **String**| Is the unique EMS EdgeModule Resource name |
 **xEmbarcaderoApplicationId** | **String**|  | [optional]
 **xEmbarcaderoAppSecret** | **String**|  | [optional]
 **xEmbarcaderoMasterSecret** | **String**|  | [optional]

### Return type

[**EdgeModuleResourceObject**](EdgeModuleResourceObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getModuleResources"></a>
# **getModuleResources**
> List&lt;EdgeModuleResourceObject&gt; getModuleResources(mname, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Get EdgeModule Resources

 |      Used to retrieve all data from the resources of an EdgeModule.

### Example
```java
// Import classes:
//import io.swagger.client.ApiException;
//import io.swagger.client.api.EdgeModulesApi;


EdgeModulesApi apiInstance = new EdgeModulesApi();
String mname = "mname_example"; // String | Is the unique EMS EdgeModule identifier
String xEmbarcaderoApplicationId = "xEmbarcaderoApplicationId_example"; // String | 
String xEmbarcaderoAppSecret = "xEmbarcaderoAppSecret_example"; // String | 
String xEmbarcaderoMasterSecret = "xEmbarcaderoMasterSecret_example"; // String | 
try {
    List<EdgeModuleResourceObject> result = apiInstance.getModuleResources(mname, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling EdgeModulesApi#getModuleResources");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **String**| Is the unique EMS EdgeModule identifier |
 **xEmbarcaderoApplicationId** | **String**|  | [optional]
 **xEmbarcaderoAppSecret** | **String**|  | [optional]
 **xEmbarcaderoMasterSecret** | **String**|  | [optional]

### Return type

[**List&lt;EdgeModuleResourceObject&gt;**](EdgeModuleResourceObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getModules"></a>
# **getModules**
> List&lt;EdgeModuleObject&gt; getModules(xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Get Module

 |      Used to retrieve all data from &#x60;EdgeModule&#x60;.      Optional query param of **skip, limit, order, where** determines       size of returned array, filtered and order by.

### Example
```java
// Import classes:
//import io.swagger.client.ApiException;
//import io.swagger.client.api.EdgeModulesApi;


EdgeModulesApi apiInstance = new EdgeModulesApi();
String xEmbarcaderoApplicationId = "xEmbarcaderoApplicationId_example"; // String | 
String xEmbarcaderoAppSecret = "xEmbarcaderoAppSecret_example"; // String | 
String xEmbarcaderoMasterSecret = "xEmbarcaderoMasterSecret_example"; // String | 
try {
    List<EdgeModuleObject> result = apiInstance.getModules(xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling EdgeModulesApi#getModules");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xEmbarcaderoApplicationId** | **String**|  | [optional]
 **xEmbarcaderoAppSecret** | **String**|  | [optional]
 **xEmbarcaderoMasterSecret** | **String**|  | [optional]

### Return type

[**List&lt;EdgeModuleObject&gt;**](EdgeModuleObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getModulesFields"></a>
# **getModulesFields**
> FieldsEdgeModuleObject getModulesFields(xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Get Fields

 |      Used to retrieve all the &#x60;field names&#x60; of the EMS EdgeModule (including the custom fields).

### Example
```java
// Import classes:
//import io.swagger.client.ApiException;
//import io.swagger.client.api.EdgeModulesApi;


EdgeModulesApi apiInstance = new EdgeModulesApi();
String xEmbarcaderoApplicationId = "xEmbarcaderoApplicationId_example"; // String | 
String xEmbarcaderoAppSecret = "xEmbarcaderoAppSecret_example"; // String | 
String xEmbarcaderoMasterSecret = "xEmbarcaderoMasterSecret_example"; // String | 
try {
    FieldsEdgeModuleObject result = apiInstance.getModulesFields(xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling EdgeModulesApi#getModulesFields");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xEmbarcaderoApplicationId** | **String**|  | [optional]
 **xEmbarcaderoAppSecret** | **String**|  | [optional]
 **xEmbarcaderoMasterSecret** | **String**|  | [optional]

### Return type

[**FieldsEdgeModuleObject**](FieldsEdgeModuleObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getResources"></a>
# **getResources**
> List&lt;EdgeModuleResourceObject&gt; getResources(xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Get EdgeModules Resources

 |      Used to retrieve all data from the resources of all EdgeModules.

### Example
```java
// Import classes:
//import io.swagger.client.ApiException;
//import io.swagger.client.api.EdgeModulesApi;


EdgeModulesApi apiInstance = new EdgeModulesApi();
String xEmbarcaderoApplicationId = "xEmbarcaderoApplicationId_example"; // String | 
String xEmbarcaderoAppSecret = "xEmbarcaderoAppSecret_example"; // String | 
String xEmbarcaderoMasterSecret = "xEmbarcaderoMasterSecret_example"; // String | 
try {
    List<EdgeModuleResourceObject> result = apiInstance.getResources(xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling EdgeModulesApi#getResources");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xEmbarcaderoApplicationId** | **String**|  | [optional]
 **xEmbarcaderoAppSecret** | **String**|  | [optional]
 **xEmbarcaderoMasterSecret** | **String**|  | [optional]

### Return type

[**List&lt;EdgeModuleResourceObject&gt;**](EdgeModuleResourceObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getResourcesFields"></a>
# **getResourcesFields**
> FieldsEdgeModuleObject getResourcesFields(xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Get Resource Fields

 |      Used to retrieve the &#x60;field names&#x60; of all the resources of the EMS EdgeModule (including the custom fields).

### Example
```java
// Import classes:
//import io.swagger.client.ApiException;
//import io.swagger.client.api.EdgeModulesApi;


EdgeModulesApi apiInstance = new EdgeModulesApi();
String xEmbarcaderoApplicationId = "xEmbarcaderoApplicationId_example"; // String | 
String xEmbarcaderoAppSecret = "xEmbarcaderoAppSecret_example"; // String | 
String xEmbarcaderoMasterSecret = "xEmbarcaderoMasterSecret_example"; // String | 
try {
    FieldsEdgeModuleObject result = apiInstance.getResourcesFields(xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling EdgeModulesApi#getResourcesFields");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xEmbarcaderoApplicationId** | **String**|  | [optional]
 **xEmbarcaderoAppSecret** | **String**|  | [optional]
 **xEmbarcaderoMasterSecret** | **String**|  | [optional]

### Return type

[**FieldsEdgeModuleObject**](FieldsEdgeModuleObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="registerModule"></a>
# **registerModule**
> EdgeModuleAddedObject registerModule(body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Add Module

 |      Used to add a new &#x60;EdgeModule&#x60; object to the EMS database.

### Example
```java
// Import classes:
//import io.swagger.client.ApiException;
//import io.swagger.client.api.EdgeModulesApi;


EdgeModulesApi apiInstance = new EdgeModulesApi();
EdgeModuleAddObject body = new EdgeModuleAddObject(); // EdgeModuleAddObject | EdgeModule object to add. protocolprops example string {\\\"port\\\":8082,\\\"host\\\":\\\"10.150.40.52\\\"}
String xEmbarcaderoApplicationId = "xEmbarcaderoApplicationId_example"; // String | 
String xEmbarcaderoAppSecret = "xEmbarcaderoAppSecret_example"; // String | 
String xEmbarcaderoMasterSecret = "xEmbarcaderoMasterSecret_example"; // String | 
try {
    EdgeModuleAddedObject result = apiInstance.registerModule(body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling EdgeModulesApi#registerModule");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**EdgeModuleAddObject**](EdgeModuleAddObject.md)| EdgeModule object to add. protocolprops example string {\\\&quot;port\\\&quot;:8082,\\\&quot;host\\\&quot;:\\\&quot;10.150.40.52\\\&quot;} |
 **xEmbarcaderoApplicationId** | **String**|  | [optional]
 **xEmbarcaderoAppSecret** | **String**|  | [optional]
 **xEmbarcaderoMasterSecret** | **String**|  | [optional]

### Return type

[**EdgeModuleAddedObject**](EdgeModuleAddedObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="registerModuleResource"></a>
# **registerModuleResource**
> EdgeModuleResourceAddedObject registerModuleResource(mname, body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Add Module Resource

 |      Used to register a new resource from an EMS EdgeModule. **mname** is the unique EMS EdgeModule identifier in the EMS database.

### Example
```java
// Import classes:
//import io.swagger.client.ApiException;
//import io.swagger.client.api.EdgeModulesApi;


EdgeModulesApi apiInstance = new EdgeModulesApi();
String mname = "mname_example"; // String | Is the unique EMS EdgeModule identifier
EdgeModuleResourceAddObject body = new EdgeModuleResourceAddObject(); // EdgeModuleResourceAddObject | EdgModule Resource add object. protocolprops string example {\\\"port\\\":8082,\\\"host\\\":\\\"10.150.40.52\\\"}
String xEmbarcaderoApplicationId = "xEmbarcaderoApplicationId_example"; // String | 
String xEmbarcaderoAppSecret = "xEmbarcaderoAppSecret_example"; // String | 
String xEmbarcaderoMasterSecret = "xEmbarcaderoMasterSecret_example"; // String | 
try {
    EdgeModuleResourceAddedObject result = apiInstance.registerModuleResource(mname, body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling EdgeModulesApi#registerModuleResource");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **String**| Is the unique EMS EdgeModule identifier |
 **body** | [**EdgeModuleResourceAddObject**](EdgeModuleResourceAddObject.md)| EdgModule Resource add object. protocolprops string example {\\\&quot;port\\\&quot;:8082,\\\&quot;host\\\&quot;:\\\&quot;10.150.40.52\\\&quot;} |
 **xEmbarcaderoApplicationId** | **String**|  | [optional]
 **xEmbarcaderoAppSecret** | **String**|  | [optional]
 **xEmbarcaderoMasterSecret** | **String**|  | [optional]

### Return type

[**EdgeModuleResourceAddedObject**](EdgeModuleResourceAddedObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="unregisterModule"></a>
# **unregisterModule**
> unregisterModule(mname, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Delete Module

 |      Used to delete an &#x60;EdgeModule Resource&#x60;. **mname** is the unique EMS EdgeModule identifier (MID) in the EMS database. **resourcename** is the name of the resource.

### Example
```java
// Import classes:
//import io.swagger.client.ApiException;
//import io.swagger.client.api.EdgeModulesApi;


EdgeModulesApi apiInstance = new EdgeModulesApi();
String mname = "mname_example"; // String | Is the unique EMS EdgeModule identifier
String xEmbarcaderoApplicationId = "xEmbarcaderoApplicationId_example"; // String | 
String xEmbarcaderoAppSecret = "xEmbarcaderoAppSecret_example"; // String | 
String xEmbarcaderoMasterSecret = "xEmbarcaderoMasterSecret_example"; // String | 
try {
    apiInstance.unregisterModule(mname, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
} catch (ApiException e) {
    System.err.println("Exception when calling EdgeModulesApi#unregisterModule");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **String**| Is the unique EMS EdgeModule identifier |
 **xEmbarcaderoApplicationId** | **String**|  | [optional]
 **xEmbarcaderoAppSecret** | **String**|  | [optional]
 **xEmbarcaderoMasterSecret** | **String**|  | [optional]

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="unregisterModuleResource"></a>
# **unregisterModuleResource**
> unregisterModuleResource(mname, name, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Delete Module Resource

 |      Used to delete an &#x60;EdgeModule Resource&#x60;. **mname** is the unique EMS EdgeModule identifier (MID) in the EMS database. **resourcename** is the name of the resource.

### Example
```java
// Import classes:
//import io.swagger.client.ApiException;
//import io.swagger.client.api.EdgeModulesApi;


EdgeModulesApi apiInstance = new EdgeModulesApi();
String mname = "mname_example"; // String | Is the unique EMS EdgeModule identifier
String name = "name_example"; // String | Is the unique EMS EdgeModule Resource name
String xEmbarcaderoApplicationId = "xEmbarcaderoApplicationId_example"; // String | 
String xEmbarcaderoAppSecret = "xEmbarcaderoAppSecret_example"; // String | 
String xEmbarcaderoMasterSecret = "xEmbarcaderoMasterSecret_example"; // String | 
try {
    apiInstance.unregisterModuleResource(mname, name, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
} catch (ApiException e) {
    System.err.println("Exception when calling EdgeModulesApi#unregisterModuleResource");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **String**| Is the unique EMS EdgeModule identifier |
 **name** | **String**| Is the unique EMS EdgeModule Resource name |
 **xEmbarcaderoApplicationId** | **String**|  | [optional]
 **xEmbarcaderoAppSecret** | **String**|  | [optional]
 **xEmbarcaderoMasterSecret** | **String**|  | [optional]

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="updateModule"></a>
# **updateModule**
> EdgeModuleUpdatedObject updateModule(mname, body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Update Module

 |      Used to update an &#x60;EdgeModule&#x60;. **mname** is the unique EMS EdgeModule identifier (MID) in the EMS database.

### Example
```java
// Import classes:
//import io.swagger.client.ApiException;
//import io.swagger.client.api.EdgeModulesApi;


EdgeModulesApi apiInstance = new EdgeModulesApi();
String mname = "mname_example"; // String | Is the unique EMS EdgeModule identifier
EdgeModuleUpdateObject body = new EdgeModuleUpdateObject(); // EdgeModuleUpdateObject | EdgModule Resource add object. protocolprops string example {\\\"port\\\":8082,\\\"host\\\":\\\"10.150.40.52\\\"}
String xEmbarcaderoApplicationId = "xEmbarcaderoApplicationId_example"; // String | 
String xEmbarcaderoAppSecret = "xEmbarcaderoAppSecret_example"; // String | 
String xEmbarcaderoMasterSecret = "xEmbarcaderoMasterSecret_example"; // String | 
try {
    EdgeModuleUpdatedObject result = apiInstance.updateModule(mname, body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling EdgeModulesApi#updateModule");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **String**| Is the unique EMS EdgeModule identifier |
 **body** | [**EdgeModuleUpdateObject**](EdgeModuleUpdateObject.md)| EdgModule Resource add object. protocolprops string example {\\\&quot;port\\\&quot;:8082,\\\&quot;host\\\&quot;:\\\&quot;10.150.40.52\\\&quot;} |
 **xEmbarcaderoApplicationId** | **String**|  | [optional]
 **xEmbarcaderoAppSecret** | **String**|  | [optional]
 **xEmbarcaderoMasterSecret** | **String**|  | [optional]

### Return type

[**EdgeModuleUpdatedObject**](EdgeModuleUpdatedObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="updateModuleResource"></a>
# **updateModuleResource**
> EdgeModuleResourceUpdatedObject updateModuleResource(mname, name, body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Update Module Resource

 |      Used to update an &#x60;EdgeModule&#x60;. **mname** is the unique EMS EdgeModule identifier (MID) in the EMS database.

### Example
```java
// Import classes:
//import io.swagger.client.ApiException;
//import io.swagger.client.api.EdgeModulesApi;


EdgeModulesApi apiInstance = new EdgeModulesApi();
String mname = "mname_example"; // String | Is the unique EMS EdgeModule identifier
String name = "name_example"; // String | Is the unique EMS EdgeModule Resource name
EdgeModuleResourceUpdateObject body = new EdgeModuleResourceUpdateObject(); // EdgeModuleResourceUpdateObject | EdgModule Resource add object. protocolprops string example {\\\"port\\\":8082,\\\"host\\\":\\\"10.150.40.52\\\"}
String xEmbarcaderoApplicationId = "xEmbarcaderoApplicationId_example"; // String | 
String xEmbarcaderoAppSecret = "xEmbarcaderoAppSecret_example"; // String | 
String xEmbarcaderoMasterSecret = "xEmbarcaderoMasterSecret_example"; // String | 
try {
    EdgeModuleResourceUpdatedObject result = apiInstance.updateModuleResource(mname, name, body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling EdgeModulesApi#updateModuleResource");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **String**| Is the unique EMS EdgeModule identifier |
 **name** | **String**| Is the unique EMS EdgeModule Resource name |
 **body** | [**EdgeModuleResourceUpdateObject**](EdgeModuleResourceUpdateObject.md)| EdgModule Resource add object. protocolprops string example {\\\&quot;port\\\&quot;:8082,\\\&quot;host\\\&quot;:\\\&quot;10.150.40.52\\\&quot;} |
 **xEmbarcaderoApplicationId** | **String**|  | [optional]
 **xEmbarcaderoAppSecret** | **String**|  | [optional]
 **xEmbarcaderoMasterSecret** | **String**|  | [optional]

### Return type

[**EdgeModuleResourceUpdatedObject**](EdgeModuleResourceUpdatedObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

