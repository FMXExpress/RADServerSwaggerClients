part of swagger.api;

class PushObject {
  
  PushDataObject data = null;
  

  List<String> channels = [];
  

  PushWhereObject where = null;
  
  PushObject();

  @override
  String toString() {
    return 'PushObject[data=$data, channels=$channels, where=$where, ]';
  }

  PushObject.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    data =
      
      
      new PushDataObject.fromJson(json['data'])
;
    channels =
        (json['channels'] as List).map((item) => item as String).toList()
    ;
    where =
      
      
      new PushWhereObject.fromJson(json['where'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'data': data,
      'channels': channels,
      'where': where
     };
  }

  static List<PushObject> listFromJson(List<dynamic> json) {
    return json == null ? new List<PushObject>() : json.map((value) => new PushObject.fromJson(value)).toList();
  }

  static Map<String, PushObject> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PushObject>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PushObject.fromJson(value));
    }
    return map;
  }
}

