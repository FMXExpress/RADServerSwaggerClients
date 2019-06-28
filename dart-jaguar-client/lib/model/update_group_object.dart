import 'package:jaguar_serializer/jaguar_serializer.dart';

part 'update_group_object.jser.dart';

class UpdateGroupObject {
  
  final String fieldName;
  
  final List<String> users;
  

  UpdateGroupObject(
    

{
     this.fieldName = null,  
     this.users = const [] 
    
    }
  );

  @override
  String toString() {
    return 'UpdateGroupObject[fieldName=$fieldName, users=$users, ]';
  }
}

@GenSerializer()
class UpdateGroupObjectSerializer extends Serializer<UpdateGroupObject> with _$UpdateGroupObjectSerializer {

}
