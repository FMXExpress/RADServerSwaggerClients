import 'package:jaguar_serializer/jaguar_serializer.dart';

part 'edge_module_resource_update_object.jser.dart';

class EdgeModuleResourceUpdateObject {
  
  final String resourcename;
  

  EdgeModuleResourceUpdateObject(
    

{
     this.resourcename = null 
    
    }
  );

  @override
  String toString() {
    return 'EdgeModuleResourceUpdateObject[resourcename=$resourcename, ]';
  }
}

@GenSerializer()
class EdgeModuleResourceUpdateObjectSerializer extends Serializer<EdgeModuleResourceUpdateObject> with _$EdgeModuleResourceUpdateObjectSerializer {

}
