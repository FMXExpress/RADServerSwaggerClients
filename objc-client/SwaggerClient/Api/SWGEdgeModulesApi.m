#import "SWGEdgeModulesApi.h"
#import "SWGQueryParamCollection.h"
#import "SWGApiClient.h"
#import "SWGEdgeModuleAddObject.h"
#import "SWGEdgeModuleAddedObject.h"
#import "SWGEdgeModuleObject.h"
#import "SWGEdgeModuleResourceAddObject.h"
#import "SWGEdgeModuleResourceAddedObject.h"
#import "SWGEdgeModuleResourceObject.h"
#import "SWGEdgeModuleResourceUpdateObject.h"
#import "SWGEdgeModuleResourceUpdatedObject.h"
#import "SWGEdgeModuleUpdateObject.h"
#import "SWGEdgeModuleUpdatedObject.h"
#import "SWGFieldsEdgeModuleObject.h"


@interface SWGEdgeModulesApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation SWGEdgeModulesApi

NSString* kSWGEdgeModulesApiErrorDomain = @"SWGEdgeModulesApiErrorDomain";
NSInteger kSWGEdgeModulesApiMissingParamErrorCode = 234513;

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
/// Get Module
///  |      Used to retrieve all data from `EdgeModule`.      Optional query param of **skip, limit, order, where** determines       size of returned array, filtered and order by.
///  @param mname Is the unique EMS EdgeModule identifier 
///
///  @param xEmbarcaderoApplicationId  (optional)
///
///  @param xEmbarcaderoAppSecret  (optional)
///
///  @param xEmbarcaderoMasterSecret  (optional)
///
///  @returns SWGEdgeModuleObject*
///
-(NSURLSessionTask*) getModuleWithMname: (NSString*) mname
    xEmbarcaderoApplicationId: (NSString*) xEmbarcaderoApplicationId
    xEmbarcaderoAppSecret: (NSString*) xEmbarcaderoAppSecret
    xEmbarcaderoMasterSecret: (NSString*) xEmbarcaderoMasterSecret
    completionHandler: (void (^)(SWGEdgeModuleObject* output, NSError* error)) handler {
    // verify the required parameter 'mname' is set
    if (mname == nil) {
        NSParameterAssert(mname);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"mname"] };
            NSError* error = [NSError errorWithDomain:kSWGEdgeModulesApiErrorDomain code:kSWGEdgeModulesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/edgemodules/{mname}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (mname != nil) {
        pathParams[@"mname"] = mname;
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
                              responseType: @"SWGEdgeModuleObject*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGEdgeModuleObject*)data, error);
                                }
                            }];
}

///
/// Get EdgeModule Resource
///  |      Used to retrieve all data from a resource of an EdgeModule. **mname** is the unique EMS EdgeModule identifier in the EMS database. **resourcename** is the name of the resource.
///  @param mname Is the unique EMS EdgeModule identifier 
///
///  @param name Is the unique EMS EdgeModule Resource name 
///
///  @param xEmbarcaderoApplicationId  (optional)
///
///  @param xEmbarcaderoAppSecret  (optional)
///
///  @param xEmbarcaderoMasterSecret  (optional)
///
///  @returns SWGEdgeModuleResourceObject*
///
-(NSURLSessionTask*) getModuleResourceWithMname: (NSString*) mname
    name: (NSString*) name
    xEmbarcaderoApplicationId: (NSString*) xEmbarcaderoApplicationId
    xEmbarcaderoAppSecret: (NSString*) xEmbarcaderoAppSecret
    xEmbarcaderoMasterSecret: (NSString*) xEmbarcaderoMasterSecret
    completionHandler: (void (^)(SWGEdgeModuleResourceObject* output, NSError* error)) handler {
    // verify the required parameter 'mname' is set
    if (mname == nil) {
        NSParameterAssert(mname);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"mname"] };
            NSError* error = [NSError errorWithDomain:kSWGEdgeModulesApiErrorDomain code:kSWGEdgeModulesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'name' is set
    if (name == nil) {
        NSParameterAssert(name);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"name"] };
            NSError* error = [NSError errorWithDomain:kSWGEdgeModulesApiErrorDomain code:kSWGEdgeModulesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/edgemodules/{mname}/resources/{name}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (mname != nil) {
        pathParams[@"mname"] = mname;
    }
    if (name != nil) {
        pathParams[@"name"] = name;
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
                              responseType: @"SWGEdgeModuleResourceObject*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGEdgeModuleResourceObject*)data, error);
                                }
                            }];
}

///
/// Get EdgeModule Resources
///  |      Used to retrieve all data from the resources of an EdgeModule.
///  @param mname Is the unique EMS EdgeModule identifier 
///
///  @param xEmbarcaderoApplicationId  (optional)
///
///  @param xEmbarcaderoAppSecret  (optional)
///
///  @param xEmbarcaderoMasterSecret  (optional)
///
///  @returns NSArray<SWGEdgeModuleResourceObject>*
///
-(NSURLSessionTask*) getModuleResourcesWithMname: (NSString*) mname
    xEmbarcaderoApplicationId: (NSString*) xEmbarcaderoApplicationId
    xEmbarcaderoAppSecret: (NSString*) xEmbarcaderoAppSecret
    xEmbarcaderoMasterSecret: (NSString*) xEmbarcaderoMasterSecret
    completionHandler: (void (^)(NSArray<SWGEdgeModuleResourceObject>* output, NSError* error)) handler {
    // verify the required parameter 'mname' is set
    if (mname == nil) {
        NSParameterAssert(mname);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"mname"] };
            NSError* error = [NSError errorWithDomain:kSWGEdgeModulesApiErrorDomain code:kSWGEdgeModulesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/edgemodules/{mname}/resources"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (mname != nil) {
        pathParams[@"mname"] = mname;
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
                              responseType: @"NSArray<SWGEdgeModuleResourceObject>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<SWGEdgeModuleResourceObject>*)data, error);
                                }
                            }];
}

///
/// Get Module
///  |      Used to retrieve all data from `EdgeModule`.      Optional query param of **skip, limit, order, where** determines       size of returned array, filtered and order by.
///  @param xEmbarcaderoApplicationId  (optional)
///
///  @param xEmbarcaderoAppSecret  (optional)
///
///  @param xEmbarcaderoMasterSecret  (optional)
///
///  @returns NSArray<SWGEdgeModuleObject>*
///
-(NSURLSessionTask*) getModulesWithXEmbarcaderoApplicationId: (NSString*) xEmbarcaderoApplicationId
    xEmbarcaderoAppSecret: (NSString*) xEmbarcaderoAppSecret
    xEmbarcaderoMasterSecret: (NSString*) xEmbarcaderoMasterSecret
    completionHandler: (void (^)(NSArray<SWGEdgeModuleObject>* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/edgemodules"];

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
                              responseType: @"NSArray<SWGEdgeModuleObject>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<SWGEdgeModuleObject>*)data, error);
                                }
                            }];
}

///
/// Get Fields
///  |      Used to retrieve all the `field names` of the EMS EdgeModule (including the custom fields).
///  @param xEmbarcaderoApplicationId  (optional)
///
///  @param xEmbarcaderoAppSecret  (optional)
///
///  @param xEmbarcaderoMasterSecret  (optional)
///
///  @returns SWGFieldsEdgeModuleObject*
///
-(NSURLSessionTask*) getModulesFieldsWithXEmbarcaderoApplicationId: (NSString*) xEmbarcaderoApplicationId
    xEmbarcaderoAppSecret: (NSString*) xEmbarcaderoAppSecret
    xEmbarcaderoMasterSecret: (NSString*) xEmbarcaderoMasterSecret
    completionHandler: (void (^)(SWGFieldsEdgeModuleObject* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/edgemodules/fields"];

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
                              responseType: @"SWGFieldsEdgeModuleObject*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGFieldsEdgeModuleObject*)data, error);
                                }
                            }];
}

///
/// Get EdgeModules Resources
///  |      Used to retrieve all data from the resources of all EdgeModules.
///  @param xEmbarcaderoApplicationId  (optional)
///
///  @param xEmbarcaderoAppSecret  (optional)
///
///  @param xEmbarcaderoMasterSecret  (optional)
///
///  @returns NSArray<SWGEdgeModuleResourceObject>*
///
-(NSURLSessionTask*) getResourcesWithXEmbarcaderoApplicationId: (NSString*) xEmbarcaderoApplicationId
    xEmbarcaderoAppSecret: (NSString*) xEmbarcaderoAppSecret
    xEmbarcaderoMasterSecret: (NSString*) xEmbarcaderoMasterSecret
    completionHandler: (void (^)(NSArray<SWGEdgeModuleResourceObject>* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/edgemodules/resources"];

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
                              responseType: @"NSArray<SWGEdgeModuleResourceObject>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<SWGEdgeModuleResourceObject>*)data, error);
                                }
                            }];
}

///
/// Get Resource Fields
///  |      Used to retrieve the `field names` of all the resources of the EMS EdgeModule (including the custom fields).
///  @param xEmbarcaderoApplicationId  (optional)
///
///  @param xEmbarcaderoAppSecret  (optional)
///
///  @param xEmbarcaderoMasterSecret  (optional)
///
///  @returns SWGFieldsEdgeModuleObject*
///
-(NSURLSessionTask*) getResourcesFieldsWithXEmbarcaderoApplicationId: (NSString*) xEmbarcaderoApplicationId
    xEmbarcaderoAppSecret: (NSString*) xEmbarcaderoAppSecret
    xEmbarcaderoMasterSecret: (NSString*) xEmbarcaderoMasterSecret
    completionHandler: (void (^)(SWGFieldsEdgeModuleObject* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/edgemodules/resources/fields"];

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
                              responseType: @"SWGFieldsEdgeModuleObject*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGFieldsEdgeModuleObject*)data, error);
                                }
                            }];
}

///
/// Add Module
///  |      Used to add a new `EdgeModule` object to the EMS database.
///  @param body EdgeModule object to add. protocolprops example string {\\\"port\\\":8082,\\\"host\\\":\\\"10.150.40.52\\\"} 
///
///  @param xEmbarcaderoApplicationId  (optional)
///
///  @param xEmbarcaderoAppSecret  (optional)
///
///  @param xEmbarcaderoMasterSecret  (optional)
///
///  @returns SWGEdgeModuleAddedObject*
///
-(NSURLSessionTask*) registerModuleWithBody: (SWGEdgeModuleAddObject*) body
    xEmbarcaderoApplicationId: (NSString*) xEmbarcaderoApplicationId
    xEmbarcaderoAppSecret: (NSString*) xEmbarcaderoAppSecret
    xEmbarcaderoMasterSecret: (NSString*) xEmbarcaderoMasterSecret
    completionHandler: (void (^)(SWGEdgeModuleAddedObject* output, NSError* error)) handler {
    // verify the required parameter 'body' is set
    if (body == nil) {
        NSParameterAssert(body);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"body"] };
            NSError* error = [NSError errorWithDomain:kSWGEdgeModulesApiErrorDomain code:kSWGEdgeModulesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/edgemodules"];

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
                              responseType: @"SWGEdgeModuleAddedObject*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGEdgeModuleAddedObject*)data, error);
                                }
                            }];
}

///
/// Add Module Resource
///  |      Used to register a new resource from an EMS EdgeModule. **mname** is the unique EMS EdgeModule identifier in the EMS database.
///  @param mname Is the unique EMS EdgeModule identifier 
///
///  @param body EdgModule Resource add object. protocolprops string example {\\\"port\\\":8082,\\\"host\\\":\\\"10.150.40.52\\\"} 
///
///  @param xEmbarcaderoApplicationId  (optional)
///
///  @param xEmbarcaderoAppSecret  (optional)
///
///  @param xEmbarcaderoMasterSecret  (optional)
///
///  @returns SWGEdgeModuleResourceAddedObject*
///
-(NSURLSessionTask*) registerModuleResourceWithMname: (NSString*) mname
    body: (SWGEdgeModuleResourceAddObject*) body
    xEmbarcaderoApplicationId: (NSString*) xEmbarcaderoApplicationId
    xEmbarcaderoAppSecret: (NSString*) xEmbarcaderoAppSecret
    xEmbarcaderoMasterSecret: (NSString*) xEmbarcaderoMasterSecret
    completionHandler: (void (^)(SWGEdgeModuleResourceAddedObject* output, NSError* error)) handler {
    // verify the required parameter 'mname' is set
    if (mname == nil) {
        NSParameterAssert(mname);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"mname"] };
            NSError* error = [NSError errorWithDomain:kSWGEdgeModulesApiErrorDomain code:kSWGEdgeModulesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'body' is set
    if (body == nil) {
        NSParameterAssert(body);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"body"] };
            NSError* error = [NSError errorWithDomain:kSWGEdgeModulesApiErrorDomain code:kSWGEdgeModulesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/edgemodules/{mname}/resources"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (mname != nil) {
        pathParams[@"mname"] = mname;
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
                              responseType: @"SWGEdgeModuleResourceAddedObject*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGEdgeModuleResourceAddedObject*)data, error);
                                }
                            }];
}

///
/// Delete Module
///  |      Used to delete an `EdgeModule Resource`. **mname** is the unique EMS EdgeModule identifier (MID) in the EMS database. **resourcename** is the name of the resource.
///  @param mname Is the unique EMS EdgeModule identifier 
///
///  @param xEmbarcaderoApplicationId  (optional)
///
///  @param xEmbarcaderoAppSecret  (optional)
///
///  @param xEmbarcaderoMasterSecret  (optional)
///
///  @returns void
///
-(NSURLSessionTask*) unregisterModuleWithMname: (NSString*) mname
    xEmbarcaderoApplicationId: (NSString*) xEmbarcaderoApplicationId
    xEmbarcaderoAppSecret: (NSString*) xEmbarcaderoAppSecret
    xEmbarcaderoMasterSecret: (NSString*) xEmbarcaderoMasterSecret
    completionHandler: (void (^)(NSError* error)) handler {
    // verify the required parameter 'mname' is set
    if (mname == nil) {
        NSParameterAssert(mname);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"mname"] };
            NSError* error = [NSError errorWithDomain:kSWGEdgeModulesApiErrorDomain code:kSWGEdgeModulesApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/edgemodules/{mname}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (mname != nil) {
        pathParams[@"mname"] = mname;
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
/// Delete Module Resource
///  |      Used to delete an `EdgeModule Resource`. **mname** is the unique EMS EdgeModule identifier (MID) in the EMS database. **resourcename** is the name of the resource.
///  @param mname Is the unique EMS EdgeModule identifier 
///
///  @param name Is the unique EMS EdgeModule Resource name 
///
///  @param xEmbarcaderoApplicationId  (optional)
///
///  @param xEmbarcaderoAppSecret  (optional)
///
///  @param xEmbarcaderoMasterSecret  (optional)
///
///  @returns void
///
-(NSURLSessionTask*) unregisterModuleResourceWithMname: (NSString*) mname
    name: (NSString*) name
    xEmbarcaderoApplicationId: (NSString*) xEmbarcaderoApplicationId
    xEmbarcaderoAppSecret: (NSString*) xEmbarcaderoAppSecret
    xEmbarcaderoMasterSecret: (NSString*) xEmbarcaderoMasterSecret
    completionHandler: (void (^)(NSError* error)) handler {
    // verify the required parameter 'mname' is set
    if (mname == nil) {
        NSParameterAssert(mname);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"mname"] };
            NSError* error = [NSError errorWithDomain:kSWGEdgeModulesApiErrorDomain code:kSWGEdgeModulesApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    // verify the required parameter 'name' is set
    if (name == nil) {
        NSParameterAssert(name);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"name"] };
            NSError* error = [NSError errorWithDomain:kSWGEdgeModulesApiErrorDomain code:kSWGEdgeModulesApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/edgemodules/{mname}/resources/{name}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (mname != nil) {
        pathParams[@"mname"] = mname;
    }
    if (name != nil) {
        pathParams[@"name"] = name;
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
/// Update Module
///  |      Used to update an `EdgeModule`. **mname** is the unique EMS EdgeModule identifier (MID) in the EMS database.
///  @param mname Is the unique EMS EdgeModule identifier 
///
///  @param body EdgModule Resource add object. protocolprops string example {\\\"port\\\":8082,\\\"host\\\":\\\"10.150.40.52\\\"} 
///
///  @param xEmbarcaderoApplicationId  (optional)
///
///  @param xEmbarcaderoAppSecret  (optional)
///
///  @param xEmbarcaderoMasterSecret  (optional)
///
///  @returns SWGEdgeModuleUpdatedObject*
///
-(NSURLSessionTask*) updateModuleWithMname: (NSString*) mname
    body: (SWGEdgeModuleUpdateObject*) body
    xEmbarcaderoApplicationId: (NSString*) xEmbarcaderoApplicationId
    xEmbarcaderoAppSecret: (NSString*) xEmbarcaderoAppSecret
    xEmbarcaderoMasterSecret: (NSString*) xEmbarcaderoMasterSecret
    completionHandler: (void (^)(SWGEdgeModuleUpdatedObject* output, NSError* error)) handler {
    // verify the required parameter 'mname' is set
    if (mname == nil) {
        NSParameterAssert(mname);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"mname"] };
            NSError* error = [NSError errorWithDomain:kSWGEdgeModulesApiErrorDomain code:kSWGEdgeModulesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'body' is set
    if (body == nil) {
        NSParameterAssert(body);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"body"] };
            NSError* error = [NSError errorWithDomain:kSWGEdgeModulesApiErrorDomain code:kSWGEdgeModulesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/edgemodules/{mname}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (mname != nil) {
        pathParams[@"mname"] = mname;
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
                              responseType: @"SWGEdgeModuleUpdatedObject*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGEdgeModuleUpdatedObject*)data, error);
                                }
                            }];
}

///
/// Update Module Resource
///  |      Used to update an `EdgeModule`. **mname** is the unique EMS EdgeModule identifier (MID) in the EMS database.
///  @param mname Is the unique EMS EdgeModule identifier 
///
///  @param name Is the unique EMS EdgeModule Resource name 
///
///  @param body EdgModule Resource add object. protocolprops string example {\\\"port\\\":8082,\\\"host\\\":\\\"10.150.40.52\\\"} 
///
///  @param xEmbarcaderoApplicationId  (optional)
///
///  @param xEmbarcaderoAppSecret  (optional)
///
///  @param xEmbarcaderoMasterSecret  (optional)
///
///  @returns SWGEdgeModuleResourceUpdatedObject*
///
-(NSURLSessionTask*) updateModuleResourceWithMname: (NSString*) mname
    name: (NSString*) name
    body: (SWGEdgeModuleResourceUpdateObject*) body
    xEmbarcaderoApplicationId: (NSString*) xEmbarcaderoApplicationId
    xEmbarcaderoAppSecret: (NSString*) xEmbarcaderoAppSecret
    xEmbarcaderoMasterSecret: (NSString*) xEmbarcaderoMasterSecret
    completionHandler: (void (^)(SWGEdgeModuleResourceUpdatedObject* output, NSError* error)) handler {
    // verify the required parameter 'mname' is set
    if (mname == nil) {
        NSParameterAssert(mname);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"mname"] };
            NSError* error = [NSError errorWithDomain:kSWGEdgeModulesApiErrorDomain code:kSWGEdgeModulesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'name' is set
    if (name == nil) {
        NSParameterAssert(name);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"name"] };
            NSError* error = [NSError errorWithDomain:kSWGEdgeModulesApiErrorDomain code:kSWGEdgeModulesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'body' is set
    if (body == nil) {
        NSParameterAssert(body);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"body"] };
            NSError* error = [NSError errorWithDomain:kSWGEdgeModulesApiErrorDomain code:kSWGEdgeModulesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/edgemodules/{mname}/resources/{name}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (mname != nil) {
        pathParams[@"mname"] = mname;
    }
    if (name != nil) {
        pathParams[@"name"] = name;
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
                              responseType: @"SWGEdgeModuleResourceUpdatedObject*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGEdgeModuleResourceUpdatedObject*)data, error);
                                }
                            }];
}



@end
