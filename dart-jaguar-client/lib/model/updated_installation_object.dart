import 'package:jaguar_serializer/jaguar_serializer.dart';

part 'updated_installation_object.jser.dart';

class UpdatedInstallationObject {
  
  final String updated;
  

  UpdatedInstallationObject(
    

{
    
     this.updated = null 
    }
  );

  @override
  String toString() {
    return 'UpdatedInstallationObject[updated=$updated, ]';
  }
}

@GenSerializer()
class UpdatedInstallationObjectSerializer extends Serializer<UpdatedInstallationObject> with _$UpdatedInstallationObjectSerializer {

}
