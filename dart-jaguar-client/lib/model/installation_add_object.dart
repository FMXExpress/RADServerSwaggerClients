import 'package:jaguar_serializer/jaguar_serializer.dart';

part 'installation_add_object.jser.dart';

class InstallationAddObject {
  
  final String deviceToken;
  
  final String deviceType;
  
  final List<String> channels;
  

  InstallationAddObject(
    

{
    
     this.deviceToken = null,  
     this.deviceType = null,   this.channels = const [] 
    
    }
  );

  @override
  String toString() {
    return 'InstallationAddObject[deviceToken=$deviceToken, deviceType=$deviceType, channels=$channels, ]';
  }
}

@GenSerializer()
class InstallationAddObjectSerializer extends Serializer<InstallationAddObject> with _$InstallationAddObjectSerializer {

}
