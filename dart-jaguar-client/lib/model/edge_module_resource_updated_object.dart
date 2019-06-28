import 'package:jaguar_serializer/jaguar_serializer.dart';

part 'edge_module_resource_updated_object.jser.dart';

class EdgeModuleResourceUpdatedObject {
  
  final String updated;
  

  EdgeModuleResourceUpdatedObject(
    

{
    
     this.updated = null 
    }
  );

  @override
  String toString() {
    return 'EdgeModuleResourceUpdatedObject[updated=$updated, ]';
  }
}

@GenSerializer()
class EdgeModuleResourceUpdatedObjectSerializer extends Serializer<EdgeModuleResourceUpdatedObject> with _$EdgeModuleResourceUpdatedObjectSerializer {

}
