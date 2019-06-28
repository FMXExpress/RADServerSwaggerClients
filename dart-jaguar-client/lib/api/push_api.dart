import 'package:jaguar_retrofit/annotations/annotations.dart';
import 'package:jaguar_retrofit/jaguar_retrofit.dart';
import 'package:jaguar_serializer/jaguar_serializer.dart';
import 'package:jaguar_serializer/src/repo/repo.dart';
import 'dart:async';

import 'package:swagger/model/push_object.dart';


part 'push_api.jretro.dart';

@GenApiClient()
class PushApi extends _$PushApiClient implements ApiClient {
    final Route base;
    final SerializerRepo serializers;

    PushApi({this.base, this.serializers});

    /// Send Push
    ///
    /// Used to send a push notification message to a registered device
    @PostReq(path: "/push")
    Future<void> send(
        
        @Header("X-Embarcadero-Application-Id") String xEmbarcaderoApplicationId, 
        
        @Header("X-Embarcadero-App-Secret") String xEmbarcaderoAppSecret, 
        
        @Header("X-Embarcadero-Master-Secret") String xEmbarcaderoMasterSecret
        ,
        @AsJson() PushObject body, 
    );


}
