import 'package:jaguar_serializer/jaguar_serializer.dart';

part 'push_data_object_gcm.jser.dart';

class PushDataObjectGcm {
  
  final String message;
  
  final String title;
  

  PushDataObjectGcm(
    

{
     this.message = null,  
     this.title = null 
    
    }
  );

  @override
  String toString() {
    return 'PushDataObjectGcm[message=$message, title=$title, ]';
  }
}

@GenSerializer()
class PushDataObjectGcmSerializer extends Serializer<PushDataObjectGcm> with _$PushDataObjectGcmSerializer {

}
