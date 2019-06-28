import 'package:jaguar_serializer/jaguar_serializer.dart';

part 'push_data_object_aps.jser.dart';

class PushDataObjectAps {
  
  final String alert;
  
  final String badge;
  
  final String sound;
  

  PushDataObjectAps(
    

{
     this.alert = null,  
     this.badge = null,  
     this.sound = null 
    
    }
  );

  @override
  String toString() {
    return 'PushDataObjectAps[alert=$alert, badge=$badge, sound=$sound, ]';
  }
}

@GenSerializer()
class PushDataObjectApsSerializer extends Serializer<PushDataObjectAps> with _$PushDataObjectApsSerializer {

}
