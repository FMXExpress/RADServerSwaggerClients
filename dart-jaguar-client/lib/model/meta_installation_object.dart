import 'package:jaguar_serializer/jaguar_serializer.dart';

part 'meta_installation_object.jser.dart';

class MetaInstallationObject {
  
  final String creator;
  
  final String created;
  
  final String updated;
  

  MetaInstallationObject(
    

{
    
     this.creator = null,  
     this.created = null,   this.updated = null 
    
    }
  );

  @override
  String toString() {
    return 'MetaInstallationObject[creator=$creator, created=$created, updated=$updated, ]';
  }
}

@GenSerializer()
class MetaInstallationObjectSerializer extends Serializer<MetaInstallationObject> with _$MetaInstallationObjectSerializer {

}
