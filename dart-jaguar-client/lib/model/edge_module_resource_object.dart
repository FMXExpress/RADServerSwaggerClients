import 'package:jaguar_serializer/jaguar_serializer.dart';

import 'package:swagger/model/meta_edge_module_object.dart';
part 'edge_module_resource_object.jser.dart';

class EdgeModuleResourceObject {
  
  final String resourcename;
  
  final String modulename;
  
  final String moduleid;
  
  final MetaEdgeModuleObject meta;
  

  EdgeModuleResourceObject(
    

{
    
     this.resourcename = null,  
     this.modulename = null,  
     this.moduleid = null,  
     this.meta = null 
    }
  );

  @override
  String toString() {
    return 'EdgeModuleResourceObject[resourcename=$resourcename, modulename=$modulename, moduleid=$moduleid, meta=$meta, ]';
  }
}

@GenSerializer()
class EdgeModuleResourceObjectSerializer extends Serializer<EdgeModuleResourceObject> with _$EdgeModuleResourceObjectSerializer {

}
