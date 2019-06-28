import 'package:jaguar_serializer/jaguar_serializer.dart';

part 'userid_object.jser.dart';

class UseridObject {
  
  final String id;
  

  UseridObject(
    

{
    
     this.id = null 
    }
  );

  @override
  String toString() {
    return 'UseridObject[id=$id, ]';
  }
}

@GenSerializer()
class UseridObjectSerializer extends Serializer<UseridObject> with _$UseridObjectSerializer {

}
