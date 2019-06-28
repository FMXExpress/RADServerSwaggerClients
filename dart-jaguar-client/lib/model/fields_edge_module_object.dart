import 'package:jaguar_serializer/jaguar_serializer.dart';

import 'package:swagger/model/field_object_fields.dart';
part 'fields_edge_module_object.jser.dart';

class FieldsEdgeModuleObject {
  
  final String name;
  
  final List<FieldObjectFields> fields;
  
  final bool custom;
  

  FieldsEdgeModuleObject(
    

{
    
     this.name = null,   this.fields = const [],  
     this.custom = null 
    
    }
  );

  @override
  String toString() {
    return 'FieldsEdgeModuleObject[name=$name, fields=$fields, custom=$custom, ]';
  }
}

@GenSerializer()
class FieldsEdgeModuleObjectSerializer extends Serializer<FieldsEdgeModuleObject> with _$FieldsEdgeModuleObjectSerializer {

}
