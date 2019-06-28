#import "SWGGroupsApi.h"
#import "SWGQueryParamCollection.h"
#import "SWGApiClient.h"
#import "SWGFieldGroupObject.h"
#import "SWGGroupAddObject.h"
#import "SWGGroupObject.h"
#import "SWGUpdateGroupObject.h"
#import "SWGUpdatedGroupObject.h"


@interface SWGGroupsApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation SWGGroupsApi

NSString* kSWGGroupsApiErrorDomain = @"SWGGroupsApiErrorDomain";
NSInteger kSWGGroupsApiMissingParamErrorCode = 234513;

@synthesize apiClient = _apiClient;

#pragma mark - Initialize methods

- (instancetype) init {
    return [self initWithApiClient:[SWGApiClient sharedClient]];
}


-(instancetype) initWithApiClient:(SWGApiClient *)apiClient {
    self = [super init];
    if (self) {
        _apiClient = apiClient;
        _mutableDefaultHeaders = [NSMutableDictionary dictionary];
    }
    return self;
}

#pragma mark -

-(NSString*) defaultHeaderForKey:(NSString*)key {
    return self.mutableDefaultHeaders[key];
}

-(void) setDefaultHeaderValue:(NSString*) value forKey:(NSString*)key {
    [self.mutableDefaultHeaders setValue:value forKey:key];
}

-(NSDictionary *)defaultHeaders {
    return self.mutableDefaultHeaders;
}

#pragma mark - Api Methods

///
/// Add Group
///  |      Used to add a new `Group` object to the EMS database.
///  @param body Object to sign up a new EMS User in the EMS Server 
///
///  @param xEmbarcaderoApplicationId  (optional)
///
///  @param xEmbarcaderoAppSecret  (optional)
///
///  @param xEmbarcaderoMasterSecret  (optional)
///
///  @returns void
///
-(NSURLSessionTask*) addGroupWithBody: (SWGGroupAddObject*) body
    xEmbarcaderoApplicationId: (NSString*) xEmbarcaderoApplicationId
    xEmbarcaderoAppSecret: (NSString*) xEmbarcaderoAppSecret
    xEmbarcaderoMasterSecret: (NSString*) xEmbarcaderoMasterSecret
    completionHandler: (void (^)(NSError* error)) handler {
    // verify the required parameter 'body' is set
    if (body == nil) {
        NSParameterAssert(body);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"body"] };
            NSError* error = [NSError errorWithDomain:kSWGGroupsApiErrorDomain code:kSWGGroupsApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/groups"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    if (xEmbarcaderoApplicationId != nil) {
        headerParams[@"X-Embarcadero-Application-Id"] = xEmbarcaderoApplicationId;
    }
    if (xEmbarcaderoAppSecret != nil) {
        headerParams[@"X-Embarcadero-App-Secret"] = xEmbarcaderoAppSecret;
    }
    if (xEmbarcaderoMasterSecret != nil) {
        headerParams[@"X-Embarcadero-Master-Secret"] = xEmbarcaderoMasterSecret;
    }
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = body;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: nil
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler(error);
                                }
                            }];
}

///
/// Delete Group
///  |      Used to delete a `Group`. **item** is the unique EMS Group name in the EMS database.
///  @param item A group name 
///
///  @param xEmbarcaderoApplicationId  (optional)
///
///  @param xEmbarcaderoAppSecret  (optional)
///
///  @param xEmbarcaderoMasterSecret  (optional)
///
///  @returns void
///
-(NSURLSessionTask*) deleteGroupWithItem: (NSString*) item
    xEmbarcaderoApplicationId: (NSString*) xEmbarcaderoApplicationId
    xEmbarcaderoAppSecret: (NSString*) xEmbarcaderoAppSecret
    xEmbarcaderoMasterSecret: (NSString*) xEmbarcaderoMasterSecret
    completionHandler: (void (^)(NSError* error)) handler {
    // verify the required parameter 'item' is set
    if (item == nil) {
        NSParameterAssert(item);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"item"] };
            NSError* error = [NSError errorWithDomain:kSWGGroupsApiErrorDomain code:kSWGGroupsApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/groups/{item}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (item != nil) {
        pathParams[@"item"] = item;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    if (xEmbarcaderoApplicationId != nil) {
        headerParams[@"X-Embarcadero-Application-Id"] = xEmbarcaderoApplicationId;
    }
    if (xEmbarcaderoAppSecret != nil) {
        headerParams[@"X-Embarcadero-App-Secret"] = xEmbarcaderoAppSecret;
    }
    if (xEmbarcaderoMasterSecret != nil) {
        headerParams[@"X-Embarcadero-Master-Secret"] = xEmbarcaderoMasterSecret;
    }
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"DELETE"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: nil
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler(error);
                                }
                            }];
}

///
/// Get Group
///  |      Used to retrieve all data from a `Group`. **item** is the unique EMS Group name in the EMS database.
///  @param item A group name 
///
///  @param xEmbarcaderoApplicationId  (optional)
///
///  @param xEmbarcaderoAppSecret  (optional)
///
///  @param xEmbarcaderoMasterSecret  (optional)
///
///  @returns SWGGroupObject*
///
-(NSURLSessionTask*) getGroupWithItem: (NSString*) item
    xEmbarcaderoApplicationId: (NSString*) xEmbarcaderoApplicationId
    xEmbarcaderoAppSecret: (NSString*) xEmbarcaderoAppSecret
    xEmbarcaderoMasterSecret: (NSString*) xEmbarcaderoMasterSecret
    completionHandler: (void (^)(SWGGroupObject* output, NSError* error)) handler {
    // verify the required parameter 'item' is set
    if (item == nil) {
        NSParameterAssert(item);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"item"] };
            NSError* error = [NSError errorWithDomain:kSWGGroupsApiErrorDomain code:kSWGGroupsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/groups/{item}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (item != nil) {
        pathParams[@"item"] = item;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    if (xEmbarcaderoApplicationId != nil) {
        headerParams[@"X-Embarcadero-Application-Id"] = xEmbarcaderoApplicationId;
    }
    if (xEmbarcaderoAppSecret != nil) {
        headerParams[@"X-Embarcadero-App-Secret"] = xEmbarcaderoAppSecret;
    }
    if (xEmbarcaderoMasterSecret != nil) {
        headerParams[@"X-Embarcadero-Master-Secret"] = xEmbarcaderoMasterSecret;
    }
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"SWGGroupObject*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGGroupObject*)data, error);
                                }
                            }];
}

///
/// Get Fields
///  |      Used to retrieve all the `field names` of the EMS Group (including the custom fields).
///  @param xEmbarcaderoApplicationId  (optional)
///
///  @param xEmbarcaderoAppSecret  (optional)
///
///  @param xEmbarcaderoMasterSecret  (optional)
///
///  @returns NSArray<SWGFieldGroupObject>*
///
-(NSURLSessionTask*) getGroupFieldsWithXEmbarcaderoApplicationId: (NSString*) xEmbarcaderoApplicationId
    xEmbarcaderoAppSecret: (NSString*) xEmbarcaderoAppSecret
    xEmbarcaderoMasterSecret: (NSString*) xEmbarcaderoMasterSecret
    completionHandler: (void (^)(NSArray<SWGFieldGroupObject>* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/groups/fields"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    if (xEmbarcaderoApplicationId != nil) {
        headerParams[@"X-Embarcadero-Application-Id"] = xEmbarcaderoApplicationId;
    }
    if (xEmbarcaderoAppSecret != nil) {
        headerParams[@"X-Embarcadero-App-Secret"] = xEmbarcaderoAppSecret;
    }
    if (xEmbarcaderoMasterSecret != nil) {
        headerParams[@"X-Embarcadero-Master-Secret"] = xEmbarcaderoMasterSecret;
    }
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSArray<SWGFieldGroupObject>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<SWGFieldGroupObject>*)data, error);
                                }
                            }];
}

///
/// Get Groups
///  |      Used to retrieve all data from `Groups`.      Optional query param of **skip, limit, order, where** determines       size of returned array, filtered and order by.
///  @param xEmbarcaderoApplicationId  (optional)
///
///  @param xEmbarcaderoAppSecret  (optional)
///
///  @param xEmbarcaderoMasterSecret  (optional)
///
///  @param skip users skipped (optional)
///
///  @param limit maximum number of results to return (optional)
///
///  @param order order ascending or descending (asc, desc) (optional)
///
///  @param where filter operators (lt, lte, gt, gte, eq, neq, like, nlike) (optional)
///
///  @returns NSArray<SWGGroupObject>*
///
-(NSURLSessionTask*) getGroupsWithXEmbarcaderoApplicationId: (NSString*) xEmbarcaderoApplicationId
    xEmbarcaderoAppSecret: (NSString*) xEmbarcaderoAppSecret
    xEmbarcaderoMasterSecret: (NSString*) xEmbarcaderoMasterSecret
    skip: (NSNumber*) skip
    limit: (NSNumber*) limit
    order: (NSNumber*) order
    where: (NSString*) where
    completionHandler: (void (^)(NSArray<SWGGroupObject>* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/groups"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (skip != nil) {
        queryParams[@"skip"] = skip;
    }
    if (limit != nil) {
        queryParams[@"limit"] = limit;
    }
    if (order != nil) {
        queryParams[@"order"] = order;
    }
    if (where != nil) {
        queryParams[@"where"] = where;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    if (xEmbarcaderoApplicationId != nil) {
        headerParams[@"X-Embarcadero-Application-Id"] = xEmbarcaderoApplicationId;
    }
    if (xEmbarcaderoAppSecret != nil) {
        headerParams[@"X-Embarcadero-App-Secret"] = xEmbarcaderoAppSecret;
    }
    if (xEmbarcaderoMasterSecret != nil) {
        headerParams[@"X-Embarcadero-Master-Secret"] = xEmbarcaderoMasterSecret;
    }
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSArray<SWGGroupObject>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<SWGGroupObject>*)data, error);
                                }
                            }];
}

///
/// Update Group
///  |      Used to update a `Group`. **item** is the unique EMS Group name in the EMS database.
///  @param item A group name 
///
///  @param body Object to sign up a new EMS User in the EMS Server 
///
///  @param xEmbarcaderoApplicationId  (optional)
///
///  @param xEmbarcaderoAppSecret  (optional)
///
///  @param xEmbarcaderoMasterSecret  (optional)
///
///  @returns SWGUpdatedGroupObject*
///
-(NSURLSessionTask*) updateGroupWithItem: (NSString*) item
    body: (SWGUpdateGroupObject*) body
    xEmbarcaderoApplicationId: (NSString*) xEmbarcaderoApplicationId
    xEmbarcaderoAppSecret: (NSString*) xEmbarcaderoAppSecret
    xEmbarcaderoMasterSecret: (NSString*) xEmbarcaderoMasterSecret
    completionHandler: (void (^)(SWGUpdatedGroupObject* output, NSError* error)) handler {
    // verify the required parameter 'item' is set
    if (item == nil) {
        NSParameterAssert(item);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"item"] };
            NSError* error = [NSError errorWithDomain:kSWGGroupsApiErrorDomain code:kSWGGroupsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'body' is set
    if (body == nil) {
        NSParameterAssert(body);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"body"] };
            NSError* error = [NSError errorWithDomain:kSWGGroupsApiErrorDomain code:kSWGGroupsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/groups/{item}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (item != nil) {
        pathParams[@"item"] = item;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    if (xEmbarcaderoApplicationId != nil) {
        headerParams[@"X-Embarcadero-Application-Id"] = xEmbarcaderoApplicationId;
    }
    if (xEmbarcaderoAppSecret != nil) {
        headerParams[@"X-Embarcadero-App-Secret"] = xEmbarcaderoAppSecret;
    }
    if (xEmbarcaderoMasterSecret != nil) {
        headerParams[@"X-Embarcadero-Master-Secret"] = xEmbarcaderoMasterSecret;
    }
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = body;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"PUT"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"SWGUpdatedGroupObject*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGUpdatedGroupObject*)data, error);
                                }
                            }];
}



@end
