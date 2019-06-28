import 'package:jaguar_serializer/jaguar_serializer.dart';

part 'meta_edge_module_object.jser.dart';

class MetaEdgeModuleObject {
  
  final String creator;
  
  final String created;
  
  final String updated;
  

  MetaEdgeModuleObject(
    

{
    
     this.creator = null,  
     this.created = null,   this.updated = null 
    
    }
  );

  @override
  String toString() {
    return 'MetaEdgeModuleObject[creator=$creator, created=$created, updated=$updated, ]';
  }
}

@GenSerializer()
class MetaEdgeModuleObjectSerializer extends Serializer<MetaEdgeModuleObject> with _$MetaEdgeModuleObjectSerializer {

}
