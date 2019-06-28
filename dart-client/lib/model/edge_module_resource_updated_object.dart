part of swagger.api;

class EdgeModuleResourceUpdatedObject {
  
  String updated = null;
  
  EdgeModuleResourceUpdatedObject();

  @override
  String toString() {
    return 'EdgeModuleResourceUpdatedObject[updated=$updated, ]';
  }

  EdgeModuleResourceUpdatedObject.fromJson(Map<String, dynamic> json) {
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

  static List<EdgeModuleResourceUpdatedObject> listFromJson(List<dynamic> json) {
    return json == null ? new List<EdgeModuleResourceUpdatedObject>() : json.map((value) => new EdgeModuleResourceUpdatedObject.fromJson(value)).toList();
  }

  static Map<String, EdgeModuleResourceUpdatedObject> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, EdgeModuleResourceUpdatedObject>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new EdgeModuleResourceUpdatedObject.fromJson(value));
    }
    return map;
  }
}

