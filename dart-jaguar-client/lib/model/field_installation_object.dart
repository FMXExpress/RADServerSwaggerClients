import 'package:jaguar_serializer/jaguar_serializer.dart';

import 'package:swagger/model/field_object_fields.dart';
part 'field_installation_object.jser.dart';

class FieldInstallationObject {
  
  final String name;
  
  final List<FieldObjectFields> fields;
  
  final bool custom;
  

  FieldInstallationObject(
    

{
    
     this.name = null,   this.fields = const [],  
     this.custom = null 
    
    }
  );

  @override
  String toString() {
    return 'FieldInstallationObject[name=$name, fields=$fields, custom=$custom, ]';
  }
}

@GenSerializer()
class FieldInstallationObjectSerializer extends Serializer<FieldInstallationObject> with _$FieldInstallationObjectSerializer {

}
