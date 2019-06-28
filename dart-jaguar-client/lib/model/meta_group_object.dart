import 'package:jaguar_serializer/jaguar_serializer.dart';

part 'meta_group_object.jser.dart';

class MetaGroupObject {
  
  final String creator;
  
  final String created;
  
  final String updated;
  

  MetaGroupObject(
    

{
    
     this.creator = null,  
     this.created = null,   this.updated = null 
    
    }
  );

  @override
  String toString() {
    return 'MetaGroupObject[creator=$creator, created=$created, updated=$updated, ]';
  }
}

@GenSerializer()
class MetaGroupObjectSerializer extends Serializer<MetaGroupObject> with _$MetaGroupObjectSerializer {

}
