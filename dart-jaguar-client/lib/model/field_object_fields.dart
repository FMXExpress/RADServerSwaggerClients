import 'package:jaguar_serializer/jaguar_serializer.dart';

part 'field_object_fields.jser.dart';

class FieldObjectFields {
  
  final String name;
  

  FieldObjectFields(
    

{
     this.name = null 
    
    }
  );

  @override
  String toString() {
    return 'FieldObjectFields[name=$name, ]';
  }
}

@GenSerializer()
class FieldObjectFieldsSerializer extends Serializer<FieldObjectFields> with _$FieldObjectFieldsSerializer {

}
