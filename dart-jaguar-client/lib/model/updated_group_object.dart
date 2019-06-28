import 'package:jaguar_serializer/jaguar_serializer.dart';

part 'updated_group_object.jser.dart';

class UpdatedGroupObject {
  
  final String updated;
  

  UpdatedGroupObject(
    

{
    
     this.updated = null 
    }
  );

  @override
  String toString() {
    return 'UpdatedGroupObject[updated=$updated, ]';
  }
}

@GenSerializer()
class UpdatedGroupObjectSerializer extends Serializer<UpdatedGroupObject> with _$UpdatedGroupObjectSerializer {

}
