# SWGVersionApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getVersion**](SWGVersionApi.md#getversion) | **GET** /version | Get version


# **getVersion**
```objc
-(NSURLSessionTask*) getVersionWithXEmbarcaderoApplicationId: (NSString*) xEmbarcaderoApplicationId
    xEmbarcaderoAppSecret: (NSString*) xEmbarcaderoAppSecret
    xEmbarcaderoMasterSecret: (NSString*) xEmbarcaderoMasterSecret
        completionHandler: (void (^)(SWGVersionObject* output, NSError* error)) handler;
```

Get version

 |      Used to retrieve the `Version` of the EMS Server.

### Example 
```objc

NSString* xEmbarcaderoApplicationId = @"xEmbarcaderoApplicationId_example"; //  (optional)
NSString* xEmbarcaderoAppSecret = @"xEmbarcaderoAppSecret_example"; //  (optional)
NSString* xEmbarcaderoMasterSecret = @"xEmbarcaderoMasterSecret_example"; //  (optional)

SWGVersionApi*apiInstance = [[SWGVersionApi alloc] init];

// Get version
[apiInstance getVersionWithXEmbarcaderoApplicationId:xEmbarcaderoApplicationId
              xEmbarcaderoAppSecret:xEmbarcaderoAppSecret
              xEmbarcaderoMasterSecret:xEmbarcaderoMasterSecret
          completionHandler: ^(SWGVersionObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGVersionApi->getVersion: %@", error);
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

[**SWGVersionObject***](SWGVersionObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

