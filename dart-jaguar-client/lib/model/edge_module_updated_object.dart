import 'package:jaguar_serializer/jaguar_serializer.dart';

part 'edge_module_updated_object.jser.dart';

class EdgeModuleUpdatedObject {
  
  final String updated;
  

  EdgeModuleUpdatedObject(
    

{
    
     this.updated = null 
    }
  );

  @override
  String toString() {
    return 'EdgeModuleUpdatedObject[updated=$updated, ]';
  }
}

@GenSerializer()
class EdgeModuleUpdatedObjectSerializer extends Serializer<EdgeModuleUpdatedObject> with _$EdgeModuleUpdatedObjectSerializer {

}
