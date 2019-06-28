# SWGPushApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**send**](SWGPushApi.md#send) | **POST** /push | Send Push


# **send**
```objc
-(NSURLSessionTask*) sendWithBody: (SWGPushObject*) body
    xEmbarcaderoApplicationId: (NSString*) xEmbarcaderoApplicationId
    xEmbarcaderoAppSecret: (NSString*) xEmbarcaderoAppSecret
    xEmbarcaderoMasterSecret: (NSString*) xEmbarcaderoMasterSecret
        completionHandler: (void (^)(NSError* error)) handler;
```

Send Push

Used to send a push notification message to a registered device

### Example 
```objc

SWGPushObject* body = [[SWGPushObject alloc] init]; // Object containing the Push Message data structure
NSString* xEmbarcaderoApplicationId = @"xEmbarcaderoApplicationId_example"; //  (optional)
NSString* xEmbarcaderoAppSecret = @"xEmbarcaderoAppSecret_example"; //  (optional)
NSString* xEmbarcaderoMasterSecret = @"xEmbarcaderoMasterSecret_example"; //  (optional)

SWGPushApi*apiInstance = [[SWGPushApi alloc] init];

// Send Push
[apiInstance sendWithBody:body
              xEmbarcaderoApplicationId:xEmbarcaderoApplicationId
              xEmbarcaderoAppSecret:xEmbarcaderoAppSecret
              xEmbarcaderoMasterSecret:xEmbarcaderoMasterSecret
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling SWGPushApi->send: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SWGPushObject***](SWGPushObject.md)| Object containing the Push Message data structure | 
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

