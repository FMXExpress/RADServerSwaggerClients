import 'package:jaguar_retrofit/annotations/annotations.dart';
import 'package:jaguar_retrofit/jaguar_retrofit.dart';
import 'package:jaguar_serializer/jaguar_serializer.dart';
import 'package:jaguar_serializer/src/repo/repo.dart';
import 'dart:async';

import 'package:swagger/model/version_object.dart';


part 'version_api.jretro.dart';

@GenApiClient()
class VersionApi extends _$VersionApiClient implements ApiClient {
    final Route base;
    final SerializerRepo serializers;

    VersionApi({this.base, this.serializers});

    /// Get version
    ///
    ///  |      Used to retrieve the &#x60;Version&#x60; of the EMS Server.
    @GetReq(path: "/version")
    Future<VersionObject> getVersion(
        
        @Header("X-Embarcadero-Application-Id") String xEmbarcaderoApplicationId, 
        
        @Header("X-Embarcadero-App-Secret") String xEmbarcaderoAppSecret, 
        
        @Header("X-Embarcadero-Master-Secret") String xEmbarcaderoMasterSecret
    );


}
