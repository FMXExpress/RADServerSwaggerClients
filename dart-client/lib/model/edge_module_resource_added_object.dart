part of swagger.api;

class EdgeModuleResourceAddedObject {
  
  String resourcename = null;
  
  EdgeModuleResourceAddedObject();

  @override
  String toString() {
    return 'EdgeModuleResourceAddedObject[resourcename=$resourcename, ]';
  }

  EdgeModuleResourceAddedObject.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    resourcename =
        json['resourcename']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'resourcename': resourcename
     };
  }

  static List<EdgeModuleResourceAddedObject> listFromJson(List<dynamic> json) {
    return json == null ? new List<EdgeModuleResourceAddedObject>() : json.map((value) => new EdgeModuleResourceAddedObject.fromJson(value)).toList();
  }

  static Map<String, EdgeModuleResourceAddedObject> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, EdgeModuleResourceAddedObject>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new EdgeModuleResourceAddedObject.fromJson(value));
    }
    return map;
  }
}

