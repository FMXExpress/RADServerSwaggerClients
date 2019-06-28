import 'package:jaguar_serializer/jaguar_serializer.dart';

part 'edge_module_add_object.jser.dart';

class EdgeModuleAddObject {
  
  final String modulename;
  
  final String protocol;
  
  final String protocolprops;
  

  EdgeModuleAddObject(
    

{
    
     this.modulename = null,  
     this.protocol = null,  
     this.protocolprops = null 
    }
  );

  @override
  String toString() {
    return 'EdgeModuleAddObject[modulename=$modulename, protocol=$protocol, protocolprops=$protocolprops, ]';
  }
}

@GenSerializer()
class EdgeModuleAddObjectSerializer extends Serializer<EdgeModuleAddObject> with _$EdgeModuleAddObjectSerializer {

}
