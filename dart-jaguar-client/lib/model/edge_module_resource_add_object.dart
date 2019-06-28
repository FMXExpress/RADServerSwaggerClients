import 'package:jaguar_serializer/jaguar_serializer.dart';

part 'edge_module_resource_add_object.jser.dart';

class EdgeModuleResourceAddObject {
  
  final String resourcename;
  

  EdgeModuleResourceAddObject(
    

{
    
     this.resourcename = null 
    }
  );

  @override
  String toString() {
    return 'EdgeModuleResourceAddObject[resourcename=$resourcename, ]';
  }
}

@GenSerializer()
class EdgeModuleResourceAddObjectSerializer extends Serializer<EdgeModuleResourceAddObject> with _$EdgeModuleResourceAddObjectSerializer {

}
