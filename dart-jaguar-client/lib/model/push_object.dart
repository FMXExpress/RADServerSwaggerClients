import 'package:jaguar_serializer/jaguar_serializer.dart';

import 'package:swagger/model/push_data_object.dart';
import 'package:swagger/model/push_where_object.dart';
part 'push_object.jser.dart';

class PushObject {
  
  final PushDataObject data;
  
  final List<String> channels;
  
  final PushWhereObject where;
  

  PushObject(
    

{
    
     this.data = null,   this.channels = const [],  
    
     this.where = null 
    }
  );

  @override
  String toString() {
    return 'PushObject[data=$data, channels=$channels, where=$where, ]';
  }
}

@GenSerializer()
class PushObjectSerializer extends Serializer<PushObject> with _$PushObjectSerializer {

}
