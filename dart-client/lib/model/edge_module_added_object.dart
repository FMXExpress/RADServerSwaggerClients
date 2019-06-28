part of swagger.api;

class EdgeModuleAddedObject {
  
  String id = null;
  

  String modulename = null;
  
  EdgeModuleAddedObject();

  @override
  String toString() {
    return 'EdgeModuleAddedObject[id=$id, modulename=$modulename, ]';
  }

  EdgeModuleAddedObject.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id =
        json['id']
    ;
    modulename =
        json['modulename']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'modulename': modulename
     };
  }

  static List<EdgeModuleAddedObject> listFromJson(List<dynamic> json) {
    return json == null ? new List<EdgeModuleAddedObject>() : json.map((value) => new EdgeModuleAddedObject.fromJson(value)).toList();
  }

  static Map<String, EdgeModuleAddedObject> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, EdgeModuleAddedObject>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new EdgeModuleAddedObject.fromJson(value));
    }
    return map;
  }
}

