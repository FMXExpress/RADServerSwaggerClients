#import "SWGEdgeModulesInvokersApi.h"
#import "SWGQueryParamCollection.h"
#import "SWGApiClient.h"


@interface SWGEdgeModulesInvokersApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation SWGEdgeModulesInvokersApi

NSString* kSWGEdgeModulesInvokersApiErrorDomain = @"SWGEdgeModulesInvokersApiErrorDomain";
NSInteger kSWGEdgeModulesInvokersApiMissingParamErrorCode = 234513;

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
/// Invoke Resource Delete Method
/// Used to invoke the DELETE method of the resource from an existing EMS EdgeModule.
///  @param mname Is the EMS EdgeModule name 
///
///  @param rname Is the unique EMS EdgeModule Resource name 
///
///  @param xEmbarcaderoApplicationId  (optional)
///
///  @param xEmbarcaderoAppSecret  (optional)
///
///  @param xEmbarcaderoMasterSecret  (optional)
///
///  @returns void
///
-(NSURLSessionTask*) deleteResourceEndpointWithMname: (NSString*) mname
    rname: (NSString*) rname
    xEmbarcaderoApplicationId: (NSString*) xEmbarcaderoApplicationId
    xEmbarcaderoAppSecret: (NSString*) xEmbarcaderoAppSecret
    xEmbarcaderoMasterSecret: (NSString*) xEmbarcaderoMasterSecret
    completionHandler: (void (^)(NSError* error)) handler {
    // verify the required parameter 'mname' is set
    if (mname == nil) {
        NSParameterAssert(mname);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"mname"] };
            NSError* error = [NSError errorWithDomain:kSWGEdgeModulesInvokersApiErrorDomain code:kSWGEdgeModulesInvokersApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    // verify the required parameter 'rname' is set
    if (rname == nil) {
        NSParameterAssert(rname);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"rname"] };
            NSError* error = [NSError errorWithDomain:kSWGEdgeModulesInvokersApiErrorDomain code:kSWGEdgeModulesInvokersApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/edgemodules/{mname}/{rname}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (mname != nil) {
        pathParams[@"mname"] = mname;
    }
    if (rname != nil) {
        pathParams[@"rname"] = rname;
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
/// Invoke Resource/_* Delete Method
/// Used to invoke the DELETE method of the resource from an existing EMS EdgeModule.
///  @param mname Is the EMS EdgeModule name 
///
///  @param rname Is the unique EMS EdgeModule Resource name 
///
///  @param wildcard Is the Wild card part of the URL 
///
///  @param xEmbarcaderoApplicationId  (optional)
///
///  @param xEmbarcaderoAppSecret  (optional)
///
///  @param xEmbarcaderoMasterSecret  (optional)
///
///  @returns void
///
-(NSURLSessionTask*) deleteResourceEndpointItemWithMname: (NSString*) mname
    rname: (NSString*) rname
    wildcard: (NSString*) wildcard
    xEmbarcaderoApplicationId: (NSString*) xEmbarcaderoApplicationId
    xEmbarcaderoAppSecret: (NSString*) xEmbarcaderoAppSecret
    xEmbarcaderoMasterSecret: (NSString*) xEmbarcaderoMasterSecret
    completionHandler: (void (^)(NSError* error)) handler {
    // verify the required parameter 'mname' is set
    if (mname == nil) {
        NSParameterAssert(mname);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"mname"] };
            NSError* error = [NSError errorWithDomain:kSWGEdgeModulesInvokersApiErrorDomain code:kSWGEdgeModulesInvokersApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    // verify the required parameter 'rname' is set
    if (rname == nil) {
        NSParameterAssert(rname);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"rname"] };
            NSError* error = [NSError errorWithDomain:kSWGEdgeModulesInvokersApiErrorDomain code:kSWGEdgeModulesInvokersApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    // verify the required parameter 'wildcard' is set
    if (wildcard == nil) {
        NSParameterAssert(wildcard);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"wildcard"] };
            NSError* error = [NSError errorWithDomain:kSWGEdgeModulesInvokersApiErrorDomain code:kSWGEdgeModulesInvokersApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/edgemodules/{mname}/{rname}/{wildcard}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (mname != nil) {
        pathParams[@"mname"] = mname;
    }
    if (rname != nil) {
        pathParams[@"rname"] = rname;
    }
    if (wildcard != nil) {
        pathParams[@"wildcard"] = wildcard;
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
/// Invoke Resource Get Method
/// Used to invoke the GET method of the resource from an existing EMS EdgeModule.
///  @param mname Is the EMS EdgeModule name 
///
///  @param rname Is the unique EMS EdgeModule Resource name 
///
///  @param xEmbarcaderoApplicationId  (optional)
///
///  @param xEmbarcaderoAppSecret  (optional)
///
///  @param xEmbarcaderoMasterSecret  (optional)
///
///  @returns void
///
-(NSURLSessionTask*) getResourceEndpointWithMname: (NSString*) mname
    rname: (NSString*) rname
    xEmbarcaderoApplicationId: (NSString*) xEmbarcaderoApplicationId
    xEmbarcaderoAppSecret: (NSString*) xEmbarcaderoAppSecret
    xEmbarcaderoMasterSecret: (NSString*) xEmbarcaderoMasterSecret
    completionHandler: (void (^)(NSError* error)) handler {
    // verify the required parameter 'mname' is set
    if (mname == nil) {
        NSParameterAssert(mname);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"mname"] };
            NSError* error = [NSError errorWithDomain:kSWGEdgeModulesInvokersApiErrorDomain code:kSWGEdgeModulesInvokersApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    // verify the required parameter 'rname' is set
    if (rname == nil) {
        NSParameterAssert(rname);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"rname"] };
            NSError* error = [NSError errorWithDomain:kSWGEdgeModulesInvokersApiErrorDomain code:kSWGEdgeModulesInvokersApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/edgemodules/{mname}/{rname}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (mname != nil) {
        pathParams[@"mname"] = mname;
    }
    if (rname != nil) {
        pathParams[@"rname"] = rname;
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
                              responseType: nil
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler(error);
                                }
                            }];
}

///
/// Invoke Resource/_* Get Method
/// Used to invoke the GET method of the resource from an existing EMS EdgeModule.
///  @param mname Is the EMS EdgeModule name 
///
///  @param rname Is the unique EMS EdgeModule Resource name 
///
///  @param wildcard Is the Wild card part of the URL 
///
///  @param xEmbarcaderoApplicationId  (optional)
///
///  @param xEmbarcaderoAppSecret  (optional)
///
///  @param xEmbarcaderoMasterSecret  (optional)
///
///  @returns void
///
-(NSURLSessionTask*) getResourceEndpointItemWithMname: (NSString*) mname
    rname: (NSString*) rname
    wildcard: (NSString*) wildcard
    xEmbarcaderoApplicationId: (NSString*) xEmbarcaderoApplicationId
    xEmbarcaderoAppSecret: (NSString*) xEmbarcaderoAppSecret
    xEmbarcaderoMasterSecret: (NSString*) xEmbarcaderoMasterSecret
    completionHandler: (void (^)(NSError* error)) handler {
    // verify the required parameter 'mname' is set
    if (mname == nil) {
        NSParameterAssert(mname);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"mname"] };
            NSError* error = [NSError errorWithDomain:kSWGEdgeModulesInvokersApiErrorDomain code:kSWGEdgeModulesInvokersApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    // verify the required parameter 'rname' is set
    if (rname == nil) {
        NSParameterAssert(rname);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"rname"] };
            NSError* error = [NSError errorWithDomain:kSWGEdgeModulesInvokersApiErrorDomain code:kSWGEdgeModulesInvokersApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    // verify the required parameter 'wildcard' is set
    if (wildcard == nil) {
        NSParameterAssert(wildcard);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"wildcard"] };
            NSError* error = [NSError errorWithDomain:kSWGEdgeModulesInvokersApiErrorDomain code:kSWGEdgeModulesInvokersApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/edgemodules/{mname}/{rname}/{wildcard}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (mname != nil) {
        pathParams[@"mname"] = mname;
    }
    if (rname != nil) {
        pathParams[@"rname"] = rname;
    }
    if (wildcard != nil) {
        pathParams[@"wildcard"] = wildcard;
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
                              responseType: nil
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler(error);
                                }
                            }];
}

///
/// Invoke Resource Patch Method
/// Used to invoke the PATCH method of the resource from an existing EMS EdgeModule.
///  @param mname Is the EMS EdgeModule name 
///
///  @param rname Is the unique EMS EdgeModule Resource name 
///
///  @param body Body Object 
///
///  @param xEmbarcaderoApplicationId  (optional)
///
///  @param xEmbarcaderoAppSecret  (optional)
///
///  @param xEmbarcaderoMasterSecret  (optional)
///
///  @returns void
///
-(NSURLSessionTask*) patchResourceEndpointWithMname: (NSString*) mname
    rname: (NSString*) rname
    body: (NSObject*) body
    xEmbarcaderoApplicationId: (NSString*) xEmbarcaderoApplicationId
    xEmbarcaderoAppSecret: (NSString*) xEmbarcaderoAppSecret
    xEmbarcaderoMasterSecret: (NSString*) xEmbarcaderoMasterSecret
    completionHandler: (void (^)(NSError* error)) handler {
    // verify the required parameter 'mname' is set
    if (mname == nil) {
        NSParameterAssert(mname);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"mname"] };
            NSError* error = [NSError errorWithDomain:kSWGEdgeModulesInvokersApiErrorDomain code:kSWGEdgeModulesInvokersApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    // verify the required parameter 'rname' is set
    if (rname == nil) {
        NSParameterAssert(rname);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"rname"] };
            NSError* error = [NSError errorWithDomain:kSWGEdgeModulesInvokersApiErrorDomain code:kSWGEdgeModulesInvokersApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    // verify the required parameter 'body' is set
    if (body == nil) {
        NSParameterAssert(body);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"body"] };
            NSError* error = [NSError errorWithDomain:kSWGEdgeModulesInvokersApiErrorDomain code:kSWGEdgeModulesInvokersApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/edgemodules/{mname}/{rname}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (mname != nil) {
        pathParams[@"mname"] = mname;
    }
    if (rname != nil) {
        pathParams[@"rname"] = rname;
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
                                    method: @"PATCH"
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
/// Invoke Resource/_* Patch Method
/// Used to invoke the PATCH method of the resource from an existing EMS EdgeModule.
///  @param mname Is the EMS EdgeModule name 
///
///  @param rname Is the unique EMS EdgeModule Resource name 
///
///  @param wildcard Is the Wild card part of the URL 
///
///  @param body Body Object 
///
///  @param xEmbarcaderoApplicationId  (optional)
///
///  @param xEmbarcaderoAppSecret  (optional)
///
///  @param xEmbarcaderoMasterSecret  (optional)
///
///  @returns void
///
-(NSURLSessionTask*) patchResourceEndpointItemWithMname: (NSString*) mname
    rname: (NSString*) rname
    wildcard: (NSString*) wildcard
    body: (NSObject*) body
    xEmbarcaderoApplicationId: (NSString*) xEmbarcaderoApplicationId
    xEmbarcaderoAppSecret: (NSString*) xEmbarcaderoAppSecret
    xEmbarcaderoMasterSecret: (NSString*) xEmbarcaderoMasterSecret
    completionHandler: (void (^)(NSError* error)) handler {
    // verify the required parameter 'mname' is set
    if (mname == nil) {
        NSParameterAssert(mname);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"mname"] };
            NSError* error = [NSError errorWithDomain:kSWGEdgeModulesInvokersApiErrorDomain code:kSWGEdgeModulesInvokersApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    // verify the required parameter 'rname' is set
    if (rname == nil) {
        NSParameterAssert(rname);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"rname"] };
            NSError* error = [NSError errorWithDomain:kSWGEdgeModulesInvokersApiErrorDomain code:kSWGEdgeModulesInvokersApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    // verify the required parameter 'wildcard' is set
    if (wildcard == nil) {
        NSParameterAssert(wildcard);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"wildcard"] };
            NSError* error = [NSError errorWithDomain:kSWGEdgeModulesInvokersApiErrorDomain code:kSWGEdgeModulesInvokersApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    // verify the required parameter 'body' is set
    if (body == nil) {
        NSParameterAssert(body);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"body"] };
            NSError* error = [NSError errorWithDomain:kSWGEdgeModulesInvokersApiErrorDomain code:kSWGEdgeModulesInvokersApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/edgemodules/{mname}/{rname}/{wildcard}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (mname != nil) {
        pathParams[@"mname"] = mname;
    }
    if (rname != nil) {
        pathParams[@"rname"] = rname;
    }
    if (wildcard != nil) {
        pathParams[@"wildcard"] = wildcard;
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
                                    method: @"PATCH"
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
/// Invoke Resource Post Method
/// Used to invoke the POST method of the resource from an existing EMS EdgeModule.
///  @param mname Is the EMS EdgeModule name 
///
///  @param rname Is the unique EMS EdgeModule Resource name 
///
///  @param body Body Object 
///
///  @param xEmbarcaderoApplicationId  (optional)
///
///  @param xEmbarcaderoAppSecret  (optional)
///
///  @param xEmbarcaderoMasterSecret  (optional)
///
///  @returns void
///
-(NSURLSessionTask*) postResourceEndpointWithMname: (NSString*) mname
    rname: (NSString*) rname
    body: (NSObject*) body
    xEmbarcaderoApplicationId: (NSString*) xEmbarcaderoApplicationId
    xEmbarcaderoAppSecret: (NSString*) xEmbarcaderoAppSecret
    xEmbarcaderoMasterSecret: (NSString*) xEmbarcaderoMasterSecret
    completionHandler: (void (^)(NSError* error)) handler {
    // verify the required parameter 'mname' is set
    if (mname == nil) {
        NSParameterAssert(mname);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"mname"] };
            NSError* error = [NSError errorWithDomain:kSWGEdgeModulesInvokersApiErrorDomain code:kSWGEdgeModulesInvokersApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    // verify the required parameter 'rname' is set
    if (rname == nil) {
        NSParameterAssert(rname);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"rname"] };
            NSError* error = [NSError errorWithDomain:kSWGEdgeModulesInvokersApiErrorDomain code:kSWGEdgeModulesInvokersApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    // verify the required parameter 'body' is set
    if (body == nil) {
        NSParameterAssert(body);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"body"] };
            NSError* error = [NSError errorWithDomain:kSWGEdgeModulesInvokersApiErrorDomain code:kSWGEdgeModulesInvokersApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/edgemodules/{mname}/{rname}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (mname != nil) {
        pathParams[@"mname"] = mname;
    }
    if (rname != nil) {
        pathParams[@"rname"] = rname;
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
/// Invoke Resource/_* Post Method
/// Used to invoke the POST method of the resource from an existing EMS EdgeModule.
///  @param mname Is the EMS EdgeModule name 
///
///  @param rname Is the unique EMS EdgeModule Resource name 
///
///  @param wildcard Is the Wild card part of the URL 
///
///  @param body Body Object 
///
///  @param xEmbarcaderoApplicationId  (optional)
///
///  @param xEmbarcaderoAppSecret  (optional)
///
///  @param xEmbarcaderoMasterSecret  (optional)
///
///  @returns void
///
-(NSURLSessionTask*) postResourceEndpointItemWithMname: (NSString*) mname
    rname: (NSString*) rname
    wildcard: (NSString*) wildcard
    body: (NSObject*) body
    xEmbarcaderoApplicationId: (NSString*) xEmbarcaderoApplicationId
    xEmbarcaderoAppSecret: (NSString*) xEmbarcaderoAppSecret
    xEmbarcaderoMasterSecret: (NSString*) xEmbarcaderoMasterSecret
    completionHandler: (void (^)(NSError* error)) handler {
    // verify the required parameter 'mname' is set
    if (mname == nil) {
        NSParameterAssert(mname);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"mname"] };
            NSError* error = [NSError errorWithDomain:kSWGEdgeModulesInvokersApiErrorDomain code:kSWGEdgeModulesInvokersApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    // verify the required parameter 'rname' is set
    if (rname == nil) {
        NSParameterAssert(rname);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"rname"] };
            NSError* error = [NSError errorWithDomain:kSWGEdgeModulesInvokersApiErrorDomain code:kSWGEdgeModulesInvokersApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    // verify the required parameter 'wildcard' is set
    if (wildcard == nil) {
        NSParameterAssert(wildcard);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"wildcard"] };
            NSError* error = [NSError errorWithDomain:kSWGEdgeModulesInvokersApiErrorDomain code:kSWGEdgeModulesInvokersApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    // verify the required parameter 'body' is set
    if (body == nil) {
        NSParameterAssert(body);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"body"] };
            NSError* error = [NSError errorWithDomain:kSWGEdgeModulesInvokersApiErrorDomain code:kSWGEdgeModulesInvokersApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/edgemodules/{mname}/{rname}/{wildcard}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (mname != nil) {
        pathParams[@"mname"] = mname;
    }
    if (rname != nil) {
        pathParams[@"rname"] = rname;
    }
    if (wildcard != nil) {
        pathParams[@"wildcard"] = wildcard;
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
/// Invoke Resource Put Method
/// Used to invoke the PUT method of the resource from an existing EMS EdgeModule.
///  @param mname Is the EMS EdgeModule name 
///
///  @param rname Is the unique EMS EdgeModule Resource name 
///
///  @param body Body Object 
///
///  @param xEmbarcaderoApplicationId  (optional)
///
///  @param xEmbarcaderoAppSecret  (optional)
///
///  @param xEmbarcaderoMasterSecret  (optional)
///
///  @returns void
///
-(NSURLSessionTask*) putResourceEndpointWithMname: (NSString*) mname
    rname: (NSString*) rname
    body: (NSObject*) body
    xEmbarcaderoApplicationId: (NSString*) xEmbarcaderoApplicationId
    xEmbarcaderoAppSecret: (NSString*) xEmbarcaderoAppSecret
    xEmbarcaderoMasterSecret: (NSString*) xEmbarcaderoMasterSecret
    completionHandler: (void (^)(NSError* error)) handler {
    // verify the required parameter 'mname' is set
    if (mname == nil) {
        NSParameterAssert(mname);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"mname"] };
            NSError* error = [NSError errorWithDomain:kSWGEdgeModulesInvokersApiErrorDomain code:kSWGEdgeModulesInvokersApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    // verify the required parameter 'rname' is set
    if (rname == nil) {
        NSParameterAssert(rname);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"rname"] };
            NSError* error = [NSError errorWithDomain:kSWGEdgeModulesInvokersApiErrorDomain code:kSWGEdgeModulesInvokersApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    // verify the required parameter 'body' is set
    if (body == nil) {
        NSParameterAssert(body);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"body"] };
            NSError* error = [NSError errorWithDomain:kSWGEdgeModulesInvokersApiErrorDomain code:kSWGEdgeModulesInvokersApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/edgemodules/{mname}/{rname}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (mname != nil) {
        pathParams[@"mname"] = mname;
    }
    if (rname != nil) {
        pathParams[@"rname"] = rname;
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
                              responseType: nil
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler(error);
                                }
                            }];
}

///
/// Invoke Resource/_* Put Method
/// Used to invoke the PUT method of the resource from an existing EMS EdgeModule.
///  @param mname Is the EMS EdgeModule name 
///
///  @param rname Is the unique EMS EdgeModule Resource name 
///
///  @param wildcard Is the Wild card part of the URL 
///
///  @param body Body Object 
///
///  @param xEmbarcaderoApplicationId  (optional)
///
///  @param xEmbarcaderoAppSecret  (optional)
///
///  @param xEmbarcaderoMasterSecret  (optional)
///
///  @returns void
///
-(NSURLSessionTask*) putResourceEndpointItemWithMname: (NSString*) mname
    rname: (NSString*) rname
    wildcard: (NSString*) wildcard
    body: (NSObject*) body
    xEmbarcaderoApplicationId: (NSString*) xEmbarcaderoApplicationId
    xEmbarcaderoAppSecret: (NSString*) xEmbarcaderoAppSecret
    xEmbarcaderoMasterSecret: (NSString*) xEmbarcaderoMasterSecret
    completionHandler: (void (^)(NSError* error)) handler {
    // verify the required parameter 'mname' is set
    if (mname == nil) {
        NSParameterAssert(mname);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"mname"] };
            NSError* error = [NSError errorWithDomain:kSWGEdgeModulesInvokersApiErrorDomain code:kSWGEdgeModulesInvokersApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    // verify the required parameter 'rname' is set
    if (rname == nil) {
        NSParameterAssert(rname);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"rname"] };
            NSError* error = [NSError errorWithDomain:kSWGEdgeModulesInvokersApiErrorDomain code:kSWGEdgeModulesInvokersApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    // verify the required parameter 'wildcard' is set
    if (wildcard == nil) {
        NSParameterAssert(wildcard);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"wildcard"] };
            NSError* error = [NSError errorWithDomain:kSWGEdgeModulesInvokersApiErrorDomain code:kSWGEdgeModulesInvokersApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    // verify the required parameter 'body' is set
    if (body == nil) {
        NSParameterAssert(body);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"body"] };
            NSError* error = [NSError errorWithDomain:kSWGEdgeModulesInvokersApiErrorDomain code:kSWGEdgeModulesInvokersApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/edgemodules/{mname}/{rname}/{wildcard}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (mname != nil) {
        pathParams[@"mname"] = mname;
    }
    if (rname != nil) {
        pathParams[@"rname"] = rname;
    }
    if (wildcard != nil) {
        pathParams[@"wildcard"] = wildcard;
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
                              responseType: nil
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler(error);
                                }
                            }];
}



@end
