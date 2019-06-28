part of swagger.api;

class EdgeModuleResourceObject {
  
  String resourcename = null;
  

  String modulename = null;
  

  String moduleid = null;
  

  MetaEdgeModuleObject meta = null;
  
  EdgeModuleResourceObject();

  @override
  String toString() {
    return 'EdgeModuleResourceObject[resourcename=$resourcename, modulename=$modulename, moduleid=$moduleid, meta=$meta, ]';
  }

  EdgeModuleResourceObject.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    resourcename =
        json['resourcename']
    ;
    modulename =
        json['modulename']
    ;
    moduleid =
        json['moduleid']
    ;
    meta =
      
      
      new MetaEdgeModuleObject.fromJson(json['meta'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'resourcename': resourcename,
      'modulename': modulename,
      'moduleid': moduleid,
      'meta': meta
     };
  }

  static List<EdgeModuleResourceObject> listFromJson(List<dynamic> json) {
    return json == null ? new List<EdgeModuleResourceObject>() : json.map((value) => new EdgeModuleResourceObject.fromJson(value)).toList();
  }

  static Map<String, EdgeModuleResourceObject> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, EdgeModuleResourceObject>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new EdgeModuleResourceObject.fromJson(value));
    }
    return map;
  }
}

