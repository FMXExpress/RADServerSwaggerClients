import 'package:jaguar_serializer/jaguar_serializer.dart';

part 'meta_object.jser.dart';

class MetaObject {
  
  final String creator;
  
  final String created;
  
  final String updated;
  

  MetaObject(
    

{
    
     this.creator = null,  
     this.created = null,   this.updated = null 
    
    }
  );

  @override
  String toString() {
    return 'MetaObject[creator=$creator, created=$created, updated=$updated, ]';
  }
}

@GenSerializer()
class MetaObjectSerializer extends Serializer<MetaObject> with _$MetaObjectSerializer {

}
