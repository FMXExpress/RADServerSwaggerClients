import 'package:jaguar_serializer/jaguar_serializer.dart';

part 'update_installation_object.jser.dart';

class UpdateInstallationObject {
  
  final List<String> channels;
  

  UpdateInstallationObject(
    

{
     this.channels = const [] 
    
    }
  );

  @override
  String toString() {
    return 'UpdateInstallationObject[channels=$channels, ]';
  }
}

@GenSerializer()
class UpdateInstallationObjectSerializer extends Serializer<UpdateInstallationObject> with _$UpdateInstallationObjectSerializer {

}
