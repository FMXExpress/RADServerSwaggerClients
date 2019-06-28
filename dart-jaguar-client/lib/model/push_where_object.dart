import 'package:jaguar_serializer/jaguar_serializer.dart';

import 'package:swagger/model/push_where_object_device_token.dart';
part 'push_where_object.jser.dart';

class PushWhereObject {
  
  final String deviceType;
  //enum deviceTypeEnum {  ios,  android,  };
  final PushWhereObjectDeviceToken deviceToken;
  

  PushWhereObject(
    

{
     this.deviceType = null,  
     this.deviceToken = null 
    
    }
  );

  @override
  String toString() {
    return 'PushWhereObject[deviceType=$deviceType, deviceToken=$deviceToken, ]';
  }
}

@GenSerializer()
class PushWhereObjectSerializer extends Serializer<PushWhereObject> with _$PushWhereObjectSerializer {

}
