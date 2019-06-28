#import "SWGInstallationsApi.h"
#import "SWGQueryParamCollection.h"
#import "SWGApiClient.h"
#import "SWGChannelName.h"
#import "SWGFieldInstallationObject.h"
#import "SWGInstallationAddObject.h"
#import "SWGInstallationAddedObject.h"
#import "SWGInstallationObject.h"
#import "SWGUpdateInstallationObject.h"
#import "SWGUpdatedInstallationObject.h"


@interface SWGInstallationsApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation SWGInstallationsApi

NSString* kSWGInstallationsApiErrorDomain = @"SWGInstallationsApiErrorDomain";
NSInteger kSWGInstallationsApiMissingParamErrorCode = 234513;

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
/// Add Installation
///  |      Used to add a new `Installation` object to the EMS database.
///  @param body Object to sign up a new EMS User in the EMS Server 
///
///  @param xEmbarcaderoApplicationId  (optional)
///
///  @param xEmbarcaderoAppSecret  (optional)
///
///  @param xEmbarcaderoMasterSecret  (optional)
///
///  @returns SWGInstallationAddedObject*
///
-(NSURLSessionTask*) addInstallationWithBody: (SWGInstallationAddObject*) body
    xEmbarcaderoApplicationId: (NSString*) xEmbarcaderoApplicationId
    xEmbarcaderoAppSecret: (NSString*) xEmbarcaderoAppSecret
    xEmbarcaderoMasterSecret: (NSString*) xEmbarcaderoMasterSecret
    completionHandler: (void (^)(SWGInstallationAddedObject* output, NSError* error)) handler {
    // verify the required parameter 'body' is set
    if (body == nil) {
        NSParameterAssert(body);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"body"] };
            NSError* error = [NSError errorWithDomain:kSWGInstallationsApiErrorDomain code:kSWGInstallationsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/installations"];

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
                              responseType: @"SWGInstallationAddedObject*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGInstallationAddedObject*)data, error);
                                }
                            }];
}

///
/// Delete Installation
///  |      Used to delete an `Installation`. **id** is the unique EMS Installation identifier (IID) in the EMS database.
///  @param _id A Installation ID 
///
///  @param xEmbarcaderoApplicationId  (optional)
///
///  @param xEmbarcaderoAppSecret  (optional)
///
///  @param xEmbarcaderoMasterSecret  (optional)
///
///  @returns void
///
-(NSURLSessionTask*) deleteInstallationWithId: (NSString*) _id
    xEmbarcaderoApplicationId: (NSString*) xEmbarcaderoApplicationId
    xEmbarcaderoAppSecret: (NSString*) xEmbarcaderoAppSecret
    xEmbarcaderoMasterSecret: (NSString*) xEmbarcaderoMasterSecret
    completionHandler: (void (^)(NSError* error)) handler {
    // verify the required parameter '_id' is set
    if (_id == nil) {
        NSParameterAssert(_id);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"_id"] };
            NSError* error = [NSError errorWithDomain:kSWGInstallationsApiErrorDomain code:kSWGInstallationsApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/installations/{id}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
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
/// Get Installation Channels
///  |       Used to retrieve the available channels to which the device has subscribed. **id** is the unique EMS Installation identifier (InstallationID) in the EMS database.
///  @param xEmbarcaderoApplicationId  (optional)
///
///  @param xEmbarcaderoAppSecret  (optional)
///
///  @param xEmbarcaderoMasterSecret  (optional)
///
///  @returns NSArray<SWGChannelName>*
///
-(NSURLSessionTask*) getChannelsWithXEmbarcaderoApplicationId: (NSString*) xEmbarcaderoApplicationId
    xEmbarcaderoAppSecret: (NSString*) xEmbarcaderoAppSecret
    xEmbarcaderoMasterSecret: (NSString*) xEmbarcaderoMasterSecret
    completionHandler: (void (^)(NSArray<SWGChannelName>* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/installations/channels"];

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
                              responseType: @"NSArray<SWGChannelName>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<SWGChannelName>*)data, error);
                                }
                            }];
}

///
/// Get Installation
///  |      Used to retrieve all data from a specific `Installation` (registered device). **id** is the unique EMS Installation identifier (InstallationID) in the EMS database.
///  @param _id A Installation ID 
///
///  @param xEmbarcaderoApplicationId  (optional)
///
///  @param xEmbarcaderoAppSecret  (optional)
///
///  @param xEmbarcaderoMasterSecret  (optional)
///
///  @returns SWGInstallationObject*
///
-(NSURLSessionTask*) getInstallationWithId: (NSString*) _id
    xEmbarcaderoApplicationId: (NSString*) xEmbarcaderoApplicationId
    xEmbarcaderoAppSecret: (NSString*) xEmbarcaderoAppSecret
    xEmbarcaderoMasterSecret: (NSString*) xEmbarcaderoMasterSecret
    completionHandler: (void (^)(SWGInstallationObject* output, NSError* error)) handler {
    // verify the required parameter '_id' is set
    if (_id == nil) {
        NSParameterAssert(_id);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"_id"] };
            NSError* error = [NSError errorWithDomain:kSWGInstallationsApiErrorDomain code:kSWGInstallationsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/installations/{id}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
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
                              responseType: @"SWGInstallationObject*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGInstallationObject*)data, error);
                                }
                            }];
}

///
/// Get Fields
///  |      Used to retrieve all the `field names` of the EMS Installation (including the custom fields).
///  @param xEmbarcaderoApplicationId  (optional)
///
///  @param xEmbarcaderoAppSecret  (optional)
///
///  @param xEmbarcaderoMasterSecret  (optional)
///
///  @returns NSArray<SWGFieldInstallationObject>*
///
-(NSURLSessionTask*) getInstallationFieldsWithXEmbarcaderoApplicationId: (NSString*) xEmbarcaderoApplicationId
    xEmbarcaderoAppSecret: (NSString*) xEmbarcaderoAppSecret
    xEmbarcaderoMasterSecret: (NSString*) xEmbarcaderoMasterSecret
    completionHandler: (void (^)(NSArray<SWGFieldInstallationObject>* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/installations/fields"];

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
                              responseType: @"NSArray<SWGFieldInstallationObject>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<SWGFieldInstallationObject>*)data, error);
                                }
                            }];
}

///
/// Get Installations
///  |      Used to retrieve all data from `Installation`.      Optional query param of **skip, limit, order, where** determines       size of returned array, filtered and order by.
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
///  @returns NSArray<SWGInstallationObject>*
///
-(NSURLSessionTask*) getInstallationsWithXEmbarcaderoApplicationId: (NSString*) xEmbarcaderoApplicationId
    xEmbarcaderoAppSecret: (NSString*) xEmbarcaderoAppSecret
    xEmbarcaderoMasterSecret: (NSString*) xEmbarcaderoMasterSecret
    skip: (NSNumber*) skip
    limit: (NSNumber*) limit
    order: (NSNumber*) order
    where: (NSString*) where
    completionHandler: (void (^)(NSArray<SWGInstallationObject>* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/installations"];

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
                              responseType: @"NSArray<SWGInstallationObject>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<SWGInstallationObject>*)data, error);
                                }
                            }];
}

///
/// Update Installation
///  |      Used to update an `Installation`. **id** is the unique EMS Installation identifier (IID) in the EMS database.
///  @param _id A Installation ID 
///
///  @param body Installation fields to update 
///
///  @param xEmbarcaderoApplicationId  (optional)
///
///  @param xEmbarcaderoAppSecret  (optional)
///
///  @param xEmbarcaderoMasterSecret  (optional)
///
///  @returns SWGUpdatedInstallationObject*
///
-(NSURLSessionTask*) updateInstallationWithId: (NSString*) _id
    body: (SWGUpdateInstallationObject*) body
    xEmbarcaderoApplicationId: (NSString*) xEmbarcaderoApplicationId
    xEmbarcaderoAppSecret: (NSString*) xEmbarcaderoAppSecret
    xEmbarcaderoMasterSecret: (NSString*) xEmbarcaderoMasterSecret
    completionHandler: (void (^)(SWGUpdatedInstallationObject* output, NSError* error)) handler {
    // verify the required parameter '_id' is set
    if (_id == nil) {
        NSParameterAssert(_id);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"_id"] };
            NSError* error = [NSError errorWithDomain:kSWGInstallationsApiErrorDomain code:kSWGInstallationsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'body' is set
    if (body == nil) {
        NSParameterAssert(body);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"body"] };
            NSError* error = [NSError errorWithDomain:kSWGInstallationsApiErrorDomain code:kSWGInstallationsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/installations/{id}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
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
                              responseType: @"SWGUpdatedInstallationObject*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGUpdatedInstallationObject*)data, error);
                                }
                            }];
}



@end
