import 'package:jaguar_retrofit/annotations/annotations.dart';
import 'package:jaguar_retrofit/jaguar_retrofit.dart';
import 'package:jaguar_serializer/jaguar_serializer.dart';
import 'package:jaguar_serializer/src/repo/repo.dart';
import 'dart:async';

import 'package:swagger/model/object.dart';


part 'edge_modules_invokers_api.jretro.dart';

@GenApiClient()
class EdgeModulesInvokersApi extends _$EdgeModulesInvokersApiClient implements ApiClient {
    final Route base;
    final SerializerRepo serializers;

    EdgeModulesInvokersApi({this.base, this.serializers});

    /// Invoke Resource Delete Method
    ///
    /// Used to invoke the DELETE method of the resource from an existing EMS EdgeModule.
    @DeleteReq(path: "/edgemodules/:mname/:rname")
    Future<void> deleteResourceEndpoint(
            @PathParam("mname") String mname, 
            @PathParam("rname") String rname
        ,
        @Header("X-Embarcadero-Application-Id") String xEmbarcaderoApplicationId, 
        
        @Header("X-Embarcadero-App-Secret") String xEmbarcaderoAppSecret, 
        
        @Header("X-Embarcadero-Master-Secret") String xEmbarcaderoMasterSecret
    );

    /// Invoke Resource/_* Delete Method
    ///
    /// Used to invoke the DELETE method of the resource from an existing EMS EdgeModule.
    @DeleteReq(path: "/edgemodules/:mname/:rname/:wildcard")
    Future<void> deleteResourceEndpointItem(
            @PathParam("mname") String mname, 
            @PathParam("rname") String rname, 
            @PathParam("wildcard") String wildcard
        ,
        @Header("X-Embarcadero-Application-Id") String xEmbarcaderoApplicationId, 
        
        @Header("X-Embarcadero-App-Secret") String xEmbarcaderoAppSecret, 
        
        @Header("X-Embarcadero-Master-Secret") String xEmbarcaderoMasterSecret
    );

    /// Invoke Resource Get Method
    ///
    /// Used to invoke the GET method of the resource from an existing EMS EdgeModule.
    @GetReq(path: "/edgemodules/:mname/:rname")
    Future<void> getResourceEndpoint(
            @PathParam("mname") String mname, 
            @PathParam("rname") String rname
        ,
        @Header("X-Embarcadero-Application-Id") String xEmbarcaderoApplicationId, 
        
        @Header("X-Embarcadero-App-Secret") String xEmbarcaderoAppSecret, 
        
        @Header("X-Embarcadero-Master-Secret") String xEmbarcaderoMasterSecret
    );

    /// Invoke Resource/_* Get Method
    ///
    /// Used to invoke the GET method of the resource from an existing EMS EdgeModule.
    @GetReq(path: "/edgemodules/:mname/:rname/:wildcard")
    Future<void> getResourceEndpointItem(
            @PathParam("mname") String mname, 
            @PathParam("rname") String rname, 
            @PathParam("wildcard") String wildcard
        ,
        @Header("X-Embarcadero-Application-Id") String xEmbarcaderoApplicationId, 
        
        @Header("X-Embarcadero-App-Secret") String xEmbarcaderoAppSecret, 
        
        @Header("X-Embarcadero-Master-Secret") String xEmbarcaderoMasterSecret
    );

    /// Invoke Resource Patch Method
    ///
    /// Used to invoke the PATCH method of the resource from an existing EMS EdgeModule.
    @PatchReq(path: "/edgemodules/:mname/:rname")
    Future<void> patchResourceEndpoint(
            @PathParam("mname") String mname, 
            @PathParam("rname") String rname
        ,
        @Header("X-Embarcadero-Application-Id") String xEmbarcaderoApplicationId, 
        
        @Header("X-Embarcadero-App-Secret") String xEmbarcaderoAppSecret, 
        
        @Header("X-Embarcadero-Master-Secret") String xEmbarcaderoMasterSecret
        ,
        @AsJson() Object body, 
    );

    /// Invoke Resource/_* Patch Method
    ///
    /// Used to invoke the PATCH method of the resource from an existing EMS EdgeModule.
    @PatchReq(path: "/edgemodules/:mname/:rname/:wildcard")
    Future<void> patchResourceEndpointItem(
            @PathParam("mname") String mname, 
            @PathParam("rname") String rname, 
            @PathParam("wildcard") String wildcard
        ,
        @Header("X-Embarcadero-Application-Id") String xEmbarcaderoApplicationId, 
        
        @Header("X-Embarcadero-App-Secret") String xEmbarcaderoAppSecret, 
        
        @Header("X-Embarcadero-Master-Secret") String xEmbarcaderoMasterSecret
        ,
        @AsJson() Object body, 
    );

    /// Invoke Resource Post Method
    ///
    /// Used to invoke the POST method of the resource from an existing EMS EdgeModule.
    @PostReq(path: "/edgemodules/:mname/:rname")
    Future<void> postResourceEndpoint(
            @PathParam("mname") String mname, 
            @PathParam("rname") String rname
        ,
        @Header("X-Embarcadero-Application-Id") String xEmbarcaderoApplicationId, 
        
        @Header("X-Embarcadero-App-Secret") String xEmbarcaderoAppSecret, 
        
        @Header("X-Embarcadero-Master-Secret") String xEmbarcaderoMasterSecret
        ,
        @AsJson() Object body, 
    );

    /// Invoke Resource/_* Post Method
    ///
    /// Used to invoke the POST method of the resource from an existing EMS EdgeModule.
    @PostReq(path: "/edgemodules/:mname/:rname/:wildcard")
    Future<void> postResourceEndpointItem(
            @PathParam("mname") String mname, 
            @PathParam("rname") String rname, 
            @PathParam("wildcard") String wildcard
        ,
        @Header("X-Embarcadero-Application-Id") String xEmbarcaderoApplicationId, 
        
        @Header("X-Embarcadero-App-Secret") String xEmbarcaderoAppSecret, 
        
        @Header("X-Embarcadero-Master-Secret") String xEmbarcaderoMasterSecret
        ,
        @AsJson() Object body, 
    );

    /// Invoke Resource Put Method
    ///
    /// Used to invoke the PUT method of the resource from an existing EMS EdgeModule.
    @PutReq(path: "/edgemodules/:mname/:rname")
    Future<void> putResourceEndpoint(
            @PathParam("mname") String mname, 
            @PathParam("rname") String rname
        ,
        @Header("X-Embarcadero-Application-Id") String xEmbarcaderoApplicationId, 
        
        @Header("X-Embarcadero-App-Secret") String xEmbarcaderoAppSecret, 
        
        @Header("X-Embarcadero-Master-Secret") String xEmbarcaderoMasterSecret
        ,
        @AsJson() Object body, 
    );

    /// Invoke Resource/_* Put Method
    ///
    /// Used to invoke the PUT method of the resource from an existing EMS EdgeModule.
    @PutReq(path: "/edgemodules/:mname/:rname/:wildcard")
    Future<void> putResourceEndpointItem(
            @PathParam("mname") String mname, 
            @PathParam("rname") String rname, 
            @PathParam("wildcard") String wildcard
        ,
        @Header("X-Embarcadero-Application-Id") String xEmbarcaderoApplicationId, 
        
        @Header("X-Embarcadero-App-Secret") String xEmbarcaderoAppSecret, 
        
        @Header("X-Embarcadero-Master-Secret") String xEmbarcaderoMasterSecret
        ,
        @AsJson() Object body, 
    );


}
