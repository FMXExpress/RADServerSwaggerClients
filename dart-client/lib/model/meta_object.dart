part of swagger.api;

class MetaObject {
  
  String creator = null;
  

  String created = null;
  

  String updated = null;
  
  MetaObject();

  @override
  String toString() {
    return 'MetaObject[creator=$creator, created=$created, updated=$updated, ]';
  }

  MetaObject.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    creator =
        json['creator']
    ;
    created =
        json['created']
    ;
    updated =
        json['updated']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'creator': creator,
      'created': created,
      'updated': updated
     };
  }

  static List<MetaObject> listFromJson(List<dynamic> json) {
    return json == null ? new List<MetaObject>() : json.map((value) => new MetaObject.fromJson(value)).toList();
  }

  static Map<String, MetaObject> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, MetaObject>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new MetaObject.fromJson(value));
    }
    return map;
  }
}

