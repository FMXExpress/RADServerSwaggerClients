import 'package:jaguar_serializer/jaguar_serializer.dart';

part 'edge_module_resource_added_object.jser.dart';

class EdgeModuleResourceAddedObject {
  
  final String resourcename;
  

  EdgeModuleResourceAddedObject(
    

{
    
     this.resourcename = null 
    }
  );

  @override
  String toString() {
    return 'EdgeModuleResourceAddedObject[resourcename=$resourcename, ]';
  }
}

@GenSerializer()
class EdgeModuleResourceAddedObjectSerializer extends Serializer<EdgeModuleResourceAddedObject> with _$EdgeModuleResourceAddedObjectSerializer {

}
