import 'package:jaguar_serializer/jaguar_serializer.dart';

part 'updated_object.jser.dart';

class UpdatedObject {
  
  final String updated;
  

  UpdatedObject(
    

{
    
     this.updated = null 
    }
  );

  @override
  String toString() {
    return 'UpdatedObject[updated=$updated, ]';
  }
}

@GenSerializer()
class UpdatedObjectSerializer extends Serializer<UpdatedObject> with _$UpdatedObjectSerializer {

}
