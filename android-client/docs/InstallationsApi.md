# InstallationsApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addInstallation**](InstallationsApi.md#addInstallation) | **POST** /installations | Add Installation
[**deleteInstallation**](InstallationsApi.md#deleteInstallation) | **DELETE** /installations/{id} | Delete Installation
[**getChannels**](InstallationsApi.md#getChannels) | **GET** /installations/channels | Get Installation Channels
[**getInstallation**](InstallationsApi.md#getInstallation) | **GET** /installations/{id} | Get Installation
[**getInstallationFields**](InstallationsApi.md#getInstallationFields) | **GET** /installations/fields | Get Fields
[**getInstallations**](InstallationsApi.md#getInstallations) | **GET** /installations | Get Installations
[**updateInstallation**](InstallationsApi.md#updateInstallation) | **PUT** /installations/{id} | Update Installation


<a name="addInstallation"></a>
# **addInstallation**
> InstallationAddedObject addInstallation(body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Add Installation

 |      Used to add a new &#x60;Installation&#x60; object to the EMS database.

### Example
```java
// Import classes:
//import io.swagger.client.api.InstallationsApi;

InstallationsApi apiInstance = new InstallationsApi();
InstallationAddObject body = new InstallationAddObject(); // InstallationAddObject | Object to sign up a new EMS User in the EMS Server
String xEmbarcaderoApplicationId = "xEmbarcaderoApplicationId_example"; // String | 
String xEmbarcaderoAppSecret = "xEmbarcaderoAppSecret_example"; // String | 
String xEmbarcaderoMasterSecret = "xEmbarcaderoMasterSecret_example"; // String | 
try {
    InstallationAddedObject result = apiInstance.addInstallation(body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling InstallationsApi#addInstallation");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**InstallationAddObject**](InstallationAddObject.md)| Object to sign up a new EMS User in the EMS Server |
 **xEmbarcaderoApplicationId** | **String**|  | [optional]
 **xEmbarcaderoAppSecret** | **String**|  | [optional]
 **xEmbarcaderoMasterSecret** | **String**|  | [optional]

### Return type

[**InstallationAddedObject**](InstallationAddedObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="deleteInstallation"></a>
# **deleteInstallation**
> deleteInstallation(id, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Delete Installation

 |      Used to delete an &#x60;Installation&#x60;. **id** is the unique EMS Installation identifier (IID) in the EMS database.

### Example
```java
// Import classes:
//import io.swagger.client.api.InstallationsApi;

InstallationsApi apiInstance = new InstallationsApi();
String id = "id_example"; // String | A Installation ID
String xEmbarcaderoApplicationId = "xEmbarcaderoApplicationId_example"; // String | 
String xEmbarcaderoAppSecret = "xEmbarcaderoAppSecret_example"; // String | 
String xEmbarcaderoMasterSecret = "xEmbarcaderoMasterSecret_example"; // String | 
try {
    apiInstance.deleteInstallation(id, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
} catch (ApiException e) {
    System.err.println("Exception when calling InstallationsApi#deleteInstallation");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A Installation ID |
 **xEmbarcaderoApplicationId** | **String**|  | [optional]
 **xEmbarcaderoAppSecret** | **String**|  | [optional]
 **xEmbarcaderoMasterSecret** | **String**|  | [optional]

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

<a name="getChannels"></a>
# **getChannels**
> List&lt;ChannelName&gt; getChannels(xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Get Installation Channels

 |       Used to retrieve the available channels to which the device has subscribed. **id** is the unique EMS Installation identifier (InstallationID) in the EMS database.

### Example
```java
// Import classes:
//import io.swagger.client.api.InstallationsApi;

InstallationsApi apiInstance = new InstallationsApi();
String xEmbarcaderoApplicationId = "xEmbarcaderoApplicationId_example"; // String | 
String xEmbarcaderoAppSecret = "xEmbarcaderoAppSecret_example"; // String | 
String xEmbarcaderoMasterSecret = "xEmbarcaderoMasterSecret_example"; // String | 
try {
    List<ChannelName> result = apiInstance.getChannels(xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling InstallationsApi#getChannels");
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

[**List&lt;ChannelName&gt;**](ChannelName.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getInstallation"></a>
# **getInstallation**
> InstallationObject getInstallation(id, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Get Installation

 |      Used to retrieve all data from a specific &#x60;Installation&#x60; (registered device). **id** is the unique EMS Installation identifier (InstallationID) in the EMS database.

### Example
```java
// Import classes:
//import io.swagger.client.api.InstallationsApi;

InstallationsApi apiInstance = new InstallationsApi();
String id = "id_example"; // String | A Installation ID
String xEmbarcaderoApplicationId = "xEmbarcaderoApplicationId_example"; // String | 
String xEmbarcaderoAppSecret = "xEmbarcaderoAppSecret_example"; // String | 
String xEmbarcaderoMasterSecret = "xEmbarcaderoMasterSecret_example"; // String | 
try {
    InstallationObject result = apiInstance.getInstallation(id, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling InstallationsApi#getInstallation");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A Installation ID |
 **xEmbarcaderoApplicationId** | **String**|  | [optional]
 **xEmbarcaderoAppSecret** | **String**|  | [optional]
 **xEmbarcaderoMasterSecret** | **String**|  | [optional]

### Return type

[**InstallationObject**](InstallationObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getInstallationFields"></a>
# **getInstallationFields**
> List&lt;FieldInstallationObject&gt; getInstallationFields(xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Get Fields

 |      Used to retrieve all the &#x60;field names&#x60; of the EMS Installation (including the custom fields).

### Example
```java
// Import classes:
//import io.swagger.client.api.InstallationsApi;

InstallationsApi apiInstance = new InstallationsApi();
String xEmbarcaderoApplicationId = "xEmbarcaderoApplicationId_example"; // String | 
String xEmbarcaderoAppSecret = "xEmbarcaderoAppSecret_example"; // String | 
String xEmbarcaderoMasterSecret = "xEmbarcaderoMasterSecret_example"; // String | 
try {
    List<FieldInstallationObject> result = apiInstance.getInstallationFields(xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling InstallationsApi#getInstallationFields");
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

[**List&lt;FieldInstallationObject&gt;**](FieldInstallationObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getInstallations"></a>
# **getInstallations**
> List&lt;InstallationObject&gt; getInstallations(xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret, skip, limit, order, where)

Get Installations

 |      Used to retrieve all data from &#x60;Installation&#x60;.      Optional query param of **skip, limit, order, where** determines       size of returned array, filtered and order by.

### Example
```java
// Import classes:
//import io.swagger.client.api.InstallationsApi;

InstallationsApi apiInstance = new InstallationsApi();
String xEmbarcaderoApplicationId = "xEmbarcaderoApplicationId_example"; // String | 
String xEmbarcaderoAppSecret = "xEmbarcaderoAppSecret_example"; // String | 
String xEmbarcaderoMasterSecret = "xEmbarcaderoMasterSecret_example"; // String | 
BigDecimal skip = new BigDecimal(); // BigDecimal | users skipped
BigDecimal limit = new BigDecimal(); // BigDecimal | maximum number of results to return
BigDecimal order = new BigDecimal(); // BigDecimal | order ascending or descending (asc, desc)
String where = "where_example"; // String | filter operators (lt, lte, gt, gte, eq, neq, like, nlike)
try {
    List<InstallationObject> result = apiInstance.getInstallations(xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret, skip, limit, order, where);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling InstallationsApi#getInstallations");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xEmbarcaderoApplicationId** | **String**|  | [optional]
 **xEmbarcaderoAppSecret** | **String**|  | [optional]
 **xEmbarcaderoMasterSecret** | **String**|  | [optional]
 **skip** | **BigDecimal**| users skipped | [optional]
 **limit** | **BigDecimal**| maximum number of results to return | [optional]
 **order** | **BigDecimal**| order ascending or descending (asc, desc) | [optional]
 **where** | **String**| filter operators (lt, lte, gt, gte, eq, neq, like, nlike) | [optional]

### Return type

[**List&lt;InstallationObject&gt;**](InstallationObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="updateInstallation"></a>
# **updateInstallation**
> UpdatedInstallationObject updateInstallation(id, body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)

Update Installation

 |      Used to update an &#x60;Installation&#x60;. **id** is the unique EMS Installation identifier (IID) in the EMS database.

### Example
```java
// Import classes:
//import io.swagger.client.api.InstallationsApi;

InstallationsApi apiInstance = new InstallationsApi();
String id = "id_example"; // String | A Installation ID
UpdateInstallationObject body = new UpdateInstallationObject(); // UpdateInstallationObject | Installation fields to update
String xEmbarcaderoApplicationId = "xEmbarcaderoApplicationId_example"; // String | 
String xEmbarcaderoAppSecret = "xEmbarcaderoAppSecret_example"; // String | 
String xEmbarcaderoMasterSecret = "xEmbarcaderoMasterSecret_example"; // String | 
try {
    UpdatedInstallationObject result = apiInstance.updateInstallation(id, body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling InstallationsApi#updateInstallation");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A Installation ID |
 **body** | [**UpdateInstallationObject**](UpdateInstallationObject.md)| Installation fields to update |
 **xEmbarcaderoApplicationId** | **String**|  | [optional]
 **xEmbarcaderoAppSecret** | **String**|  | [optional]
 **xEmbarcaderoMasterSecret** | **String**|  | [optional]

### Return type

[**UpdatedInstallationObject**](UpdatedInstallationObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

