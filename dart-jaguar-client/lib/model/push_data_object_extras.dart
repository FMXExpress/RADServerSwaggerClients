import 'package:jaguar_serializer/jaguar_serializer.dart';

part 'push_data_object_extras.jser.dart';

class PushDataObjectExtras {
  
  final String message;
  

  PushDataObjectExtras(
    

{
     this.message = null 
    
    }
  );

  @override
  String toString() {
    return 'PushDataObjectExtras[message=$message, ]';
  }
}

@GenSerializer()
class PushDataObjectExtrasSerializer extends Serializer<PushDataObjectExtras> with _$PushDataObjectExtrasSerializer {

}
