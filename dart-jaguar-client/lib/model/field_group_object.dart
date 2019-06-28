import 'package:jaguar_serializer/jaguar_serializer.dart';

import 'package:swagger/model/field_object_fields.dart';
part 'field_group_object.jser.dart';

class FieldGroupObject {
  
  final String name;
  
  final List<FieldObjectFields> fields;
  
  final bool custom;
  

  FieldGroupObject(
    

{
    
     this.name = null,   this.fields = const [],  
     this.custom = null 
    
    }
  );

  @override
  String toString() {
    return 'FieldGroupObject[name=$name, fields=$fields, custom=$custom, ]';
  }
}

@GenSerializer()
class FieldGroupObjectSerializer extends Serializer<FieldGroupObject> with _$FieldGroupObjectSerializer {

}
