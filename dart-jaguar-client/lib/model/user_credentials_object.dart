import 'package:jaguar_serializer/jaguar_serializer.dart';

part 'user_credentials_object.jser.dart';

class UserCredentialsObject {
  
  final String username;
  
  final String password;
  

  UserCredentialsObject(
    

{
    
     this.username = null,  
     this.password = null 
    }
  );

  @override
  String toString() {
    return 'UserCredentialsObject[username=$username, password=$password, ]';
  }
}

@GenSerializer()
class UserCredentialsObjectSerializer extends Serializer<UserCredentialsObject> with _$UserCredentialsObjectSerializer {

}
