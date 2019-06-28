part of swagger.api;

class EdgeModuleUpdatedObject {
  
  String updated = null;
  
  EdgeModuleUpdatedObject();

  @override
  String toString() {
    return 'EdgeModuleUpdatedObject[updated=$updated, ]';
  }

  EdgeModuleUpdatedObject.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    updated =
        json['updated']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'updated': updated
     };
  }

  static List<EdgeModuleUpdatedObject> listFromJson(List<dynamic> json) {
    return json == null ? new List<EdgeModuleUpdatedObject>() : json.map((value) => new EdgeModuleUpdatedObject.fromJson(value)).toList();
  }

  static Map<String, EdgeModuleUpdatedObject> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, EdgeModuleUpdatedObject>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new EdgeModuleUpdatedObject.fromJson(value));
    }
    return map;
  }
}

