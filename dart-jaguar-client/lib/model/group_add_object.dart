import 'package:jaguar_serializer/jaguar_serializer.dart';

part 'group_add_object.jser.dart';

class GroupAddObject {
  
  final String groupname;
  

  GroupAddObject(
    

{
    
     this.groupname = null 
    }
  );

  @override
  String toString() {
    return 'GroupAddObject[groupname=$groupname, ]';
  }
}

@GenSerializer()
class GroupAddObjectSerializer extends Serializer<GroupAddObject> with _$GroupAddObjectSerializer {

}
