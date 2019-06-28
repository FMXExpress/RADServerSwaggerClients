import 'package:jaguar_serializer/jaguar_serializer.dart';

import 'package:swagger/model/meta_edge_module_object.dart';
part 'edge_module_object.jser.dart';

class EdgeModuleObject {
  
  final String modulename;
  
  final String id;
  
  final String protocol;
  
  final String protocolprops;
  
  final MetaEdgeModuleObject meta;
  

  EdgeModuleObject(
    

{
    
     this.modulename = null,  
     this.id = null,  
     this.protocol = null,  
     this.protocolprops = null,  
     this.meta = null 
    }
  );

  @override
  String toString() {
    return 'EdgeModuleObject[modulename=$modulename, id=$id, protocol=$protocol, protocolprops=$protocolprops, meta=$meta, ]';
  }
}

@GenSerializer()
class EdgeModuleObjectSerializer extends Serializer<EdgeModuleObject> with _$EdgeModuleObjectSerializer {

}
