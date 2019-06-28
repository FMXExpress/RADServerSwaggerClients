import 'package:jaguar_retrofit/annotations/annotations.dart';
import 'package:jaguar_retrofit/jaguar_retrofit.dart';
import 'package:jaguar_serializer/jaguar_serializer.dart';
import 'package:jaguar_serializer/src/repo/repo.dart';
import 'dart:async';

import 'package:swagger/model/user_token_object.dart';
import 'package:swagger/model/user_credentials_object.dart';
import 'package:swagger/model/group_name.dart';
import 'package:swagger/model/field_object.dart';
import 'package:swagger/model/update_object.dart';
import 'package:swagger/model/user_object.dart';
import 'package:swagger/model/user_sign_up_response_object.dart';
import 'package:swagger/model/updated_object.dart';
import 'package:swagger/model/userid_object.dart';


part 'users_api.jretro.dart';

@GenApiClient()
class UsersApi extends _$UsersApiClient implements ApiClient {
    final Route base;
    final SerializerRepo serializers;

    UsersApi({this.base, this.serializers});

    /// Add User
    ///
    ///  |      Used to add a new &#x60;User&#x60; object to the EMS database.
    @PostReq(path: "/users")
    Future<UseridObject> addUser(
        
        @Header("X-Embarcadero-Application-Id") String xEmbarcaderoApplicationId, 
        
        @Header("X-Embarcadero-App-Secret") String xEmbarcaderoAppSecret, 
        
        @Header("X-Embarcadero-Master-Secret") String xEmbarcaderoMasterSecret
        ,
        @AsJson() UserCredentialsObject body, 
    );

    /// Delete User
    ///
    ///  |      Used to delete a &#x60;User&#x60;. **id** is the unique EMS User identifier (UID) in the EMS database.
    @DeleteReq(path: "/users/:id")
    Future<void> deleteUser(
            @PathParam("id") String id
        ,
        @Header("X-Embarcadero-Application-Id") String xEmbarcaderoApplicationId, 
        
        @Header("X-Embarcadero-App-Secret") String xEmbarcaderoAppSecret, 
        
        @Header("X-Embarcadero-Master-Secret") String xEmbarcaderoMasterSecret
    );

    /// Get User
    ///
    ///  |      Used to retrieve all data from a &#x60;User&#x60;. **id** is the unique EMS User identifier (UID) in the EMS database.
    @GetReq(path: "/users/:id")
    Future<UserObject> getUser(
            @PathParam("id") String id
        ,
        @Header("X-Embarcadero-Application-Id") String xEmbarcaderoApplicationId, 
        
        @Header("X-Embarcadero-App-Secret") String xEmbarcaderoAppSecret, 
        
        @Header("X-Embarcadero-Master-Secret") String xEmbarcaderoMasterSecret
    );

    /// Get Fields
    ///
    ///  |      Used to retrieve all the &#x60;field names&#x60; of the EMS Users (including the custom fields).
    @GetReq(path: "/users/fields")
    Future<List<FieldObject>> getUserFields(
        
        @Header("X-Embarcadero-Application-Id") String xEmbarcaderoApplicationId, 
        
        @Header("X-Embarcadero-App-Secret") String xEmbarcaderoAppSecret, 
        
        @Header("X-Embarcadero-Master-Secret") String xEmbarcaderoMasterSecret
    );

    /// Get User Groups
    ///
    ///  |      Used to retrieve the EMS Groups the EMS User belongs to. **id** is the unique EMS User identifier (UID) in the EMS database.
    @GetReq(path: "/users/:id/groups")
    Future<List<GroupName>> getUserGroups(
            @PathParam("id") String id
        ,
        @Header("X-Embarcadero-Application-Id") String xEmbarcaderoApplicationId, 
        
        @Header("X-Embarcadero-App-Secret") String xEmbarcaderoAppSecret, 
        
        @Header("X-Embarcadero-Master-Secret") String xEmbarcaderoMasterSecret
    );

    /// Get Users
    ///
    ///  |      Used to retrieve all data from &#x60;Users&#x60;.      Optional query param of **skip, limit, order, where** determines       size of returned array, filtered and order by.
    @GetReq(path: "/users")
    Future<List<UserObject>> getUsers(
        
        @Header("X-Embarcadero-Application-Id") String xEmbarcaderoApplicationId, 
        
        @Header("X-Embarcadero-App-Secret") String xEmbarcaderoAppSecret, 
        
        @Header("X-Embarcadero-Master-Secret") String xEmbarcaderoMasterSecret
        ,
        @QueryParam("skip") num skip, 
        
        @QueryParam("limit") num limit, 
        
        @QueryParam("order") num order, 
        
        @QueryParam("where") String where
    );

    /// Log In
    ///
    ///  |      Logs in to the EMS Server with a specific EMS User.
    @PostReq(path: "/users/login")
    Future<UserTokenObject> loginUser(
        
        @Header("X-Embarcadero-Application-Id") String xEmbarcaderoApplicationId, 
        
        @Header("X-Embarcadero-App-Secret") String xEmbarcaderoAppSecret, 
        
        @Header("X-Embarcadero-Master-Secret") String xEmbarcaderoMasterSecret
        ,
        @AsJson() UserCredentialsObject body, 
    );

    /// sPostLogoutSummaryTitle
    ///
    /// sPostLogoutSummaryDesc
    @PostReq(path: "/users/logout")
    Future<void> logoutUser(
        
        @Header("X-Embarcadero-Application-Id") String xEmbarcaderoApplicationId, 
        
        @Header("X-Embarcadero-App-Secret") String xEmbarcaderoAppSecret, 
        
        @Header("X-Embarcadero-Master-Secret") String xEmbarcaderoMasterSecret
    );

    /// Sign Up  User
    ///
    ///  |      Signs up to the EMS Server with an appropriate EMS User.
    @PostReq(path: "/users/signup")
    Future<UserSignUpResponseObject> signupUser(
        
        @Header("X-Embarcadero-Application-Id") String xEmbarcaderoApplicationId, 
        
        @Header("X-Embarcadero-App-Secret") String xEmbarcaderoAppSecret, 
        
        @Header("X-Embarcadero-Master-Secret") String xEmbarcaderoMasterSecret
        ,
        @AsJson() UserCredentialsObject body, 
    );

    /// Update User
    ///
    ///  |      Used to update a &#x60;User&#x60;. **id** is the unique EMS User identifier (UID) in the EMS database.
    @PutReq(path: "/users/:id")
    Future<UpdatedObject> updateUser(
            @PathParam("id") String id
        ,
        @Header("X-Embarcadero-Application-Id") String xEmbarcaderoApplicationId, 
        
        @Header("X-Embarcadero-App-Secret") String xEmbarcaderoAppSecret, 
        
        @Header("X-Embarcadero-Master-Secret") String xEmbarcaderoMasterSecret
        ,
        @AsJson() UpdateObject body, 
    );


}
