import 'package:jaguar_retrofit/annotations/annotations.dart';
import 'package:jaguar_retrofit/jaguar_retrofit.dart';
import 'package:jaguar_serializer/jaguar_serializer.dart';
import 'package:jaguar_serializer/src/repo/repo.dart';
import 'dart:async';

import 'package:swagger/model/group_add_object.dart';
import 'package:swagger/model/update_group_object.dart';
import 'package:swagger/model/updated_group_object.dart';
import 'package:swagger/model/group_object.dart';
import 'package:swagger/model/field_group_object.dart';


part 'groups_api.jretro.dart';

@GenApiClient()
class GroupsApi extends _$GroupsApiClient implements ApiClient {
    final Route base;
    final SerializerRepo serializers;

    GroupsApi({this.base, this.serializers});

    /// Add Group
    ///
    ///  |      Used to add a new &#x60;Group&#x60; object to the EMS database.
    @PostReq(path: "/groups")
    Future<void> addGroup(
        
        @Header("X-Embarcadero-Application-Id") String xEmbarcaderoApplicationId, 
        
        @Header("X-Embarcadero-App-Secret") String xEmbarcaderoAppSecret, 
        
        @Header("X-Embarcadero-Master-Secret") String xEmbarcaderoMasterSecret
        ,
        @AsJson() GroupAddObject body, 
    );

    /// Delete Group
    ///
    ///  |      Used to delete a &#x60;Group&#x60;. **item** is the unique EMS Group name in the EMS database.
    @DeleteReq(path: "/groups/:item")
    Future<void> deleteGroup(
            @PathParam("item") String item
        ,
        @Header("X-Embarcadero-Application-Id") String xEmbarcaderoApplicationId, 
        
        @Header("X-Embarcadero-App-Secret") String xEmbarcaderoAppSecret, 
        
        @Header("X-Embarcadero-Master-Secret") String xEmbarcaderoMasterSecret
    );

    /// Get Group
    ///
    ///  |      Used to retrieve all data from a &#x60;Group&#x60;. **item** is the unique EMS Group name in the EMS database.
    @GetReq(path: "/groups/:item")
    Future<GroupObject> getGroup(
            @PathParam("item") String item
        ,
        @Header("X-Embarcadero-Application-Id") String xEmbarcaderoApplicationId, 
        
        @Header("X-Embarcadero-App-Secret") String xEmbarcaderoAppSecret, 
        
        @Header("X-Embarcadero-Master-Secret") String xEmbarcaderoMasterSecret
    );

    /// Get Fields
    ///
    ///  |      Used to retrieve all the &#x60;field names&#x60; of the EMS Group (including the custom fields).
    @GetReq(path: "/groups/fields")
    Future<List<FieldGroupObject>> getGroupFields(
        
        @Header("X-Embarcadero-Application-Id") String xEmbarcaderoApplicationId, 
        
        @Header("X-Embarcadero-App-Secret") String xEmbarcaderoAppSecret, 
        
        @Header("X-Embarcadero-Master-Secret") String xEmbarcaderoMasterSecret
    );

    /// Get Groups
    ///
    ///  |      Used to retrieve all data from &#x60;Groups&#x60;.      Optional query param of **skip, limit, order, where** determines       size of returned array, filtered and order by.
    @GetReq(path: "/groups")
    Future<List<GroupObject>> getGroups(
        
        @Header("X-Embarcadero-Application-Id") String xEmbarcaderoApplicationId, 
        
        @Header("X-Embarcadero-App-Secret") String xEmbarcaderoAppSecret, 
        
        @Header("X-Embarcadero-Master-Secret") String xEmbarcaderoMasterSecret
        ,
        @QueryParam("skip") num skip, 
        
        @QueryParam("limit") num limit, 
        
        @QueryParam("order") num order, 
        
        @QueryParam("where") String where
    );

    /// Update Group
    ///
    ///  |      Used to update a &#x60;Group&#x60;. **item** is the unique EMS Group name in the EMS database.
    @PutReq(path: "/groups/:item")
    Future<UpdatedGroupObject> updateGroup(
            @PathParam("item") String item
        ,
        @Header("X-Embarcadero-Application-Id") String xEmbarcaderoApplicationId, 
        
        @Header("X-Embarcadero-App-Secret") String xEmbarcaderoAppSecret, 
        
        @Header("X-Embarcadero-Master-Secret") String xEmbarcaderoMasterSecret
        ,
        @AsJson() UpdateGroupObject body, 
    );


}
