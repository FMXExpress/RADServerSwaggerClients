import 'package:jaguar_serializer/jaguar_serializer.dart';

part 'user_sign_up_response_object.jser.dart';

class UserSignUpResponseObject {
  
  final String id;
  
  final String sessionToken;
  

  UserSignUpResponseObject(
    

{
    
     this.id = null,  
     this.sessionToken = null 
    }
  );

  @override
  String toString() {
    return 'UserSignUpResponseObject[id=$id, sessionToken=$sessionToken, ]';
  }
}

@GenSerializer()
class UserSignUpResponseObjectSerializer extends Serializer<UserSignUpResponseObject> with _$UserSignUpResponseObjectSerializer {

}
