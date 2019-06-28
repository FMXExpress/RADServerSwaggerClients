import 'package:jaguar_serializer/jaguar_serializer.dart';

import 'package:swagger/model/field_object_fields.dart';
part 'field_object.jser.dart';

class FieldObject {
  
  final String name;
  
  final List<FieldObjectFields> fields;
  
  final bool custom;
  

  FieldObject(
    

{
    
     this.name = null,   this.fields = const [],  
     this.custom = null 
    
    }
  );

  @override
  String toString() {
    return 'FieldObject[name=$name, fields=$fields, custom=$custom, ]';
  }
}

@GenSerializer()
class FieldObjectSerializer extends Serializer<FieldObject> with _$FieldObjectSerializer {

}
