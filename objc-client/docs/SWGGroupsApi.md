# SWGGroupsApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addGroup**](SWGGroupsApi.md#addgroup) | **POST** /groups | Add Group
[**deleteGroup**](SWGGroupsApi.md#deletegroup) | **DELETE** /groups/{item} | Delete Group
[**getGroup**](SWGGroupsApi.md#getgroup) | **GET** /groups/{item} | Get Group
[**getGroupFields**](SWGGroupsApi.md#getgroupfields) | **GET** /groups/fields | Get Fields
[**getGroups**](SWGGroupsApi.md#getgroups) | **GET** /groups | Get Groups
[**updateGroup**](SWGGroupsApi.md#updategroup) | **PUT** /groups/{item} | Update Group


# **addGroup**
```objc
-(NSURLSessionTask*) addGroupWithBody: (SWGGroupAddObject*) body
    xEmbarcaderoApplicationId: (NSString*) xEmbarcaderoApplicationId
    xEmbarcaderoAppSecret: (NSString*) xEmbarcaderoAppSecret
    xEmbarcaderoMasterSecret: (NSString*) xEmbarcaderoMasterSecret
        completionHandler: (void (^)(NSError* error)) handler;
```

Add Group

 |      Used to add a new `Group` object to the EMS database.

### Example 
```objc

SWGGroupAddObject* body = [[SWGGroupAddObject alloc] init]; // Object to sign up a new EMS User in the EMS Server
NSString* xEmbarcaderoApplicationId = @"xEmbarcaderoApplicationId_example"; //  (optional)
NSString* xEmbarcaderoAppSecret = @"xEmbarcaderoAppSecret_example"; //  (optional)
NSString* xEmbarcaderoMasterSecret = @"xEmbarcaderoMasterSecret_example"; //  (optional)

SWGGroupsApi*apiInstance = [[SWGGroupsApi alloc] init];

// Add Group
[apiInstance addGroupWithBody:body
              xEmbarcaderoApplicationId:xEmbarcaderoApplicationId
              xEmbarcaderoAppSecret:xEmbarcaderoAppSecret
              xEmbarcaderoMasterSecret:xEmbarcaderoMasterSecret
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling SWGGroupsApi->addGroup: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SWGGroupAddObject***](SWGGroupAddObject.md)| Object to sign up a new EMS User in the EMS Server | 
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

# **deleteGroup**
```objc
-(NSURLSessionTask*) deleteGroupWithItem: (NSString*) item
    xEmbarcaderoApplicationId: (NSString*) xEmbarcaderoApplicationId
    xEmbarcaderoAppSecret: (NSString*) xEmbarcaderoAppSecret
    xEmbarcaderoMasterSecret: (NSString*) xEmbarcaderoMasterSecret
        completionHandler: (void (^)(NSError* error)) handler;
```

Delete Group

 |      Used to delete a `Group`. **item** is the unique EMS Group name in the EMS database.

### Example 
```objc

NSString* item = @"item_example"; // A group name
NSString* xEmbarcaderoApplicationId = @"xEmbarcaderoApplicationId_example"; //  (optional)
NSString* xEmbarcaderoAppSecret = @"xEmbarcaderoAppSecret_example"; //  (optional)
NSString* xEmbarcaderoMasterSecret = @"xEmbarcaderoMasterSecret_example"; //  (optional)

SWGGroupsApi*apiInstance = [[SWGGroupsApi alloc] init];

// Delete Group
[apiInstance deleteGroupWithItem:item
              xEmbarcaderoApplicationId:xEmbarcaderoApplicationId
              xEmbarcaderoAppSecret:xEmbarcaderoAppSecret
              xEmbarcaderoMasterSecret:xEmbarcaderoMasterSecret
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling SWGGroupsApi->deleteGroup: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **item** | **NSString***| A group name | 
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

# **getGroup**
```objc
-(NSURLSessionTask*) getGroupWithItem: (NSString*) item
    xEmbarcaderoApplicationId: (NSString*) xEmbarcaderoApplicationId
    xEmbarcaderoAppSecret: (NSString*) xEmbarcaderoAppSecret
    xEmbarcaderoMasterSecret: (NSString*) xEmbarcaderoMasterSecret
        completionHandler: (void (^)(SWGGroupObject* output, NSError* error)) handler;
```

Get Group

 |      Used to retrieve all data from a `Group`. **item** is the unique EMS Group name in the EMS database.

### Example 
```objc

NSString* item = @"item_example"; // A group name
NSString* xEmbarcaderoApplicationId = @"xEmbarcaderoApplicationId_example"; //  (optional)
NSString* xEmbarcaderoAppSecret = @"xEmbarcaderoAppSecret_example"; //  (optional)
NSString* xEmbarcaderoMasterSecret = @"xEmbarcaderoMasterSecret_example"; //  (optional)

SWGGroupsApi*apiInstance = [[SWGGroupsApi alloc] init];

// Get Group
[apiInstance getGroupWithItem:item
              xEmbarcaderoApplicationId:xEmbarcaderoApplicationId
              xEmbarcaderoAppSecret:xEmbarcaderoAppSecret
              xEmbarcaderoMasterSecret:xEmbarcaderoMasterSecret
          completionHandler: ^(SWGGroupObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGGroupsApi->getGroup: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **item** | **NSString***| A group name | 
 **xEmbarcaderoApplicationId** | **NSString***|  | [optional] 
 **xEmbarcaderoAppSecret** | **NSString***|  | [optional] 
 **xEmbarcaderoMasterSecret** | **NSString***|  | [optional] 

### Return type

[**SWGGroupObject***](SWGGroupObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGroupFields**
```objc
-(NSURLSessionTask*) getGroupFieldsWithXEmbarcaderoApplicationId: (NSString*) xEmbarcaderoApplicationId
    xEmbarcaderoAppSecret: (NSString*) xEmbarcaderoAppSecret
    xEmbarcaderoMasterSecret: (NSString*) xEmbarcaderoMasterSecret
        completionHandler: (void (^)(NSArray<SWGFieldGroupObject>* output, NSError* error)) handler;
```

Get Fields

 |      Used to retrieve all the `field names` of the EMS Group (including the custom fields).

### Example 
```objc

NSString* xEmbarcaderoApplicationId = @"xEmbarcaderoApplicationId_example"; //  (optional)
NSString* xEmbarcaderoAppSecret = @"xEmbarcaderoAppSecret_example"; //  (optional)
NSString* xEmbarcaderoMasterSecret = @"xEmbarcaderoMasterSecret_example"; //  (optional)

SWGGroupsApi*apiInstance = [[SWGGroupsApi alloc] init];

// Get Fields
[apiInstance getGroupFieldsWithXEmbarcaderoApplicationId:xEmbarcaderoApplicationId
              xEmbarcaderoAppSecret:xEmbarcaderoAppSecret
              xEmbarcaderoMasterSecret:xEmbarcaderoMasterSecret
          completionHandler: ^(NSArray<SWGFieldGroupObject>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGGroupsApi->getGroupFields: %@", error);
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

[**NSArray<SWGFieldGroupObject>***](SWGFieldGroupObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGroups**
```objc
-(NSURLSessionTask*) getGroupsWithXEmbarcaderoApplicationId: (NSString*) xEmbarcaderoApplicationId
    xEmbarcaderoAppSecret: (NSString*) xEmbarcaderoAppSecret
    xEmbarcaderoMasterSecret: (NSString*) xEmbarcaderoMasterSecret
    skip: (NSNumber*) skip
    limit: (NSNumber*) limit
    order: (NSNumber*) order
    where: (NSString*) where
        completionHandler: (void (^)(NSArray<SWGGroupObject>* output, NSError* error)) handler;
```

Get Groups

 |      Used to retrieve all data from `Groups`.      Optional query param of **skip, limit, order, where** determines       size of returned array, filtered and order by.

### Example 
```objc

NSString* xEmbarcaderoApplicationId = @"xEmbarcaderoApplicationId_example"; //  (optional)
NSString* xEmbarcaderoAppSecret = @"xEmbarcaderoAppSecret_example"; //  (optional)
NSString* xEmbarcaderoMasterSecret = @"xEmbarcaderoMasterSecret_example"; //  (optional)
NSNumber* skip = @8.14; // users skipped (optional)
NSNumber* limit = @8.14; // maximum number of results to return (optional)
NSNumber* order = @8.14; // order ascending or descending (asc, desc) (optional)
NSString* where = @"where_example"; // filter operators (lt, lte, gt, gte, eq, neq, like, nlike) (optional)

SWGGroupsApi*apiInstance = [[SWGGroupsApi alloc] init];

// Get Groups
[apiInstance getGroupsWithXEmbarcaderoApplicationId:xEmbarcaderoApplicationId
              xEmbarcaderoAppSecret:xEmbarcaderoAppSecret
              xEmbarcaderoMasterSecret:xEmbarcaderoMasterSecret
              skip:skip
              limit:limit
              order:order
              where:where
          completionHandler: ^(NSArray<SWGGroupObject>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGGroupsApi->getGroups: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xEmbarcaderoApplicationId** | **NSString***|  | [optional] 
 **xEmbarcaderoAppSecret** | **NSString***|  | [optional] 
 **xEmbarcaderoMasterSecret** | **NSString***|  | [optional] 
 **skip** | **NSNumber***| users skipped | [optional] 
 **limit** | **NSNumber***| maximum number of results to return | [optional] 
 **order** | **NSNumber***| order ascending or descending (asc, desc) | [optional] 
 **where** | **NSString***| filter operators (lt, lte, gt, gte, eq, neq, like, nlike) | [optional] 

### Return type

[**NSArray<SWGGroupObject>***](SWGGroupObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateGroup**
```objc
-(NSURLSessionTask*) updateGroupWithItem: (NSString*) item
    body: (SWGUpdateGroupObject*) body
    xEmbarcaderoApplicationId: (NSString*) xEmbarcaderoApplicationId
    xEmbarcaderoAppSecret: (NSString*) xEmbarcaderoAppSecret
    xEmbarcaderoMasterSecret: (NSString*) xEmbarcaderoMasterSecret
        completionHandler: (void (^)(SWGUpdatedGroupObject* output, NSError* error)) handler;
```

Update Group

 |      Used to update a `Group`. **item** is the unique EMS Group name in the EMS database.

### Example 
```objc

NSString* item = @"item_example"; // A group name
SWGUpdateGroupObject* body = [[SWGUpdateGroupObject alloc] init]; // Object to sign up a new EMS User in the EMS Server
NSString* xEmbarcaderoApplicationId = @"xEmbarcaderoApplicationId_example"; //  (optional)
NSString* xEmbarcaderoAppSecret = @"xEmbarcaderoAppSecret_example"; //  (optional)
NSString* xEmbarcaderoMasterSecret = @"xEmbarcaderoMasterSecret_example"; //  (optional)

SWGGroupsApi*apiInstance = [[SWGGroupsApi alloc] init];

// Update Group
[apiInstance updateGroupWithItem:item
              body:body
              xEmbarcaderoApplicationId:xEmbarcaderoApplicationId
              xEmbarcaderoAppSecret:xEmbarcaderoAppSecret
              xEmbarcaderoMasterSecret:xEmbarcaderoMasterSecret
          completionHandler: ^(SWGUpdatedGroupObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGGroupsApi->updateGroup: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **item** | **NSString***| A group name | 
 **body** | [**SWGUpdateGroupObject***](SWGUpdateGroupObject.md)| Object to sign up a new EMS User in the EMS Server | 
 **xEmbarcaderoApplicationId** | **NSString***|  | [optional] 
 **xEmbarcaderoAppSecret** | **NSString***|  | [optional] 
 **xEmbarcaderoMasterSecret** | **NSString***|  | [optional] 

### Return type

[**SWGUpdatedGroupObject***](SWGUpdatedGroupObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

