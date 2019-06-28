import 'package:jaguar_retrofit/annotations/annotations.dart';
import 'package:jaguar_retrofit/jaguar_retrofit.dart';
import 'package:jaguar_serializer/jaguar_serializer.dart';
import 'package:jaguar_serializer/src/repo/repo.dart';
import 'dart:async';

import 'package:swagger/model/edge_module_resource_object.dart';
import 'package:swagger/model/edge_module_object.dart';
import 'package:swagger/model/edge_module_resource_added_object.dart';
import 'package:swagger/model/edge_module_updated_object.dart';
import 'package:swagger/model/edge_module_resource_updated_object.dart';
import 'package:swagger/model/edge_module_resource_add_object.dart';
import 'package:swagger/model/edge_module_update_object.dart';
import 'package:swagger/model/fields_edge_module_object.dart';
import 'package:swagger/model/edge_module_resource_update_object.dart';
import 'package:swagger/model/edge_module_add_object.dart';
import 'package:swagger/model/edge_module_added_object.dart';


part 'edge_modules_api.jretro.dart';

@GenApiClient()
class EdgeModulesApi extends _$EdgeModulesApiClient implements ApiClient {
    final Route base;
    final SerializerRepo serializers;

    EdgeModulesApi({this.base, this.serializers});

    /// Get Module
    ///
    ///  |      Used to retrieve all data from &#x60;EdgeModule&#x60;.      Optional query param of **skip, limit, order, where** determines       size of returned array, filtered and order by.
    @GetReq(path: "/edgemodules/:mname")
    Future<EdgeModuleObject> getModule(
            @PathParam("mname") String mname
        ,
        @Header("X-Embarcadero-Application-Id") String xEmbarcaderoApplicationId, 
        
        @Header("X-Embarcadero-App-Secret") String xEmbarcaderoAppSecret, 
        
        @Header("X-Embarcadero-Master-Secret") String xEmbarcaderoMasterSecret
    );

    /// Get EdgeModule Resource
    ///
    ///  |      Used to retrieve all data from a resource of an EdgeModule. **mname** is the unique EMS EdgeModule identifier in the EMS database. **resourcename** is the name of the resource.
    @GetReq(path: "/edgemodules/:mname/resources/:name")
    Future<EdgeModuleResourceObject> getModuleResource(
            @PathParam("mname") String mname, 
            @PathParam("name") String name
        ,
        @Header("X-Embarcadero-Application-Id") String xEmbarcaderoApplicationId, 
        
        @Header("X-Embarcadero-App-Secret") String xEmbarcaderoAppSecret, 
        
        @Header("X-Embarcadero-Master-Secret") String xEmbarcaderoMasterSecret
    );

    /// Get EdgeModule Resources
    ///
    ///  |      Used to retrieve all data from the resources of an EdgeModule.
    @GetReq(path: "/edgemodules/:mname/resources")
    Future<List<EdgeModuleResourceObject>> getModuleResources(
            @PathParam("mname") String mname
        ,
        @Header("X-Embarcadero-Application-Id") String xEmbarcaderoApplicationId, 
        
        @Header("X-Embarcadero-App-Secret") String xEmbarcaderoAppSecret, 
        
        @Header("X-Embarcadero-Master-Secret") String xEmbarcaderoMasterSecret
    );

    /// Get Module
    ///
    ///  |      Used to retrieve all data from &#x60;EdgeModule&#x60;.      Optional query param of **skip, limit, order, where** determines       size of returned array, filtered and order by.
    @GetReq(path: "/edgemodules")
    Future<List<EdgeModuleObject>> getModules(
        
        @Header("X-Embarcadero-Application-Id") String xEmbarcaderoApplicationId, 
        
        @Header("X-Embarcadero-App-Secret") String xEmbarcaderoAppSecret, 
        
        @Header("X-Embarcadero-Master-Secret") String xEmbarcaderoMasterSecret
    );

    /// Get Fields
    ///
    ///  |      Used to retrieve all the &#x60;field names&#x60; of the EMS EdgeModule (including the custom fields).
    @GetReq(path: "/edgemodules/fields")
    Future<FieldsEdgeModuleObject> getModulesFields(
        
        @Header("X-Embarcadero-Application-Id") String xEmbarcaderoApplicationId, 
        
        @Header("X-Embarcadero-App-Secret") String xEmbarcaderoAppSecret, 
        
        @Header("X-Embarcadero-Master-Secret") String xEmbarcaderoMasterSecret
    );

    /// Get EdgeModules Resources
    ///
    ///  |      Used to retrieve all data from the resources of all EdgeModules.
    @GetReq(path: "/edgemodules/resources")
    Future<List<EdgeModuleResourceObject>> getResources(
        
        @Header("X-Embarcadero-Application-Id") String xEmbarcaderoApplicationId, 
        
        @Header("X-Embarcadero-App-Secret") String xEmbarcaderoAppSecret, 
        
        @Header("X-Embarcadero-Master-Secret") String xEmbarcaderoMasterSecret
    );

    /// Get Resource Fields
    ///
    ///  |      Used to retrieve the &#x60;field names&#x60; of all the resources of the EMS EdgeModule (including the custom fields).
    @GetReq(path: "/edgemodules/resources/fields")
    Future<FieldsEdgeModuleObject> getResourcesFields(
        
        @Header("X-Embarcadero-Application-Id") String xEmbarcaderoApplicationId, 
        
        @Header("X-Embarcadero-App-Secret") String xEmbarcaderoAppSecret, 
        
        @Header("X-Embarcadero-Master-Secret") String xEmbarcaderoMasterSecret
    );

    /// Add Module
    ///
    ///  |      Used to add a new &#x60;EdgeModule&#x60; object to the EMS database.
    @PostReq(path: "/edgemodules")
    Future<EdgeModuleAddedObject> registerModule(
        
        @Header("X-Embarcadero-Application-Id") String xEmbarcaderoApplicationId, 
        
        @Header("X-Embarcadero-App-Secret") String xEmbarcaderoAppSecret, 
        
        @Header("X-Embarcadero-Master-Secret") String xEmbarcaderoMasterSecret
        ,
        @AsJson() EdgeModuleAddObject body, 
    );

    /// Add Module Resource
    ///
    ///  |      Used to register a new resource from an EMS EdgeModule. **mname** is the unique EMS EdgeModule identifier in the EMS database.
    @PostReq(path: "/edgemodules/:mname/resources")
    Future<EdgeModuleResourceAddedObject> registerModuleResource(
            @PathParam("mname") String mname
        ,
        @Header("X-Embarcadero-Application-Id") String xEmbarcaderoApplicationId, 
        
        @Header("X-Embarcadero-App-Secret") String xEmbarcaderoAppSecret, 
        
        @Header("X-Embarcadero-Master-Secret") String xEmbarcaderoMasterSecret
        ,
        @AsJson() EdgeModuleResourceAddObject body, 
    );

    /// Delete Module
    ///
    ///  |      Used to delete an &#x60;EdgeModule Resource&#x60;. **mname** is the unique EMS EdgeModule identifier (MID) in the EMS database. **resourcename** is the name of the resource.
    @DeleteReq(path: "/edgemodules/:mname")
    Future<void> unregisterModule(
            @PathParam("mname") String mname
        ,
        @Header("X-Embarcadero-Application-Id") String xEmbarcaderoApplicationId, 
        
        @Header("X-Embarcadero-App-Secret") String xEmbarcaderoAppSecret, 
        
        @Header("X-Embarcadero-Master-Secret") String xEmbarcaderoMasterSecret
    );

    /// Delete Module Resource
    ///
    ///  |      Used to delete an &#x60;EdgeModule Resource&#x60;. **mname** is the unique EMS EdgeModule identifier (MID) in the EMS database. **resourcename** is the name of the resource.
    @DeleteReq(path: "/edgemodules/:mname/resources/:name")
    Future<void> unregisterModuleResource(
            @PathParam("mname") String mname, 
            @PathParam("name") String name
        ,
        @Header("X-Embarcadero-Application-Id") String xEmbarcaderoApplicationId, 
        
        @Header("X-Embarcadero-App-Secret") String xEmbarcaderoAppSecret, 
        
        @Header("X-Embarcadero-Master-Secret") String xEmbarcaderoMasterSecret
    );

    /// Update Module
    ///
    ///  |      Used to update an &#x60;EdgeModule&#x60;. **mname** is the unique EMS EdgeModule identifier (MID) in the EMS database.
    @PutReq(path: "/edgemodules/:mname")
    Future<EdgeModuleUpdatedObject> updateModule(
            @PathParam("mname") String mname
        ,
        @Header("X-Embarcadero-Application-Id") String xEmbarcaderoApplicationId, 
        
        @Header("X-Embarcadero-App-Secret") String xEmbarcaderoAppSecret, 
        
        @Header("X-Embarcadero-Master-Secret") String xEmbarcaderoMasterSecret
        ,
        @AsJson() EdgeModuleUpdateObject body, 
    );

    /// Update Module Resource
    ///
    ///  |      Used to update an &#x60;EdgeModule&#x60;. **mname** is the unique EMS EdgeModule identifier (MID) in the EMS database.
    @PutReq(path: "/edgemodules/:mname/resources/:name")
    Future<EdgeModuleResourceUpdatedObject> updateModuleResource(
            @PathParam("mname") String mname, 
            @PathParam("name") String name
        ,
        @Header("X-Embarcadero-Application-Id") String xEmbarcaderoApplicationId, 
        
        @Header("X-Embarcadero-App-Secret") String xEmbarcaderoAppSecret, 
        
        @Header("X-Embarcadero-Master-Secret") String xEmbarcaderoMasterSecret
        ,
        @AsJson() EdgeModuleResourceUpdateObject body, 
    );


}
