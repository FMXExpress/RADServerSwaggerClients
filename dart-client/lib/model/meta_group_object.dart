part of swagger.api;

class MetaGroupObject {
  
  String creator = null;
  

  String created = null;
  

  String updated = null;
  
  MetaGroupObject();

  @override
  String toString() {
    return 'MetaGroupObject[creator=$creator, created=$created, updated=$updated, ]';
  }

  MetaGroupObject.fromJson(Map<String, dynamic> json) {
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

  static List<MetaGroupObject> listFromJson(List<dynamic> json) {
    return json == null ? new List<MetaGroupObject>() : json.map((value) => new MetaGroupObject.fromJson(value)).toList();
  }

  static Map<String, MetaGroupObject> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, MetaGroupObject>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new MetaGroupObject.fromJson(value));
    }
    return map;
  }
}

