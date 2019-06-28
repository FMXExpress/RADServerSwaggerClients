import 'package:jaguar_serializer/jaguar_serializer.dart';

import 'package:swagger/model/meta_group_object.dart';
part 'group_object.jser.dart';

class GroupObject {
  
  final String name;
  
  final MetaGroupObject meta;
  
  final List<String> users;
  

  GroupObject(
    

{
    
     this.name = null,  
     this.meta = null,   this.users = const [] 
    
    }
  );

  @override
  String toString() {
    return 'GroupObject[name=$name, meta=$meta, users=$users, ]';
  }
}

@GenSerializer()
class GroupObjectSerializer extends Serializer<GroupObject> with _$GroupObjectSerializer {

}
