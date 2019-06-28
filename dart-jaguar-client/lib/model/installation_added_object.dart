import 'package:jaguar_serializer/jaguar_serializer.dart';

part 'installation_added_object.jser.dart';

class InstallationAddedObject {
  
  final String id;
  

  InstallationAddedObject(
    

{
    
     this.id = null 
    }
  );

  @override
  String toString() {
    return 'InstallationAddedObject[id=$id, ]';
  }
}

@GenSerializer()
class InstallationAddedObjectSerializer extends Serializer<InstallationAddedObject> with _$InstallationAddedObjectSerializer {

}
