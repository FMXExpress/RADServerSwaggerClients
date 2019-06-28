import 'package:jaguar_serializer/jaguar_serializer.dart';

part 'update_object.jser.dart';

class UpdateObject {
  
  final String fieldName;
  

  UpdateObject(
    

{
     this.fieldName = null 
    
    }
  );

  @override
  String toString() {
    return 'UpdateObject[fieldName=$fieldName, ]';
  }
}

@GenSerializer()
class UpdateObjectSerializer extends Serializer<UpdateObject> with _$UpdateObjectSerializer {

}
