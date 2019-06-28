part of swagger.api;

class EdgeModuleResourceAddObject {
  
  String resourcename = null;
  
  EdgeModuleResourceAddObject();

  @override
  String toString() {
    return 'EdgeModuleResourceAddObject[resourcename=$resourcename, ]';
  }

  EdgeModuleResourceAddObject.fromJson(Map<String, dynamic> json) {
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

  static List<EdgeModuleResourceAddObject> listFromJson(List<dynamic> json) {
    return json == null ? new List<EdgeModuleResourceAddObject>() : json.map((value) => new EdgeModuleResourceAddObject.fromJson(value)).toList();
  }

  static Map<String, EdgeModuleResourceAddObject> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, EdgeModuleResourceAddObject>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new EdgeModuleResourceAddObject.fromJson(value));
    }
    return map;
  }
}

