# SWGEdgeModulesApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getModule**](SWGEdgeModulesApi.md#getmodule) | **GET** /edgemodules/{mname} | Get Module
[**getModuleResource**](SWGEdgeModulesApi.md#getmoduleresource) | **GET** /edgemodules/{mname}/resources/{name} | Get EdgeModule Resource
[**getModuleResources**](SWGEdgeModulesApi.md#getmoduleresources) | **GET** /edgemodules/{mname}/resources | Get EdgeModule Resources
[**getModules**](SWGEdgeModulesApi.md#getmodules) | **GET** /edgemodules | Get Module
[**getModulesFields**](SWGEdgeModulesApi.md#getmodulesfields) | **GET** /edgemodules/fields | Get Fields
[**getResources**](SWGEdgeModulesApi.md#getresources) | **GET** /edgemodules/resources | Get EdgeModules Resources
[**getResourcesFields**](SWGEdgeModulesApi.md#getresourcesfields) | **GET** /edgemodules/resources/fields | Get Resource Fields
[**registerModule**](SWGEdgeModulesApi.md#registermodule) | **POST** /edgemodules | Add Module
[**registerModuleResource**](SWGEdgeModulesApi.md#registermoduleresource) | **POST** /edgemodules/{mname}/resources | Add Module Resource
[**unregisterModule**](SWGEdgeModulesApi.md#unregistermodule) | **DELETE** /edgemodules/{mname} | Delete Module
[**unregisterModuleResource**](SWGEdgeModulesApi.md#unregistermoduleresource) | **DELETE** /edgemodules/{mname}/resources/{name} | Delete Module Resource
[**updateModule**](SWGEdgeModulesApi.md#updatemodule) | **PUT** /edgemodules/{mname} | Update Module
[**updateModuleResource**](SWGEdgeModulesApi.md#updatemoduleresource) | **PUT** /edgemodules/{mname}/resources/{name} | Update Module Resource


# **getModule**
```objc
-(NSURLSessionTask*) getModuleWithMname: (NSString*) mname
    xEmbarcaderoApplicationId: (NSString*) xEmbarcaderoApplicationId
    xEmbarcaderoAppSecret: (NSString*) xEmbarcaderoAppSecret
    xEmbarcaderoMasterSecret: (NSString*) xEmbarcaderoMasterSecret
        completionHandler: (void (^)(SWGEdgeModuleObject* output, NSError* error)) handler;
```

Get Module

 |      Used to retrieve all data from `EdgeModule`.      Optional query param of **skip, limit, order, where** determines       size of returned array, filtered and order by.

### Example 
```objc

NSString* mname = @"mname_example"; // Is the unique EMS EdgeModule identifier
NSString* xEmbarcaderoApplicationId = @"xEmbarcaderoApplicationId_example"; //  (optional)
NSString* xEmbarcaderoAppSecret = @"xEmbarcaderoAppSecret_example"; //  (optional)
NSString* xEmbarcaderoMasterSecret = @"xEmbarcaderoMasterSecret_example"; //  (optional)

SWGEdgeModulesApi*apiInstance = [[SWGEdgeModulesApi alloc] init];

// Get Module
[apiInstance getModuleWithMname:mname
              xEmbarcaderoApplicationId:xEmbarcaderoApplicationId
              xEmbarcaderoAppSecret:xEmbarcaderoAppSecret
              xEmbarcaderoMasterSecret:xEmbarcaderoMasterSecret
          completionHandler: ^(SWGEdgeModuleObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGEdgeModulesApi->getModule: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **NSString***| Is the unique EMS EdgeModule identifier | 
 **xEmbarcaderoApplicationId** | **NSString***|  | [optional] 
 **xEmbarcaderoAppSecret** | **NSString***|  | [optional] 
 **xEmbarcaderoMasterSecret** | **NSString***|  | [optional] 

### Return type

[**SWGEdgeModuleObject***](SWGEdgeModuleObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getModuleResource**
```objc
-(NSURLSessionTask*) getModuleResourceWithMname: (NSString*) mname
    name: (NSString*) name
    xEmbarcaderoApplicationId: (NSString*) xEmbarcaderoApplicationId
    xEmbarcaderoAppSecret: (NSString*) xEmbarcaderoAppSecret
    xEmbarcaderoMasterSecret: (NSString*) xEmbarcaderoMasterSecret
        completionHandler: (void (^)(SWGEdgeModuleResourceObject* output, NSError* error)) handler;
```

Get EdgeModule Resource

 |      Used to retrieve all data from a resource of an EdgeModule. **mname** is the unique EMS EdgeModule identifier in the EMS database. **resourcename** is the name of the resource.

### Example 
```objc

NSString* mname = @"mname_example"; // Is the unique EMS EdgeModule identifier
NSString* name = @"name_example"; // Is the unique EMS EdgeModule Resource name
NSString* xEmbarcaderoApplicationId = @"xEmbarcaderoApplicationId_example"; //  (optional)
NSString* xEmbarcaderoAppSecret = @"xEmbarcaderoAppSecret_example"; //  (optional)
NSString* xEmbarcaderoMasterSecret = @"xEmbarcaderoMasterSecret_example"; //  (optional)

SWGEdgeModulesApi*apiInstance = [[SWGEdgeModulesApi alloc] init];

// Get EdgeModule Resource
[apiInstance getModuleResourceWithMname:mname
              name:name
              xEmbarcaderoApplicationId:xEmbarcaderoApplicationId
              xEmbarcaderoAppSecret:xEmbarcaderoAppSecret
              xEmbarcaderoMasterSecret:xEmbarcaderoMasterSecret
          completionHandler: ^(SWGEdgeModuleResourceObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGEdgeModulesApi->getModuleResource: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **NSString***| Is the unique EMS EdgeModule identifier | 
 **name** | **NSString***| Is the unique EMS EdgeModule Resource name | 
 **xEmbarcaderoApplicationId** | **NSString***|  | [optional] 
 **xEmbarcaderoAppSecret** | **NSString***|  | [optional] 
 **xEmbarcaderoMasterSecret** | **NSString***|  | [optional] 

### Return type

[**SWGEdgeModuleResourceObject***](SWGEdgeModuleResourceObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getModuleResources**
```objc
-(NSURLSessionTask*) getModuleResourcesWithMname: (NSString*) mname
    xEmbarcaderoApplicationId: (NSString*) xEmbarcaderoApplicationId
    xEmbarcaderoAppSecret: (NSString*) xEmbarcaderoAppSecret
    xEmbarcaderoMasterSecret: (NSString*) xEmbarcaderoMasterSecret
        completionHandler: (void (^)(NSArray<SWGEdgeModuleResourceObject>* output, NSError* error)) handler;
```

Get EdgeModule Resources

 |      Used to retrieve all data from the resources of an EdgeModule.

### Example 
```objc

NSString* mname = @"mname_example"; // Is the unique EMS EdgeModule identifier
NSString* xEmbarcaderoApplicationId = @"xEmbarcaderoApplicationId_example"; //  (optional)
NSString* xEmbarcaderoAppSecret = @"xEmbarcaderoAppSecret_example"; //  (optional)
NSString* xEmbarcaderoMasterSecret = @"xEmbarcaderoMasterSecret_example"; //  (optional)

SWGEdgeModulesApi*apiInstance = [[SWGEdgeModulesApi alloc] init];

// Get EdgeModule Resources
[apiInstance getModuleResourcesWithMname:mname
              xEmbarcaderoApplicationId:xEmbarcaderoApplicationId
              xEmbarcaderoAppSecret:xEmbarcaderoAppSecret
              xEmbarcaderoMasterSecret:xEmbarcaderoMasterSecret
          completionHandler: ^(NSArray<SWGEdgeModuleResourceObject>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGEdgeModulesApi->getModuleResources: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **NSString***| Is the unique EMS EdgeModule identifier | 
 **xEmbarcaderoApplicationId** | **NSString***|  | [optional] 
 **xEmbarcaderoAppSecret** | **NSString***|  | [optional] 
 **xEmbarcaderoMasterSecret** | **NSString***|  | [optional] 

### Return type

[**NSArray<SWGEdgeModuleResourceObject>***](SWGEdgeModuleResourceObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getModules**
```objc
-(NSURLSessionTask*) getModulesWithXEmbarcaderoApplicationId: (NSString*) xEmbarcaderoApplicationId
    xEmbarcaderoAppSecret: (NSString*) xEmbarcaderoAppSecret
    xEmbarcaderoMasterSecret: (NSString*) xEmbarcaderoMasterSecret
        completionHandler: (void (^)(NSArray<SWGEdgeModuleObject>* output, NSError* error)) handler;
```

Get Module

 |      Used to retrieve all data from `EdgeModule`.      Optional query param of **skip, limit, order, where** determines       size of returned array, filtered and order by.

### Example 
```objc

NSString* xEmbarcaderoApplicationId = @"xEmbarcaderoApplicationId_example"; //  (optional)
NSString* xEmbarcaderoAppSecret = @"xEmbarcaderoAppSecret_example"; //  (optional)
NSString* xEmbarcaderoMasterSecret = @"xEmbarcaderoMasterSecret_example"; //  (optional)

SWGEdgeModulesApi*apiInstance = [[SWGEdgeModulesApi alloc] init];

// Get Module
[apiInstance getModulesWithXEmbarcaderoApplicationId:xEmbarcaderoApplicationId
              xEmbarcaderoAppSecret:xEmbarcaderoAppSecret
              xEmbarcaderoMasterSecret:xEmbarcaderoMasterSecret
          completionHandler: ^(NSArray<SWGEdgeModuleObject>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGEdgeModulesApi->getModules: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xEmbarcaderoApplicationId** | **NSString***|  | [optional] 
 **xEmbarcaderoAppSecret** | **NSString***|  | [optional] 
 **xEmbarcaderoMasterSecret** | **NSString***|  | [optional] 

### Return type

[**NSArray<SWGEdgeModuleObject>***](SWGEdgeModuleObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getModulesFields**
```objc
-(NSURLSessionTask*) getModulesFieldsWithXEmbarcaderoApplicationId: (NSString*) xEmbarcaderoApplicationId
    xEmbarcaderoAppSecret: (NSString*) xEmbarcaderoAppSecret
    xEmbarcaderoMasterSecret: (NSString*) xEmbarcaderoMasterSecret
        completionHandler: (void (^)(SWGFieldsEdgeModuleObject* output, NSError* error)) handler;
```

Get Fields

 |      Used to retrieve all the `field names` of the EMS EdgeModule (including the custom fields).

### Example 
```objc

NSString* xEmbarcaderoApplicationId = @"xEmbarcaderoApplicationId_example"; //  (optional)
NSString* xEmbarcaderoAppSecret = @"xEmbarcaderoAppSecret_example"; //  (optional)
NSString* xEmbarcaderoMasterSecret = @"xEmbarcaderoMasterSecret_example"; //  (optional)

SWGEdgeModulesApi*apiInstance = [[SWGEdgeModulesApi alloc] init];

// Get Fields
[apiInstance getModulesFieldsWithXEmbarcaderoApplicationId:xEmbarcaderoApplicationId
              xEmbarcaderoAppSecret:xEmbarcaderoAppSecret
              xEmbarcaderoMasterSecret:xEmbarcaderoMasterSecret
          completionHandler: ^(SWGFieldsEdgeModuleObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGEdgeModulesApi->getModulesFields: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xEmbarcaderoApplicationId** | **NSString***|  | [optional] 
 **xEmbarcaderoAppSecret** | **NSString***|  | [optional] 
 **xEmbarcaderoMasterSecret** | **NSString***|  | [optional] 

### Return type

[**SWGFieldsEdgeModuleObject***](SWGFieldsEdgeModuleObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getResources**
```objc
-(NSURLSessionTask*) getResourcesWithXEmbarcaderoApplicationId: (NSString*) xEmbarcaderoApplicationId
    xEmbarcaderoAppSecret: (NSString*) xEmbarcaderoAppSecret
    xEmbarcaderoMasterSecret: (NSString*) xEmbarcaderoMasterSecret
        completionHandler: (void (^)(NSArray<SWGEdgeModuleResourceObject>* output, NSError* error)) handler;
```

Get EdgeModules Resources

 |      Used to retrieve all data from the resources of all EdgeModules.

### Example 
```objc

NSString* xEmbarcaderoApplicationId = @"xEmbarcaderoApplicationId_example"; //  (optional)
NSString* xEmbarcaderoAppSecret = @"xEmbarcaderoAppSecret_example"; //  (optional)
NSString* xEmbarcaderoMasterSecret = @"xEmbarcaderoMasterSecret_example"; //  (optional)

SWGEdgeModulesApi*apiInstance = [[SWGEdgeModulesApi alloc] init];

// Get EdgeModules Resources
[apiInstance getResourcesWithXEmbarcaderoApplicationId:xEmbarcaderoApplicationId
              xEmbarcaderoAppSecret:xEmbarcaderoAppSecret
              xEmbarcaderoMasterSecret:xEmbarcaderoMasterSecret
          completionHandler: ^(NSArray<SWGEdgeModuleResourceObject>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGEdgeModulesApi->getResources: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xEmbarcaderoApplicationId** | **NSString***|  | [optional] 
 **xEmbarcaderoAppSecret** | **NSString***|  | [optional] 
 **xEmbarcaderoMasterSecret** | **NSString***|  | [optional] 

### Return type

[**NSArray<SWGEdgeModuleResourceObject>***](SWGEdgeModuleResourceObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getResourcesFields**
```objc
-(NSURLSessionTask*) getResourcesFieldsWithXEmbarcaderoApplicationId: (NSString*) xEmbarcaderoApplicationId
    xEmbarcaderoAppSecret: (NSString*) xEmbarcaderoAppSecret
    xEmbarcaderoMasterSecret: (NSString*) xEmbarcaderoMasterSecret
        completionHandler: (void (^)(SWGFieldsEdgeModuleObject* output, NSError* error)) handler;
```

Get Resource Fields

 |      Used to retrieve the `field names` of all the resources of the EMS EdgeModule (including the custom fields).

### Example 
```objc

NSString* xEmbarcaderoApplicationId = @"xEmbarcaderoApplicationId_example"; //  (optional)
NSString* xEmbarcaderoAppSecret = @"xEmbarcaderoAppSecret_example"; //  (optional)
NSString* xEmbarcaderoMasterSecret = @"xEmbarcaderoMasterSecret_example"; //  (optional)

SWGEdgeModulesApi*apiInstance = [[SWGEdgeModulesApi alloc] init];

// Get Resource Fields
[apiInstance getResourcesFieldsWithXEmbarcaderoApplicationId:xEmbarcaderoApplicationId
              xEmbarcaderoAppSecret:xEmbarcaderoAppSecret
              xEmbarcaderoMasterSecret:xEmbarcaderoMasterSecret
          completionHandler: ^(SWGFieldsEdgeModuleObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGEdgeModulesApi->getResourcesFields: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xEmbarcaderoApplicationId** | **NSString***|  | [optional] 
 **xEmbarcaderoAppSecret** | **NSString***|  | [optional] 
 **xEmbarcaderoMasterSecret** | **NSString***|  | [optional] 

### Return type

[**SWGFieldsEdgeModuleObject***](SWGFieldsEdgeModuleObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **registerModule**
```objc
-(NSURLSessionTask*) registerModuleWithBody: (SWGEdgeModuleAddObject*) body
    xEmbarcaderoApplicationId: (NSString*) xEmbarcaderoApplicationId
    xEmbarcaderoAppSecret: (NSString*) xEmbarcaderoAppSecret
    xEmbarcaderoMasterSecret: (NSString*) xEmbarcaderoMasterSecret
        completionHandler: (void (^)(SWGEdgeModuleAddedObject* output, NSError* error)) handler;
```

Add Module

 |      Used to add a new `EdgeModule` object to the EMS database.

### Example 
```objc

SWGEdgeModuleAddObject* body = [[SWGEdgeModuleAddObject alloc] init]; // EdgeModule object to add. protocolprops example string {\\\"port\\\":8082,\\\"host\\\":\\\"10.150.40.52\\\"}
NSString* xEmbarcaderoApplicationId = @"xEmbarcaderoApplicationId_example"; //  (optional)
NSString* xEmbarcaderoAppSecret = @"xEmbarcaderoAppSecret_example"; //  (optional)
NSString* xEmbarcaderoMasterSecret = @"xEmbarcaderoMasterSecret_example"; //  (optional)

SWGEdgeModulesApi*apiInstance = [[SWGEdgeModulesApi alloc] init];

// Add Module
[apiInstance registerModuleWithBody:body
              xEmbarcaderoApplicationId:xEmbarcaderoApplicationId
              xEmbarcaderoAppSecret:xEmbarcaderoAppSecret
              xEmbarcaderoMasterSecret:xEmbarcaderoMasterSecret
          completionHandler: ^(SWGEdgeModuleAddedObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGEdgeModulesApi->registerModule: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SWGEdgeModuleAddObject***](SWGEdgeModuleAddObject.md)| EdgeModule object to add. protocolprops example string {\\\&quot;port\\\&quot;:8082,\\\&quot;host\\\&quot;:\\\&quot;10.150.40.52\\\&quot;} | 
 **xEmbarcaderoApplicationId** | **NSString***|  | [optional] 
 **xEmbarcaderoAppSecret** | **NSString***|  | [optional] 
 **xEmbarcaderoMasterSecret** | **NSString***|  | [optional] 

### Return type

[**SWGEdgeModuleAddedObject***](SWGEdgeModuleAddedObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **registerModuleResource**
```objc
-(NSURLSessionTask*) registerModuleResourceWithMname: (NSString*) mname
    body: (SWGEdgeModuleResourceAddObject*) body
    xEmbarcaderoApplicationId: (NSString*) xEmbarcaderoApplicationId
    xEmbarcaderoAppSecret: (NSString*) xEmbarcaderoAppSecret
    xEmbarcaderoMasterSecret: (NSString*) xEmbarcaderoMasterSecret
        completionHandler: (void (^)(SWGEdgeModuleResourceAddedObject* output, NSError* error)) handler;
```

Add Module Resource

 |      Used to register a new resource from an EMS EdgeModule. **mname** is the unique EMS EdgeModule identifier in the EMS database.

### Example 
```objc

NSString* mname = @"mname_example"; // Is the unique EMS EdgeModule identifier
SWGEdgeModuleResourceAddObject* body = [[SWGEdgeModuleResourceAddObject alloc] init]; // EdgModule Resource add object. protocolprops string example {\\\"port\\\":8082,\\\"host\\\":\\\"10.150.40.52\\\"}
NSString* xEmbarcaderoApplicationId = @"xEmbarcaderoApplicationId_example"; //  (optional)
NSString* xEmbarcaderoAppSecret = @"xEmbarcaderoAppSecret_example"; //  (optional)
NSString* xEmbarcaderoMasterSecret = @"xEmbarcaderoMasterSecret_example"; //  (optional)

SWGEdgeModulesApi*apiInstance = [[SWGEdgeModulesApi alloc] init];

// Add Module Resource
[apiInstance registerModuleResourceWithMname:mname
              body:body
              xEmbarcaderoApplicationId:xEmbarcaderoApplicationId
              xEmbarcaderoAppSecret:xEmbarcaderoAppSecret
              xEmbarcaderoMasterSecret:xEmbarcaderoMasterSecret
          completionHandler: ^(SWGEdgeModuleResourceAddedObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGEdgeModulesApi->registerModuleResource: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **NSString***| Is the unique EMS EdgeModule identifier | 
 **body** | [**SWGEdgeModuleResourceAddObject***](SWGEdgeModuleResourceAddObject.md)| EdgModule Resource add object. protocolprops string example {\\\&quot;port\\\&quot;:8082,\\\&quot;host\\\&quot;:\\\&quot;10.150.40.52\\\&quot;} | 
 **xEmbarcaderoApplicationId** | **NSString***|  | [optional] 
 **xEmbarcaderoAppSecret** | **NSString***|  | [optional] 
 **xEmbarcaderoMasterSecret** | **NSString***|  | [optional] 

### Return type

[**SWGEdgeModuleResourceAddedObject***](SWGEdgeModuleResourceAddedObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **unregisterModule**
```objc
-(NSURLSessionTask*) unregisterModuleWithMname: (NSString*) mname
    xEmbarcaderoApplicationId: (NSString*) xEmbarcaderoApplicationId
    xEmbarcaderoAppSecret: (NSString*) xEmbarcaderoAppSecret
    xEmbarcaderoMasterSecret: (NSString*) xEmbarcaderoMasterSecret
        completionHandler: (void (^)(NSError* error)) handler;
```

Delete Module

 |      Used to delete an `EdgeModule Resource`. **mname** is the unique EMS EdgeModule identifier (MID) in the EMS database. **resourcename** is the name of the resource.

### Example 
```objc

NSString* mname = @"mname_example"; // Is the unique EMS EdgeModule identifier
NSString* xEmbarcaderoApplicationId = @"xEmbarcaderoApplicationId_example"; //  (optional)
NSString* xEmbarcaderoAppSecret = @"xEmbarcaderoAppSecret_example"; //  (optional)
NSString* xEmbarcaderoMasterSecret = @"xEmbarcaderoMasterSecret_example"; //  (optional)

SWGEdgeModulesApi*apiInstance = [[SWGEdgeModulesApi alloc] init];

// Delete Module
[apiInstance unregisterModuleWithMname:mname
              xEmbarcaderoApplicationId:xEmbarcaderoApplicationId
              xEmbarcaderoAppSecret:xEmbarcaderoAppSecret
              xEmbarcaderoMasterSecret:xEmbarcaderoMasterSecret
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling SWGEdgeModulesApi->unregisterModule: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **NSString***| Is the unique EMS EdgeModule identifier | 
 **xEmbarcaderoApplicationId** | **NSString***|  | [optional] 
 **xEmbarcaderoAppSecret** | **NSString***|  | [optional] 
 **xEmbarcaderoMasterSecret** | **NSString***|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **unregisterModuleResource**
```objc
-(NSURLSessionTask*) unregisterModuleResourceWithMname: (NSString*) mname
    name: (NSString*) name
    xEmbarcaderoApplicationId: (NSString*) xEmbarcaderoApplicationId
    xEmbarcaderoAppSecret: (NSString*) xEmbarcaderoAppSecret
    xEmbarcaderoMasterSecret: (NSString*) xEmbarcaderoMasterSecret
        completionHandler: (void (^)(NSError* error)) handler;
```

Delete Module Resource

 |      Used to delete an `EdgeModule Resource`. **mname** is the unique EMS EdgeModule identifier (MID) in the EMS database. **resourcename** is the name of the resource.

### Example 
```objc

NSString* mname = @"mname_example"; // Is the unique EMS EdgeModule identifier
NSString* name = @"name_example"; // Is the unique EMS EdgeModule Resource name
NSString* xEmbarcaderoApplicationId = @"xEmbarcaderoApplicationId_example"; //  (optional)
NSString* xEmbarcaderoAppSecret = @"xEmbarcaderoAppSecret_example"; //  (optional)
NSString* xEmbarcaderoMasterSecret = @"xEmbarcaderoMasterSecret_example"; //  (optional)

SWGEdgeModulesApi*apiInstance = [[SWGEdgeModulesApi alloc] init];

// Delete Module Resource
[apiInstance unregisterModuleResourceWithMname:mname
              name:name
              xEmbarcaderoApplicationId:xEmbarcaderoApplicationId
              xEmbarcaderoAppSecret:xEmbarcaderoAppSecret
              xEmbarcaderoMasterSecret:xEmbarcaderoMasterSecret
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling SWGEdgeModulesApi->unregisterModuleResource: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **NSString***| Is the unique EMS EdgeModule identifier | 
 **name** | **NSString***| Is the unique EMS EdgeModule Resource name | 
 **xEmbarcaderoApplicationId** | **NSString***|  | [optional] 
 **xEmbarcaderoAppSecret** | **NSString***|  | [optional] 
 **xEmbarcaderoMasterSecret** | **NSString***|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateModule**
```objc
-(NSURLSessionTask*) updateModuleWithMname: (NSString*) mname
    body: (SWGEdgeModuleUpdateObject*) body
    xEmbarcaderoApplicationId: (NSString*) xEmbarcaderoApplicationId
    xEmbarcaderoAppSecret: (NSString*) xEmbarcaderoAppSecret
    xEmbarcaderoMasterSecret: (NSString*) xEmbarcaderoMasterSecret
        completionHandler: (void (^)(SWGEdgeModuleUpdatedObject* output, NSError* error)) handler;
```

Update Module

 |      Used to update an `EdgeModule`. **mname** is the unique EMS EdgeModule identifier (MID) in the EMS database.

### Example 
```objc

NSString* mname = @"mname_example"; // Is the unique EMS EdgeModule identifier
SWGEdgeModuleUpdateObject* body = [[SWGEdgeModuleUpdateObject alloc] init]; // EdgModule Resource add object. protocolprops string example {\\\"port\\\":8082,\\\"host\\\":\\\"10.150.40.52\\\"}
NSString* xEmbarcaderoApplicationId = @"xEmbarcaderoApplicationId_example"; //  (optional)
NSString* xEmbarcaderoAppSecret = @"xEmbarcaderoAppSecret_example"; //  (optional)
NSString* xEmbarcaderoMasterSecret = @"xEmbarcaderoMasterSecret_example"; //  (optional)

SWGEdgeModulesApi*apiInstance = [[SWGEdgeModulesApi alloc] init];

// Update Module
[apiInstance updateModuleWithMname:mname
              body:body
              xEmbarcaderoApplicationId:xEmbarcaderoApplicationId
              xEmbarcaderoAppSecret:xEmbarcaderoAppSecret
              xEmbarcaderoMasterSecret:xEmbarcaderoMasterSecret
          completionHandler: ^(SWGEdgeModuleUpdatedObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGEdgeModulesApi->updateModule: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **NSString***| Is the unique EMS EdgeModule identifier | 
 **body** | [**SWGEdgeModuleUpdateObject***](SWGEdgeModuleUpdateObject.md)| EdgModule Resource add object. protocolprops string example {\\\&quot;port\\\&quot;:8082,\\\&quot;host\\\&quot;:\\\&quot;10.150.40.52\\\&quot;} | 
 **xEmbarcaderoApplicationId** | **NSString***|  | [optional] 
 **xEmbarcaderoAppSecret** | **NSString***|  | [optional] 
 **xEmbarcaderoMasterSecret** | **NSString***|  | [optional] 

### Return type

[**SWGEdgeModuleUpdatedObject***](SWGEdgeModuleUpdatedObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateModuleResource**
```objc
-(NSURLSessionTask*) updateModuleResourceWithMname: (NSString*) mname
    name: (NSString*) name
    body: (SWGEdgeModuleResourceUpdateObject*) body
    xEmbarcaderoApplicationId: (NSString*) xEmbarcaderoApplicationId
    xEmbarcaderoAppSecret: (NSString*) xEmbarcaderoAppSecret
    xEmbarcaderoMasterSecret: (NSString*) xEmbarcaderoMasterSecret
        completionHandler: (void (^)(SWGEdgeModuleResourceUpdatedObject* output, NSError* error)) handler;
```

Update Module Resource

 |      Used to update an `EdgeModule`. **mname** is the unique EMS EdgeModule identifier (MID) in the EMS database.

### Example 
```objc

NSString* mname = @"mname_example"; // Is the unique EMS EdgeModule identifier
NSString* name = @"name_example"; // Is the unique EMS EdgeModule Resource name
SWGEdgeModuleResourceUpdateObject* body = [[SWGEdgeModuleResourceUpdateObject alloc] init]; // EdgModule Resource add object. protocolprops string example {\\\"port\\\":8082,\\\"host\\\":\\\"10.150.40.52\\\"}
NSString* xEmbarcaderoApplicationId = @"xEmbarcaderoApplicationId_example"; //  (optional)
NSString* xEmbarcaderoAppSecret = @"xEmbarcaderoAppSecret_example"; //  (optional)
NSString* xEmbarcaderoMasterSecret = @"xEmbarcaderoMasterSecret_example"; //  (optional)

SWGEdgeModulesApi*apiInstance = [[SWGEdgeModulesApi alloc] init];

// Update Module Resource
[apiInstance updateModuleResourceWithMname:mname
              name:name
              body:body
              xEmbarcaderoApplicationId:xEmbarcaderoApplicationId
              xEmbarcaderoAppSecret:xEmbarcaderoAppSecret
              xEmbarcaderoMasterSecret:xEmbarcaderoMasterSecret
          completionHandler: ^(SWGEdgeModuleResourceUpdatedObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGEdgeModulesApi->updateModuleResource: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **NSString***| Is the unique EMS EdgeModule identifier | 
 **name** | **NSString***| Is the unique EMS EdgeModule Resource name | 
 **body** | [**SWGEdgeModuleResourceUpdateObject***](SWGEdgeModuleResourceUpdateObject.md)| EdgModule Resource add object. protocolprops string example {\\\&quot;port\\\&quot;:8082,\\\&quot;host\\\&quot;:\\\&quot;10.150.40.52\\\&quot;} | 
 **xEmbarcaderoApplicationId** | **NSString***|  | [optional] 
 **xEmbarcaderoAppSecret** | **NSString***|  | [optional] 
 **xEmbarcaderoMasterSecret** | **NSString***|  | [optional] 

### Return type

[**SWGEdgeModuleResourceUpdatedObject***](SWGEdgeModuleResourceUpdatedObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

