import 'package:jaguar_serializer/jaguar_serializer.dart';

part 'edge_module_added_object.jser.dart';

class EdgeModuleAddedObject {
  
  final String id;
  
  final String modulename;
  

  EdgeModuleAddedObject(
    

{
    
     this.id = null,  
     this.modulename = null 
    }
  );

  @override
  String toString() {
    return 'EdgeModuleAddedObject[id=$id, modulename=$modulename, ]';
  }
}

@GenSerializer()
class EdgeModuleAddedObjectSerializer extends Serializer<EdgeModuleAddedObject> with _$EdgeModuleAddedObjectSerializer {

}
