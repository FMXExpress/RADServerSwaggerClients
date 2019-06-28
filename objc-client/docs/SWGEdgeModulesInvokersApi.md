# SWGEdgeModulesInvokersApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteResourceEndpoint**](SWGEdgeModulesInvokersApi.md#deleteresourceendpoint) | **DELETE** /edgemodules/{mname}/{rname} | Invoke Resource Delete Method
[**deleteResourceEndpointItem**](SWGEdgeModulesInvokersApi.md#deleteresourceendpointitem) | **DELETE** /edgemodules/{mname}/{rname}/{wildcard} | Invoke Resource/_* Delete Method
[**getResourceEndpoint**](SWGEdgeModulesInvokersApi.md#getresourceendpoint) | **GET** /edgemodules/{mname}/{rname} | Invoke Resource Get Method
[**getResourceEndpointItem**](SWGEdgeModulesInvokersApi.md#getresourceendpointitem) | **GET** /edgemodules/{mname}/{rname}/{wildcard} | Invoke Resource/_* Get Method
[**patchResourceEndpoint**](SWGEdgeModulesInvokersApi.md#patchresourceendpoint) | **PATCH** /edgemodules/{mname}/{rname} | Invoke Resource Patch Method
[**patchResourceEndpointItem**](SWGEdgeModulesInvokersApi.md#patchresourceendpointitem) | **PATCH** /edgemodules/{mname}/{rname}/{wildcard} | Invoke Resource/_* Patch Method
[**postResourceEndpoint**](SWGEdgeModulesInvokersApi.md#postresourceendpoint) | **POST** /edgemodules/{mname}/{rname} | Invoke Resource Post Method
[**postResourceEndpointItem**](SWGEdgeModulesInvokersApi.md#postresourceendpointitem) | **POST** /edgemodules/{mname}/{rname}/{wildcard} | Invoke Resource/_* Post Method
[**putResourceEndpoint**](SWGEdgeModulesInvokersApi.md#putresourceendpoint) | **PUT** /edgemodules/{mname}/{rname} | Invoke Resource Put Method
[**putResourceEndpointItem**](SWGEdgeModulesInvokersApi.md#putresourceendpointitem) | **PUT** /edgemodules/{mname}/{rname}/{wildcard} | Invoke Resource/_* Put Method


# **deleteResourceEndpoint**
```objc
-(NSURLSessionTask*) deleteResourceEndpointWithMname: (NSString*) mname
    rname: (NSString*) rname
    xEmbarcaderoApplicationId: (NSString*) xEmbarcaderoApplicationId
    xEmbarcaderoAppSecret: (NSString*) xEmbarcaderoAppSecret
    xEmbarcaderoMasterSecret: (NSString*) xEmbarcaderoMasterSecret
        completionHandler: (void (^)(NSError* error)) handler;
```

Invoke Resource Delete Method

Used to invoke the DELETE method of the resource from an existing EMS EdgeModule.

### Example 
```objc

NSString* mname = @"mname_example"; // Is the EMS EdgeModule name
NSString* rname = @"rname_example"; // Is the unique EMS EdgeModule Resource name
NSString* xEmbarcaderoApplicationId = @"xEmbarcaderoApplicationId_example"; //  (optional)
NSString* xEmbarcaderoAppSecret = @"xEmbarcaderoAppSecret_example"; //  (optional)
NSString* xEmbarcaderoMasterSecret = @"xEmbarcaderoMasterSecret_example"; //  (optional)

SWGEdgeModulesInvokersApi*apiInstance = [[SWGEdgeModulesInvokersApi alloc] init];

// Invoke Resource Delete Method
[apiInstance deleteResourceEndpointWithMname:mname
              rname:rname
              xEmbarcaderoApplicationId:xEmbarcaderoApplicationId
              xEmbarcaderoAppSecret:xEmbarcaderoAppSecret
              xEmbarcaderoMasterSecret:xEmbarcaderoMasterSecret
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling SWGEdgeModulesInvokersApi->deleteResourceEndpoint: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **NSString***| Is the EMS EdgeModule name | 
 **rname** | **NSString***| Is the unique EMS EdgeModule Resource name | 
 **xEmbarcaderoApplicationId** | **NSString***|  | [optional] 
 **xEmbarcaderoAppSecret** | **NSString***|  | [optional] 
 **xEmbarcaderoMasterSecret** | **NSString***|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteResourceEndpointItem**
```objc
-(NSURLSessionTask*) deleteResourceEndpointItemWithMname: (NSString*) mname
    rname: (NSString*) rname
    wildcard: (NSString*) wildcard
    xEmbarcaderoApplicationId: (NSString*) xEmbarcaderoApplicationId
    xEmbarcaderoAppSecret: (NSString*) xEmbarcaderoAppSecret
    xEmbarcaderoMasterSecret: (NSString*) xEmbarcaderoMasterSecret
        completionHandler: (void (^)(NSError* error)) handler;
```

Invoke Resource/_* Delete Method

Used to invoke the DELETE method of the resource from an existing EMS EdgeModule.

### Example 
```objc

NSString* mname = @"mname_example"; // Is the EMS EdgeModule name
NSString* rname = @"rname_example"; // Is the unique EMS EdgeModule Resource name
NSString* wildcard = @"wildcard_example"; // Is the Wild card part of the URL
NSString* xEmbarcaderoApplicationId = @"xEmbarcaderoApplicationId_example"; //  (optional)
NSString* xEmbarcaderoAppSecret = @"xEmbarcaderoAppSecret_example"; //  (optional)
NSString* xEmbarcaderoMasterSecret = @"xEmbarcaderoMasterSecret_example"; //  (optional)

SWGEdgeModulesInvokersApi*apiInstance = [[SWGEdgeModulesInvokersApi alloc] init];

// Invoke Resource/_* Delete Method
[apiInstance deleteResourceEndpointItemWithMname:mname
              rname:rname
              wildcard:wildcard
              xEmbarcaderoApplicationId:xEmbarcaderoApplicationId
              xEmbarcaderoAppSecret:xEmbarcaderoAppSecret
              xEmbarcaderoMasterSecret:xEmbarcaderoMasterSecret
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling SWGEdgeModulesInvokersApi->deleteResourceEndpointItem: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **NSString***| Is the EMS EdgeModule name | 
 **rname** | **NSString***| Is the unique EMS EdgeModule Resource name | 
 **wildcard** | **NSString***| Is the Wild card part of the URL | 
 **xEmbarcaderoApplicationId** | **NSString***|  | [optional] 
 **xEmbarcaderoAppSecret** | **NSString***|  | [optional] 
 **xEmbarcaderoMasterSecret** | **NSString***|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getResourceEndpoint**
```objc
-(NSURLSessionTask*) getResourceEndpointWithMname: (NSString*) mname
    rname: (NSString*) rname
    xEmbarcaderoApplicationId: (NSString*) xEmbarcaderoApplicationId
    xEmbarcaderoAppSecret: (NSString*) xEmbarcaderoAppSecret
    xEmbarcaderoMasterSecret: (NSString*) xEmbarcaderoMasterSecret
        completionHandler: (void (^)(NSError* error)) handler;
```

Invoke Resource Get Method

Used to invoke the GET method of the resource from an existing EMS EdgeModule.

### Example 
```objc

NSString* mname = @"mname_example"; // Is the EMS EdgeModule name
NSString* rname = @"rname_example"; // Is the unique EMS EdgeModule Resource name
NSString* xEmbarcaderoApplicationId = @"xEmbarcaderoApplicationId_example"; //  (optional)
NSString* xEmbarcaderoAppSecret = @"xEmbarcaderoAppSecret_example"; //  (optional)
NSString* xEmbarcaderoMasterSecret = @"xEmbarcaderoMasterSecret_example"; //  (optional)

SWGEdgeModulesInvokersApi*apiInstance = [[SWGEdgeModulesInvokersApi alloc] init];

// Invoke Resource Get Method
[apiInstance getResourceEndpointWithMname:mname
              rname:rname
              xEmbarcaderoApplicationId:xEmbarcaderoApplicationId
              xEmbarcaderoAppSecret:xEmbarcaderoAppSecret
              xEmbarcaderoMasterSecret:xEmbarcaderoMasterSecret
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling SWGEdgeModulesInvokersApi->getResourceEndpoint: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **NSString***| Is the EMS EdgeModule name | 
 **rname** | **NSString***| Is the unique EMS EdgeModule Resource name | 
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

# **getResourceEndpointItem**
```objc
-(NSURLSessionTask*) getResourceEndpointItemWithMname: (NSString*) mname
    rname: (NSString*) rname
    wildcard: (NSString*) wildcard
    xEmbarcaderoApplicationId: (NSString*) xEmbarcaderoApplicationId
    xEmbarcaderoAppSecret: (NSString*) xEmbarcaderoAppSecret
    xEmbarcaderoMasterSecret: (NSString*) xEmbarcaderoMasterSecret
        completionHandler: (void (^)(NSError* error)) handler;
```

Invoke Resource/_* Get Method

Used to invoke the GET method of the resource from an existing EMS EdgeModule.

### Example 
```objc

NSString* mname = @"mname_example"; // Is the EMS EdgeModule name
NSString* rname = @"rname_example"; // Is the unique EMS EdgeModule Resource name
NSString* wildcard = @"wildcard_example"; // Is the Wild card part of the URL
NSString* xEmbarcaderoApplicationId = @"xEmbarcaderoApplicationId_example"; //  (optional)
NSString* xEmbarcaderoAppSecret = @"xEmbarcaderoAppSecret_example"; //  (optional)
NSString* xEmbarcaderoMasterSecret = @"xEmbarcaderoMasterSecret_example"; //  (optional)

SWGEdgeModulesInvokersApi*apiInstance = [[SWGEdgeModulesInvokersApi alloc] init];

// Invoke Resource/_* Get Method
[apiInstance getResourceEndpointItemWithMname:mname
              rname:rname
              wildcard:wildcard
              xEmbarcaderoApplicationId:xEmbarcaderoApplicationId
              xEmbarcaderoAppSecret:xEmbarcaderoAppSecret
              xEmbarcaderoMasterSecret:xEmbarcaderoMasterSecret
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling SWGEdgeModulesInvokersApi->getResourceEndpointItem: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **NSString***| Is the EMS EdgeModule name | 
 **rname** | **NSString***| Is the unique EMS EdgeModule Resource name | 
 **wildcard** | **NSString***| Is the Wild card part of the URL | 
 **xEmbarcaderoApplicationId** | **NSString***|  | [optional] 
 **xEmbarcaderoAppSecret** | **NSString***|  | [optional] 
 **xEmbarcaderoMasterSecret** | **NSString***|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchResourceEndpoint**
```objc
-(NSURLSessionTask*) patchResourceEndpointWithMname: (NSString*) mname
    rname: (NSString*) rname
    body: (NSObject*) body
    xEmbarcaderoApplicationId: (NSString*) xEmbarcaderoApplicationId
    xEmbarcaderoAppSecret: (NSString*) xEmbarcaderoAppSecret
    xEmbarcaderoMasterSecret: (NSString*) xEmbarcaderoMasterSecret
        completionHandler: (void (^)(NSError* error)) handler;
```

Invoke Resource Patch Method

Used to invoke the PATCH method of the resource from an existing EMS EdgeModule.

### Example 
```objc

NSString* mname = @"mname_example"; // Is the EMS EdgeModule name
NSString* rname = @"rname_example"; // Is the unique EMS EdgeModule Resource name
NSObject* body = NULL; // Body Object
NSString* xEmbarcaderoApplicationId = @"xEmbarcaderoApplicationId_example"; //  (optional)
NSString* xEmbarcaderoAppSecret = @"xEmbarcaderoAppSecret_example"; //  (optional)
NSString* xEmbarcaderoMasterSecret = @"xEmbarcaderoMasterSecret_example"; //  (optional)

SWGEdgeModulesInvokersApi*apiInstance = [[SWGEdgeModulesInvokersApi alloc] init];

// Invoke Resource Patch Method
[apiInstance patchResourceEndpointWithMname:mname
              rname:rname
              body:body
              xEmbarcaderoApplicationId:xEmbarcaderoApplicationId
              xEmbarcaderoAppSecret:xEmbarcaderoAppSecret
              xEmbarcaderoMasterSecret:xEmbarcaderoMasterSecret
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling SWGEdgeModulesInvokersApi->patchResourceEndpoint: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **NSString***| Is the EMS EdgeModule name | 
 **rname** | **NSString***| Is the unique EMS EdgeModule Resource name | 
 **body** | **NSObject***| Body Object | 
 **xEmbarcaderoApplicationId** | **NSString***|  | [optional] 
 **xEmbarcaderoAppSecret** | **NSString***|  | [optional] 
 **xEmbarcaderoMasterSecret** | **NSString***|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchResourceEndpointItem**
```objc
-(NSURLSessionTask*) patchResourceEndpointItemWithMname: (NSString*) mname
    rname: (NSString*) rname
    wildcard: (NSString*) wildcard
    body: (NSObject*) body
    xEmbarcaderoApplicationId: (NSString*) xEmbarcaderoApplicationId
    xEmbarcaderoAppSecret: (NSString*) xEmbarcaderoAppSecret
    xEmbarcaderoMasterSecret: (NSString*) xEmbarcaderoMasterSecret
        completionHandler: (void (^)(NSError* error)) handler;
```

Invoke Resource/_* Patch Method

Used to invoke the PATCH method of the resource from an existing EMS EdgeModule.

### Example 
```objc

NSString* mname = @"mname_example"; // Is the EMS EdgeModule name
NSString* rname = @"rname_example"; // Is the unique EMS EdgeModule Resource name
NSString* wildcard = @"wildcard_example"; // Is the Wild card part of the URL
NSObject* body = NULL; // Body Object
NSString* xEmbarcaderoApplicationId = @"xEmbarcaderoApplicationId_example"; //  (optional)
NSString* xEmbarcaderoAppSecret = @"xEmbarcaderoAppSecret_example"; //  (optional)
NSString* xEmbarcaderoMasterSecret = @"xEmbarcaderoMasterSecret_example"; //  (optional)

SWGEdgeModulesInvokersApi*apiInstance = [[SWGEdgeModulesInvokersApi alloc] init];

// Invoke Resource/_* Patch Method
[apiInstance patchResourceEndpointItemWithMname:mname
              rname:rname
              wildcard:wildcard
              body:body
              xEmbarcaderoApplicationId:xEmbarcaderoApplicationId
              xEmbarcaderoAppSecret:xEmbarcaderoAppSecret
              xEmbarcaderoMasterSecret:xEmbarcaderoMasterSecret
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling SWGEdgeModulesInvokersApi->patchResourceEndpointItem: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **NSString***| Is the EMS EdgeModule name | 
 **rname** | **NSString***| Is the unique EMS EdgeModule Resource name | 
 **wildcard** | **NSString***| Is the Wild card part of the URL | 
 **body** | **NSObject***| Body Object | 
 **xEmbarcaderoApplicationId** | **NSString***|  | [optional] 
 **xEmbarcaderoAppSecret** | **NSString***|  | [optional] 
 **xEmbarcaderoMasterSecret** | **NSString***|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postResourceEndpoint**
```objc
-(NSURLSessionTask*) postResourceEndpointWithMname: (NSString*) mname
    rname: (NSString*) rname
    body: (NSObject*) body
    xEmbarcaderoApplicationId: (NSString*) xEmbarcaderoApplicationId
    xEmbarcaderoAppSecret: (NSString*) xEmbarcaderoAppSecret
    xEmbarcaderoMasterSecret: (NSString*) xEmbarcaderoMasterSecret
        completionHandler: (void (^)(NSError* error)) handler;
```

Invoke Resource Post Method

Used to invoke the POST method of the resource from an existing EMS EdgeModule.

### Example 
```objc

NSString* mname = @"mname_example"; // Is the EMS EdgeModule name
NSString* rname = @"rname_example"; // Is the unique EMS EdgeModule Resource name
NSObject* body = NULL; // Body Object
NSString* xEmbarcaderoApplicationId = @"xEmbarcaderoApplicationId_example"; //  (optional)
NSString* xEmbarcaderoAppSecret = @"xEmbarcaderoAppSecret_example"; //  (optional)
NSString* xEmbarcaderoMasterSecret = @"xEmbarcaderoMasterSecret_example"; //  (optional)

SWGEdgeModulesInvokersApi*apiInstance = [[SWGEdgeModulesInvokersApi alloc] init];

// Invoke Resource Post Method
[apiInstance postResourceEndpointWithMname:mname
              rname:rname
              body:body
              xEmbarcaderoApplicationId:xEmbarcaderoApplicationId
              xEmbarcaderoAppSecret:xEmbarcaderoAppSecret
              xEmbarcaderoMasterSecret:xEmbarcaderoMasterSecret
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling SWGEdgeModulesInvokersApi->postResourceEndpoint: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **NSString***| Is the EMS EdgeModule name | 
 **rname** | **NSString***| Is the unique EMS EdgeModule Resource name | 
 **body** | **NSObject***| Body Object | 
 **xEmbarcaderoApplicationId** | **NSString***|  | [optional] 
 **xEmbarcaderoAppSecret** | **NSString***|  | [optional] 
 **xEmbarcaderoMasterSecret** | **NSString***|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postResourceEndpointItem**
```objc
-(NSURLSessionTask*) postResourceEndpointItemWithMname: (NSString*) mname
    rname: (NSString*) rname
    wildcard: (NSString*) wildcard
    body: (NSObject*) body
    xEmbarcaderoApplicationId: (NSString*) xEmbarcaderoApplicationId
    xEmbarcaderoAppSecret: (NSString*) xEmbarcaderoAppSecret
    xEmbarcaderoMasterSecret: (NSString*) xEmbarcaderoMasterSecret
        completionHandler: (void (^)(NSError* error)) handler;
```

Invoke Resource/_* Post Method

Used to invoke the POST method of the resource from an existing EMS EdgeModule.

### Example 
```objc

NSString* mname = @"mname_example"; // Is the EMS EdgeModule name
NSString* rname = @"rname_example"; // Is the unique EMS EdgeModule Resource name
NSString* wildcard = @"wildcard_example"; // Is the Wild card part of the URL
NSObject* body = NULL; // Body Object
NSString* xEmbarcaderoApplicationId = @"xEmbarcaderoApplicationId_example"; //  (optional)
NSString* xEmbarcaderoAppSecret = @"xEmbarcaderoAppSecret_example"; //  (optional)
NSString* xEmbarcaderoMasterSecret = @"xEmbarcaderoMasterSecret_example"; //  (optional)

SWGEdgeModulesInvokersApi*apiInstance = [[SWGEdgeModulesInvokersApi alloc] init];

// Invoke Resource/_* Post Method
[apiInstance postResourceEndpointItemWithMname:mname
              rname:rname
              wildcard:wildcard
              body:body
              xEmbarcaderoApplicationId:xEmbarcaderoApplicationId
              xEmbarcaderoAppSecret:xEmbarcaderoAppSecret
              xEmbarcaderoMasterSecret:xEmbarcaderoMasterSecret
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling SWGEdgeModulesInvokersApi->postResourceEndpointItem: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **NSString***| Is the EMS EdgeModule name | 
 **rname** | **NSString***| Is the unique EMS EdgeModule Resource name | 
 **wildcard** | **NSString***| Is the Wild card part of the URL | 
 **body** | **NSObject***| Body Object | 
 **xEmbarcaderoApplicationId** | **NSString***|  | [optional] 
 **xEmbarcaderoAppSecret** | **NSString***|  | [optional] 
 **xEmbarcaderoMasterSecret** | **NSString***|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putResourceEndpoint**
```objc
-(NSURLSessionTask*) putResourceEndpointWithMname: (NSString*) mname
    rname: (NSString*) rname
    body: (NSObject*) body
    xEmbarcaderoApplicationId: (NSString*) xEmbarcaderoApplicationId
    xEmbarcaderoAppSecret: (NSString*) xEmbarcaderoAppSecret
    xEmbarcaderoMasterSecret: (NSString*) xEmbarcaderoMasterSecret
        completionHandler: (void (^)(NSError* error)) handler;
```

Invoke Resource Put Method

Used to invoke the PUT method of the resource from an existing EMS EdgeModule.

### Example 
```objc

NSString* mname = @"mname_example"; // Is the EMS EdgeModule name
NSString* rname = @"rname_example"; // Is the unique EMS EdgeModule Resource name
NSObject* body = NULL; // Body Object
NSString* xEmbarcaderoApplicationId = @"xEmbarcaderoApplicationId_example"; //  (optional)
NSString* xEmbarcaderoAppSecret = @"xEmbarcaderoAppSecret_example"; //  (optional)
NSString* xEmbarcaderoMasterSecret = @"xEmbarcaderoMasterSecret_example"; //  (optional)

SWGEdgeModulesInvokersApi*apiInstance = [[SWGEdgeModulesInvokersApi alloc] init];

// Invoke Resource Put Method
[apiInstance putResourceEndpointWithMname:mname
              rname:rname
              body:body
              xEmbarcaderoApplicationId:xEmbarcaderoApplicationId
              xEmbarcaderoAppSecret:xEmbarcaderoAppSecret
              xEmbarcaderoMasterSecret:xEmbarcaderoMasterSecret
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling SWGEdgeModulesInvokersApi->putResourceEndpoint: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **NSString***| Is the EMS EdgeModule name | 
 **rname** | **NSString***| Is the unique EMS EdgeModule Resource name | 
 **body** | **NSObject***| Body Object | 
 **xEmbarcaderoApplicationId** | **NSString***|  | [optional] 
 **xEmbarcaderoAppSecret** | **NSString***|  | [optional] 
 **xEmbarcaderoMasterSecret** | **NSString***|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putResourceEndpointItem**
```objc
-(NSURLSessionTask*) putResourceEndpointItemWithMname: (NSString*) mname
    rname: (NSString*) rname
    wildcard: (NSString*) wildcard
    body: (NSObject*) body
    xEmbarcaderoApplicationId: (NSString*) xEmbarcaderoApplicationId
    xEmbarcaderoAppSecret: (NSString*) xEmbarcaderoAppSecret
    xEmbarcaderoMasterSecret: (NSString*) xEmbarcaderoMasterSecret
        completionHandler: (void (^)(NSError* error)) handler;
```

Invoke Resource/_* Put Method

Used to invoke the PUT method of the resource from an existing EMS EdgeModule.

### Example 
```objc

NSString* mname = @"mname_example"; // Is the EMS EdgeModule name
NSString* rname = @"rname_example"; // Is the unique EMS EdgeModule Resource name
NSString* wildcard = @"wildcard_example"; // Is the Wild card part of the URL
NSObject* body = NULL; // Body Object
NSString* xEmbarcaderoApplicationId = @"xEmbarcaderoApplicationId_example"; //  (optional)
NSString* xEmbarcaderoAppSecret = @"xEmbarcaderoAppSecret_example"; //  (optional)
NSString* xEmbarcaderoMasterSecret = @"xEmbarcaderoMasterSecret_example"; //  (optional)

SWGEdgeModulesInvokersApi*apiInstance = [[SWGEdgeModulesInvokersApi alloc] init];

// Invoke Resource/_* Put Method
[apiInstance putResourceEndpointItemWithMname:mname
              rname:rname
              wildcard:wildcard
              body:body
              xEmbarcaderoApplicationId:xEmbarcaderoApplicationId
              xEmbarcaderoAppSecret:xEmbarcaderoAppSecret
              xEmbarcaderoMasterSecret:xEmbarcaderoMasterSecret
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling SWGEdgeModulesInvokersApi->putResourceEndpointItem: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mname** | **NSString***| Is the EMS EdgeModule name | 
 **rname** | **NSString***| Is the unique EMS EdgeModule Resource name | 
 **wildcard** | **NSString***| Is the Wild card part of the URL | 
 **body** | **NSObject***| Body Object | 
 **xEmbarcaderoApplicationId** | **NSString***|  | [optional] 
 **xEmbarcaderoAppSecret** | **NSString***|  | [optional] 
 **xEmbarcaderoMasterSecret** | **NSString***|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

