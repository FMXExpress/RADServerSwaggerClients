import 'package:jaguar_retrofit/annotations/annotations.dart';
import 'package:jaguar_retrofit/jaguar_retrofit.dart';
import 'package:jaguar_serializer/jaguar_serializer.dart';
import 'package:jaguar_serializer/src/repo/repo.dart';
import 'dart:async';



part 'api_doc_api.jretro.dart';

@GenApiClient()
class ApiDocApi extends _$ApiDocApiClient implements ApiClient {
    final Route base;
    final SerializerRepo serializers;

    ApiDocApi({this.base, this.serializers});

    /// Get API EndPoints
    ///
    ///  |      Used to retrieve all the API EndPoints.
    @GetReq(path: "/api")
    Future<void> aPI(
        
        @Header("X-Embarcadero-Application-Id") String xEmbarcaderoApplicationId, 
        
        @Header("X-Embarcadero-App-Secret") String xEmbarcaderoAppSecret, 
        
        @Header("X-Embarcadero-Master-Secret") String xEmbarcaderoMasterSecret
    );

    /// Get JSON
    ///
    /// Get API in JSON format
    @GetReq(path: "/api/apidoc.json")
    Future<void> getAPIJSONFormat(
        
        @Header("X-Embarcadero-Application-Id") String xEmbarcaderoApplicationId, 
        
        @Header("X-Embarcadero-App-Secret") String xEmbarcaderoAppSecret, 
        
        @Header("X-Embarcadero-Master-Secret") String xEmbarcaderoMasterSecret
    );

    /// Get YAML
    ///
    /// Get API in YAML format
    @GetReq(path: "/api/apidoc.yaml")
    Future<void> getAPIYAMLFormat(
        
        @Header("X-Embarcadero-Application-Id") String xEmbarcaderoApplicationId, 
        
        @Header("X-Embarcadero-App-Secret") String xEmbarcaderoAppSecret, 
        
        @Header("X-Embarcadero-Master-Secret") String xEmbarcaderoMasterSecret
    );

    /// Get API EndPoint
    ///
    ///  |      Used to retrieve an EndPoint for the API EndPoints.
    @GetReq(path: "/api/:item/apidoc.yaml")
    Future<void> getAPIYAMLFormat EndPoint(
            @PathParam("item") String item
        ,
        @Header("X-Embarcadero-Application-Id") String xEmbarcaderoApplicationId, 
        
        @Header("X-Embarcadero-App-Secret") String xEmbarcaderoAppSecret, 
        
        @Header("X-Embarcadero-Master-Secret") String xEmbarcaderoMasterSecret
    );


}
