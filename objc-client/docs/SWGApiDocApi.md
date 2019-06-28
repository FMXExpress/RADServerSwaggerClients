# SWGApiDocApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**aPI**](SWGApiDocApi.md#api) | **GET** /api | Get API EndPoints
[**getAPIJSONFormat**](SWGApiDocApi.md#getapijsonformat) | **GET** /api/apidoc.json | Get JSON
[**getAPIYAMLFormat**](SWGApiDocApi.md#getapiyamlformat) | **GET** /api/apidoc.yaml | Get YAML
[**getAPIYAMLFormatEndPoint**](SWGApiDocApi.md#getapiyamlformatendpoint) | **GET** /api/{item}/apidoc.yaml | Get API EndPoint


# **aPI**
```objc
-(NSURLSessionTask*) aPIWithXEmbarcaderoApplicationId: (NSString*) xEmbarcaderoApplicationId
    xEmbarcaderoAppSecret: (NSString*) xEmbarcaderoAppSecret
    xEmbarcaderoMasterSecret: (NSString*) xEmbarcaderoMasterSecret
        completionHandler: (void (^)(NSError* error)) handler;
```

Get API EndPoints

 |      Used to retrieve all the API EndPoints.

### Example 
```objc

NSString* xEmbarcaderoApplicationId = @"xEmbarcaderoApplicationId_example"; //  (optional)
NSString* xEmbarcaderoAppSecret = @"xEmbarcaderoAppSecret_example"; //  (optional)
NSString* xEmbarcaderoMasterSecret = @"xEmbarcaderoMasterSecret_example"; //  (optional)

SWGApiDocApi*apiInstance = [[SWGApiDocApi alloc] init];

// Get API EndPoints
[apiInstance aPIWithXEmbarcaderoApplicationId:xEmbarcaderoApplicationId
              xEmbarcaderoAppSecret:xEmbarcaderoAppSecret
              xEmbarcaderoMasterSecret:xEmbarcaderoMasterSecret
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling SWGApiDocApi->aPI: %@", error);
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

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAPIJSONFormat**
```objc
-(NSURLSessionTask*) getAPIJSONFormatWithXEmbarcaderoApplicationId: (NSString*) xEmbarcaderoApplicationId
    xEmbarcaderoAppSecret: (NSString*) xEmbarcaderoAppSecret
    xEmbarcaderoMasterSecret: (NSString*) xEmbarcaderoMasterSecret
        completionHandler: (void (^)(NSError* error)) handler;
```

Get JSON

Get API in JSON format

### Example 
```objc

NSString* xEmbarcaderoApplicationId = @"xEmbarcaderoApplicationId_example"; //  (optional)
NSString* xEmbarcaderoAppSecret = @"xEmbarcaderoAppSecret_example"; //  (optional)
NSString* xEmbarcaderoMasterSecret = @"xEmbarcaderoMasterSecret_example"; //  (optional)

SWGApiDocApi*apiInstance = [[SWGApiDocApi alloc] init];

// Get JSON
[apiInstance getAPIJSONFormatWithXEmbarcaderoApplicationId:xEmbarcaderoApplicationId
              xEmbarcaderoAppSecret:xEmbarcaderoAppSecret
              xEmbarcaderoMasterSecret:xEmbarcaderoMasterSecret
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling SWGApiDocApi->getAPIJSONFormat: %@", error);
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

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAPIYAMLFormat**
```objc
-(NSURLSessionTask*) getAPIYAMLFormatWithXEmbarcaderoApplicationId: (NSString*) xEmbarcaderoApplicationId
    xEmbarcaderoAppSecret: (NSString*) xEmbarcaderoAppSecret
    xEmbarcaderoMasterSecret: (NSString*) xEmbarcaderoMasterSecret
        completionHandler: (void (^)(NSError* error)) handler;
```

Get YAML

Get API in YAML format

### Example 
```objc

NSString* xEmbarcaderoApplicationId = @"xEmbarcaderoApplicationId_example"; //  (optional)
NSString* xEmbarcaderoAppSecret = @"xEmbarcaderoAppSecret_example"; //  (optional)
NSString* xEmbarcaderoMasterSecret = @"xEmbarcaderoMasterSecret_example"; //  (optional)

SWGApiDocApi*apiInstance = [[SWGApiDocApi alloc] init];

// Get YAML
[apiInstance getAPIYAMLFormatWithXEmbarcaderoApplicationId:xEmbarcaderoApplicationId
              xEmbarcaderoAppSecret:xEmbarcaderoAppSecret
              xEmbarcaderoMasterSecret:xEmbarcaderoMasterSecret
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling SWGApiDocApi->getAPIYAMLFormat: %@", error);
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

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAPIYAMLFormatEndPoint**
```objc
-(NSURLSessionTask*) getAPIYAMLFormatEndPointWithItem: (NSString*) item
    xEmbarcaderoApplicationId: (NSString*) xEmbarcaderoApplicationId
    xEmbarcaderoAppSecret: (NSString*) xEmbarcaderoAppSecret
    xEmbarcaderoMasterSecret: (NSString*) xEmbarcaderoMasterSecret
        completionHandler: (void (^)(NSError* error)) handler;
```

Get API EndPoint

 |      Used to retrieve an EndPoint for the API EndPoints.

### Example 
```objc

NSString* item = @"item_example"; // Path Segment to an EndPoint
NSString* xEmbarcaderoApplicationId = @"xEmbarcaderoApplicationId_example"; //  (optional)
NSString* xEmbarcaderoAppSecret = @"xEmbarcaderoAppSecret_example"; //  (optional)
NSString* xEmbarcaderoMasterSecret = @"xEmbarcaderoMasterSecret_example"; //  (optional)

SWGApiDocApi*apiInstance = [[SWGApiDocApi alloc] init];

// Get API EndPoint
[apiInstance getAPIYAMLFormatEndPointWithItem:item
              xEmbarcaderoApplicationId:xEmbarcaderoApplicationId
              xEmbarcaderoAppSecret:xEmbarcaderoAppSecret
              xEmbarcaderoMasterSecret:xEmbarcaderoMasterSecret
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling SWGApiDocApi->getAPIYAMLFormatEndPoint: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **item** | **NSString***| Path Segment to an EndPoint | 
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

