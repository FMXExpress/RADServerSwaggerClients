import 'package:jaguar_serializer/jaguar_serializer.dart';

import 'package:swagger/model/push_data_object_gcm.dart';
import 'package:swagger/model/push_data_object_extras.dart';
import 'package:swagger/model/push_data_object_aps.dart';
part 'push_data_object.jser.dart';

class PushDataObject {
  
  final PushDataObjectGcm gcm;
  
  final PushDataObjectAps aps;
  
  final PushDataObjectExtras extras;
  

  PushDataObject(
    

{
     this.gcm = null,  
     this.aps = null,  
     this.extras = null 
    
    }
  );

  @override
  String toString() {
    return 'PushDataObject[gcm=$gcm, aps=$aps, extras=$extras, ]';
  }
}

@GenSerializer()
class PushDataObjectSerializer extends Serializer<PushDataObject> with _$PushDataObjectSerializer {

}
