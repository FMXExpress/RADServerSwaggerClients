import 'package:jaguar_serializer/jaguar_serializer.dart';

import 'package:swagger/model/meta_installation_object.dart';
part 'installation_object.jser.dart';

class InstallationObject {
  
  final String id;
  
  final String deviceToken;
  
  final String deviceType;
  //enum deviceTypeEnum {  ios,  android,  };
  final MetaInstallationObject meta;
  
  final List<String> channels;
  

  InstallationObject(
    

{
    
     this.id = null,  
     this.deviceToken = null,  
     this.deviceType = null,  
     this.meta = null,   this.channels = const [] 
    
    }
  );

  @override
  String toString() {
    return 'InstallationObject[id=$id, deviceToken=$deviceToken, deviceType=$deviceType, meta=$meta, channels=$channels, ]';
  }
}

@GenSerializer()
class InstallationObjectSerializer extends Serializer<InstallationObject> with _$InstallationObjectSerializer {

}
