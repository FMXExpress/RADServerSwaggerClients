part of swagger.api;

class MetaEdgeModuleObject {
  
  String creator = null;
  

  String created = null;
  

  String updated = null;
  
  MetaEdgeModuleObject();

  @override
  String toString() {
    return 'MetaEdgeModuleObject[creator=$creator, created=$created, updated=$updated, ]';
  }

  MetaEdgeModuleObject.fromJson(Map<String, dynamic> json) {
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

  static List<MetaEdgeModuleObject> listFromJson(List<dynamic> json) {
    return json == null ? new List<MetaEdgeModuleObject>() : json.map((value) => new MetaEdgeModuleObject.fromJson(value)).toList();
  }

  static Map<String, MetaEdgeModuleObject> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, MetaEdgeModuleObject>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new MetaEdgeModuleObject.fromJson(value));
    }
    return map;
  }
}

