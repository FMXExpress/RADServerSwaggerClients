import 'package:jaguar_serializer/jaguar_serializer.dart';

import 'package:swagger/model/meta_object.dart';
part 'user_object.jser.dart';

class UserObject {
  
  final String id;
  
  final String username;
  
  final MetaObject meta;
  

  UserObject(
    

{
    
     this.id = null,  
     this.username = null,  
     this.meta = null 
    }
  );

  @override
  String toString() {
    return 'UserObject[id=$id, username=$username, meta=$meta, ]';
  }
}

@GenSerializer()
class UserObjectSerializer extends Serializer<UserObject> with _$UserObjectSerializer {

}
