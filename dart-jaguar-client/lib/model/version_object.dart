import 'package:jaguar_serializer/jaguar_serializer.dart';

part 'version_object.jser.dart';

class VersionObject {
  
  final String version;
  
  final String server;
  

  VersionObject(
    

{
     this.version = null,  
     this.server = null 
    
    }
  );

  @override
  String toString() {
    return 'VersionObject[version=$version, server=$server, ]';
  }
}

@GenSerializer()
class VersionObjectSerializer extends Serializer<VersionObject> with _$VersionObjectSerializer {

}
