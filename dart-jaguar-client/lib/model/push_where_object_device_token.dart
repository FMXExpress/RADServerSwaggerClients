import 'package:jaguar_serializer/jaguar_serializer.dart';

part 'push_where_object_device_token.jser.dart';

class PushWhereObjectDeviceToken {
  
  final List<String> $In;
  

  PushWhereObjectDeviceToken(
    

{
    
     this.$In = const [] 
    }
  );

  @override
  String toString() {
    return 'PushWhereObjectDeviceToken[$In=$$In, ]';
  }
}

@GenSerializer()
class PushWhereObjectDeviceTokenSerializer extends Serializer<PushWhereObjectDeviceToken> with _$PushWhereObjectDeviceTokenSerializer {

}
