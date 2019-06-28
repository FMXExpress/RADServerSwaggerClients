part of swagger.api;

class EdgeModuleResourceUpdateObject {
  
  String resourcename = null;
  
  EdgeModuleResourceUpdateObject();

  @override
  String toString() {
    return 'EdgeModuleResourceUpdateObject[resourcename=$resourcename, ]';
  }

  EdgeModuleResourceUpdateObject.fromJson(Map<String, dynamic> json) {
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

  static List<EdgeModuleResourceUpdateObject> listFromJson(List<dynamic> json) {
    return json == null ? new List<EdgeModuleResourceUpdateObject>() : json.map((value) => new EdgeModuleResourceUpdateObject.fromJson(value)).toList();
  }

  static Map<String, EdgeModuleResourceUpdateObject> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, EdgeModuleResourceUpdateObject>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new EdgeModuleResourceUpdateObject.fromJson(value));
    }
    return map;
  }
}

