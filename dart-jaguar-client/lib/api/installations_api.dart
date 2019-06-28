import 'package:jaguar_retrofit/annotations/annotations.dart';
import 'package:jaguar_retrofit/jaguar_retrofit.dart';
import 'package:jaguar_serializer/jaguar_serializer.dart';
import 'package:jaguar_serializer/src/repo/repo.dart';
import 'dart:async';

import 'package:swagger/model/channel_name.dart';
import 'package:swagger/model/field_installation_object.dart';
import 'package:swagger/model/updated_installation_object.dart';
import 'package:swagger/model/update_installation_object.dart';
import 'package:swagger/model/installation_added_object.dart';
import 'package:swagger/model/installation_object.dart';
import 'package:swagger/model/installation_add_object.dart';


part 'installations_api.jretro.dart';

@GenApiClient()
class InstallationsApi extends _$InstallationsApiClient implements ApiClient {
    final Route base;
    final SerializerRepo serializers;

    InstallationsApi({this.base, this.serializers});

    /// Add Installation
    ///
    ///  |      Used to add a new &#x60;Installation&#x60; object to the EMS database.
    @PostReq(path: "/installations")
    Future<InstallationAddedObject> addInstallation(
        
        @Header("X-Embarcadero-Application-Id") String xEmbarcaderoApplicationId, 
        
        @Header("X-Embarcadero-App-Secret") String xEmbarcaderoAppSecret, 
        
        @Header("X-Embarcadero-Master-Secret") String xEmbarcaderoMasterSecret
        ,
        @AsJson() InstallationAddObject body, 
    );

    /// Delete Installation
    ///
    ///  |      Used to delete an &#x60;Installation&#x60;. **id** is the unique EMS Installation identifier (IID) in the EMS database.
    @DeleteReq(path: "/installations/:id")
    Future<void> deleteInstallation(
            @PathParam("id") String id
        ,
        @Header("X-Embarcadero-Application-Id") String xEmbarcaderoApplicationId, 
        
        @Header("X-Embarcadero-App-Secret") String xEmbarcaderoAppSecret, 
        
        @Header("X-Embarcadero-Master-Secret") String xEmbarcaderoMasterSecret
    );

    /// Get Installation Channels
    ///
    ///  |       Used to retrieve the available channels to which the device has subscribed. **id** is the unique EMS Installation identifier (InstallationID) in the EMS database.
    @GetReq(path: "/installations/channels")
    Future<List<ChannelName>> getChannels(
        
        @Header("X-Embarcadero-Application-Id") String xEmbarcaderoApplicationId, 
        
        @Header("X-Embarcadero-App-Secret") String xEmbarcaderoAppSecret, 
        
        @Header("X-Embarcadero-Master-Secret") String xEmbarcaderoMasterSecret
    );

    /// Get Installation
    ///
    ///  |      Used to retrieve all data from a specific &#x60;Installation&#x60; (registered device). **id** is the unique EMS Installation identifier (InstallationID) in the EMS database.
    @GetReq(path: "/installations/:id")
    Future<InstallationObject> getInstallation(
            @PathParam("id") String id
        ,
        @Header("X-Embarcadero-Application-Id") String xEmbarcaderoApplicationId, 
        
        @Header("X-Embarcadero-App-Secret") String xEmbarcaderoAppSecret, 
        
        @Header("X-Embarcadero-Master-Secret") String xEmbarcaderoMasterSecret
    );

    /// Get Fields
    ///
    ///  |      Used to retrieve all the &#x60;field names&#x60; of the EMS Installation (including the custom fields).
    @GetReq(path: "/installations/fields")
    Future<List<FieldInstallationObject>> getInstallationFields(
        
        @Header("X-Embarcadero-Application-Id") String xEmbarcaderoApplicationId, 
        
        @Header("X-Embarcadero-App-Secret") String xEmbarcaderoAppSecret, 
        
        @Header("X-Embarcadero-Master-Secret") String xEmbarcaderoMasterSecret
    );

    /// Get Installations
    ///
    ///  |      Used to retrieve all data from &#x60;Installation&#x60;.      Optional query param of **skip, limit, order, where** determines       size of returned array, filtered and order by.
    @GetReq(path: "/installations")
    Future<List<InstallationObject>> getInstallations(
        
        @Header("X-Embarcadero-Application-Id") String xEmbarcaderoApplicationId, 
        
        @Header("X-Embarcadero-App-Secret") String xEmbarcaderoAppSecret, 
        
        @Header("X-Embarcadero-Master-Secret") String xEmbarcaderoMasterSecret
        ,
        @QueryParam("skip") num skip, 
        
        @QueryParam("limit") num limit, 
        
        @QueryParam("order") num order, 
        
        @QueryParam("where") String where
    );

    /// Update Installation
    ///
    ///  |      Used to update an &#x60;Installation&#x60;. **id** is the unique EMS Installation identifier (IID) in the EMS database.
    @PutReq(path: "/installations/:id")
    Future<UpdatedInstallationObject> updateInstallation(
            @PathParam("id") String id
        ,
        @Header("X-Embarcadero-Application-Id") String xEmbarcaderoApplicationId, 
        
        @Header("X-Embarcadero-App-Secret") String xEmbarcaderoAppSecret, 
        
        @Header("X-Embarcadero-Master-Secret") String xEmbarcaderoMasterSecret
        ,
        @AsJson() UpdateInstallationObject body, 
    );


}
