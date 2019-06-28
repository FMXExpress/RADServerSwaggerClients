import 'package:jaguar_serializer/jaguar_serializer.dart';

part 'edge_module_update_object.jser.dart';

class EdgeModuleUpdateObject {
  
  final String modulename;
  
  final String protocol;
  
  final String protocolprops;
  

  EdgeModuleUpdateObject(
    

{
    
     this.modulename = null,  
     this.protocol = null,  
     this.protocolprops = null 
    }
  );

  @override
  String toString() {
    return 'EdgeModuleUpdateObject[modulename=$modulename, protocol=$protocol, protocolprops=$protocolprops, ]';
  }
}

@GenSerializer()
class EdgeModuleUpdateObjectSerializer extends Serializer<EdgeModuleUpdateObject> with _$EdgeModuleUpdateObjectSerializer {

}
