import 'package:jaguar_serializer/jaguar_serializer.dart';

import 'package:swagger/model/meta_object.dart';
part 'user_token_object.jser.dart';

class UserTokenObject {
  
  final String id;
  
  final String username;
  
  final MetaObject meta;
  
  final String sessiontoken;
  

  UserTokenObject(
    

{
    
     this.id = null,  
     this.username = null,  
     this.meta = null,  
     this.sessiontoken = null 
    }
  );

  @override
  String toString() {
    return 'UserTokenObject[id=$id, username=$username, meta=$meta, sessiontoken=$sessiontoken, ]';
  }
}

@GenSerializer()
class UserTokenObjectSerializer extends Serializer<UserTokenObject> with _$UserTokenObjectSerializer {

}
