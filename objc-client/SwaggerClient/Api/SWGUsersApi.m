#import "SWGUsersApi.h"
#import "SWGQueryParamCollection.h"
#import "SWGApiClient.h"
#import "SWGFieldObject.h"
#import "SWGGroupName.h"
#import "SWGUpdateObject.h"
#import "SWGUpdatedObject.h"
#import "SWGUserCredentialsObject.h"
#import "SWGUserObject.h"
#import "SWGUserSignUpResponseObject.h"
#import "SWGUserTokenObject.h"
#import "SWGUseridObject.h"


@interface SWGUsersApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation SWGUsersApi

NSString* kSWGUsersApiErrorDomain = @"SWGUsersApiErrorDomain";
NSInteger kSWGUsersApiMissingParamErrorCode = 234513;

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
/// Add User
///  |      Used to add a new `User` object to the EMS database.
///  @param body Object to add a new EMS User in the EMS Server 
///
///  @param xEmbarcaderoApplicationId  (optional)
///
///  @param xEmbarcaderoAppSecret  (optional)
///
///  @param xEmbarcaderoMasterSecret  (optional)
///
///  @returns SWGUseridObject*
///
-(NSURLSessionTask*) addUserWithBody: (SWGUserCredentialsObject*) body
    xEmbarcaderoApplicationId: (NSString*) xEmbarcaderoApplicationId
    xEmbarcaderoAppSecret: (NSString*) xEmbarcaderoAppSecret
    xEmbarcaderoMasterSecret: (NSString*) xEmbarcaderoMasterSecret
    completionHandler: (void (^)(SWGUseridObject* output, NSError* error)) handler {
    // verify the required parameter 'body' is set
    if (body == nil) {
        NSParameterAssert(body);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"body"] };
            NSError* error = [NSError errorWithDomain:kSWGUsersApiErrorDomain code:kSWGUsersApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/users"];

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
                              responseType: @"SWGUseridObject*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGUseridObject*)data, error);
                                }
                            }];
}

///
/// Delete User
///  |      Used to delete a `User`. **id** is the unique EMS User identifier (UID) in the EMS database.
///  @param _id A user ID 
///
///  @param xEmbarcaderoApplicationId  (optional)
///
///  @param xEmbarcaderoAppSecret  (optional)
///
///  @param xEmbarcaderoMasterSecret  (optional)
///
///  @returns void
///
-(NSURLSessionTask*) deleteUserWithId: (NSString*) _id
    xEmbarcaderoApplicationId: (NSString*) xEmbarcaderoApplicationId
    xEmbarcaderoAppSecret: (NSString*) xEmbarcaderoAppSecret
    xEmbarcaderoMasterSecret: (NSString*) xEmbarcaderoMasterSecret
    completionHandler: (void (^)(NSError* error)) handler {
    // verify the required parameter '_id' is set
    if (_id == nil) {
        NSParameterAssert(_id);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"_id"] };
            NSError* error = [NSError errorWithDomain:kSWGUsersApiErrorDomain code:kSWGUsersApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/users/{id}"];

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
/// Get User
///  |      Used to retrieve all data from a `User`. **id** is the unique EMS User identifier (UID) in the EMS database.
///  @param _id A user ID 
///
///  @param xEmbarcaderoApplicationId  (optional)
///
///  @param xEmbarcaderoAppSecret  (optional)
///
///  @param xEmbarcaderoMasterSecret  (optional)
///
///  @returns SWGUserObject*
///
-(NSURLSessionTask*) getUserWithId: (NSString*) _id
    xEmbarcaderoApplicationId: (NSString*) xEmbarcaderoApplicationId
    xEmbarcaderoAppSecret: (NSString*) xEmbarcaderoAppSecret
    xEmbarcaderoMasterSecret: (NSString*) xEmbarcaderoMasterSecret
    completionHandler: (void (^)(SWGUserObject* output, NSError* error)) handler {
    // verify the required parameter '_id' is set
    if (_id == nil) {
        NSParameterAssert(_id);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"_id"] };
            NSError* error = [NSError errorWithDomain:kSWGUsersApiErrorDomain code:kSWGUsersApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/users/{id}"];

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
                              responseType: @"SWGUserObject*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGUserObject*)data, error);
                                }
                            }];
}

///
/// Get Fields
///  |      Used to retrieve all the `field names` of the EMS Users (including the custom fields).
///  @param xEmbarcaderoApplicationId  (optional)
///
///  @param xEmbarcaderoAppSecret  (optional)
///
///  @param xEmbarcaderoMasterSecret  (optional)
///
///  @returns NSArray<SWGFieldObject>*
///
-(NSURLSessionTask*) getUserFieldsWithXEmbarcaderoApplicationId: (NSString*) xEmbarcaderoApplicationId
    xEmbarcaderoAppSecret: (NSString*) xEmbarcaderoAppSecret
    xEmbarcaderoMasterSecret: (NSString*) xEmbarcaderoMasterSecret
    completionHandler: (void (^)(NSArray<SWGFieldObject>* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/users/fields"];

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
                              responseType: @"NSArray<SWGFieldObject>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<SWGFieldObject>*)data, error);
                                }
                            }];
}

///
/// Get User Groups
///  |      Used to retrieve the EMS Groups the EMS User belongs to. **id** is the unique EMS User identifier (UID) in the EMS database.
///  @param _id A user ID 
///
///  @param xEmbarcaderoApplicationId  (optional)
///
///  @param xEmbarcaderoAppSecret  (optional)
///
///  @param xEmbarcaderoMasterSecret  (optional)
///
///  @returns NSArray<SWGGroupName>*
///
-(NSURLSessionTask*) getUserGroupsWithId: (NSString*) _id
    xEmbarcaderoApplicationId: (NSString*) xEmbarcaderoApplicationId
    xEmbarcaderoAppSecret: (NSString*) xEmbarcaderoAppSecret
    xEmbarcaderoMasterSecret: (NSString*) xEmbarcaderoMasterSecret
    completionHandler: (void (^)(NSArray<SWGGroupName>* output, NSError* error)) handler {
    // verify the required parameter '_id' is set
    if (_id == nil) {
        NSParameterAssert(_id);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"_id"] };
            NSError* error = [NSError errorWithDomain:kSWGUsersApiErrorDomain code:kSWGUsersApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/users/{id}/groups"];

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
                              responseType: @"NSArray<SWGGroupName>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<SWGGroupName>*)data, error);
                                }
                            }];
}

///
/// Get Users
///  |      Used to retrieve all data from `Users`.      Optional query param of **skip, limit, order, where** determines       size of returned array, filtered and order by.
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
///  @returns NSArray<SWGUserObject>*
///
-(NSURLSessionTask*) getUsersWithXEmbarcaderoApplicationId: (NSString*) xEmbarcaderoApplicationId
    xEmbarcaderoAppSecret: (NSString*) xEmbarcaderoAppSecret
    xEmbarcaderoMasterSecret: (NSString*) xEmbarcaderoMasterSecret
    skip: (NSNumber*) skip
    limit: (NSNumber*) limit
    order: (NSNumber*) order
    where: (NSString*) where
    completionHandler: (void (^)(NSArray<SWGUserObject>* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/users"];

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
                              responseType: @"NSArray<SWGUserObject>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<SWGUserObject>*)data, error);
                                }
                            }];
}

///
/// Log In
///  |      Logs in to the EMS Server with a specific EMS User.
///  @param body A user object 
///
///  @param xEmbarcaderoApplicationId  (optional)
///
///  @param xEmbarcaderoAppSecret  (optional)
///
///  @param xEmbarcaderoMasterSecret  (optional)
///
///  @returns SWGUserTokenObject*
///
-(NSURLSessionTask*) loginUserWithBody: (SWGUserCredentialsObject*) body
    xEmbarcaderoApplicationId: (NSString*) xEmbarcaderoApplicationId
    xEmbarcaderoAppSecret: (NSString*) xEmbarcaderoAppSecret
    xEmbarcaderoMasterSecret: (NSString*) xEmbarcaderoMasterSecret
    completionHandler: (void (^)(SWGUserTokenObject* output, NSError* error)) handler {
    // verify the required parameter 'body' is set
    if (body == nil) {
        NSParameterAssert(body);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"body"] };
            NSError* error = [NSError errorWithDomain:kSWGUsersApiErrorDomain code:kSWGUsersApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/users/login"];

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
                              responseType: @"SWGUserTokenObject*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGUserTokenObject*)data, error);
                                }
                            }];
}

///
/// sPostLogoutSummaryTitle
/// sPostLogoutSummaryDesc
///  @param xEmbarcaderoApplicationId  (optional)
///
///  @param xEmbarcaderoAppSecret  (optional)
///
///  @param xEmbarcaderoMasterSecret  (optional)
///
///  @returns void
///
-(NSURLSessionTask*) logoutUserWithXEmbarcaderoApplicationId: (NSString*) xEmbarcaderoApplicationId
    xEmbarcaderoAppSecret: (NSString*) xEmbarcaderoAppSecret
    xEmbarcaderoMasterSecret: (NSString*) xEmbarcaderoMasterSecret
    completionHandler: (void (^)(NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/users/logout"];

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
/// Sign Up  User
///  |      Signs up to the EMS Server with an appropriate EMS User.
///  @param body Object to sign up a new EMS User in the EMS Server 
///
///  @param xEmbarcaderoApplicationId  (optional)
///
///  @param xEmbarcaderoAppSecret  (optional)
///
///  @param xEmbarcaderoMasterSecret  (optional)
///
///  @returns SWGUserSignUpResponseObject*
///
-(NSURLSessionTask*) signupUserWithBody: (SWGUserCredentialsObject*) body
    xEmbarcaderoApplicationId: (NSString*) xEmbarcaderoApplicationId
    xEmbarcaderoAppSecret: (NSString*) xEmbarcaderoAppSecret
    xEmbarcaderoMasterSecret: (NSString*) xEmbarcaderoMasterSecret
    completionHandler: (void (^)(SWGUserSignUpResponseObject* output, NSError* error)) handler {
    // verify the required parameter 'body' is set
    if (body == nil) {
        NSParameterAssert(body);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"body"] };
            NSError* error = [NSError errorWithDomain:kSWGUsersApiErrorDomain code:kSWGUsersApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/users/signup"];

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
                              responseType: @"SWGUserSignUpResponseObject*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGUserSignUpResponseObject*)data, error);
                                }
                            }];
}

///
/// Update User
///  |      Used to update a `User`. **id** is the unique EMS User identifier (UID) in the EMS database.
///  @param _id A user ID 
///
///  @param body Add any fieldName 
///
///  @param xEmbarcaderoApplicationId  (optional)
///
///  @param xEmbarcaderoAppSecret  (optional)
///
///  @param xEmbarcaderoMasterSecret  (optional)
///
///  @returns SWGUpdatedObject*
///
-(NSURLSessionTask*) updateUserWithId: (NSString*) _id
    body: (SWGUpdateObject*) body
    xEmbarcaderoApplicationId: (NSString*) xEmbarcaderoApplicationId
    xEmbarcaderoAppSecret: (NSString*) xEmbarcaderoAppSecret
    xEmbarcaderoMasterSecret: (NSString*) xEmbarcaderoMasterSecret
    completionHandler: (void (^)(SWGUpdatedObject* output, NSError* error)) handler {
    // verify the required parameter '_id' is set
    if (_id == nil) {
        NSParameterAssert(_id);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"_id"] };
            NSError* error = [NSError errorWithDomain:kSWGUsersApiErrorDomain code:kSWGUsersApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'body' is set
    if (body == nil) {
        NSParameterAssert(body);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"body"] };
            NSError* error = [NSError errorWithDomain:kSWGUsersApiErrorDomain code:kSWGUsersApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/users/{id}"];

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
                              responseType: @"SWGUpdatedObject*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGUpdatedObject*)data, error);
                                }
                            }];
}



@end
