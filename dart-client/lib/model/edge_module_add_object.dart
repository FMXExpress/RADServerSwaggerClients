part of swagger.api;

class EdgeModuleAddObject {
  
  String modulename = null;
  

  String protocol = null;
  

  String protocolprops = null;
  
  EdgeModuleAddObject();

  @override
  String toString() {
    return 'EdgeModuleAddObject[modulename=$modulename, protocol=$protocol, protocolprops=$protocolprops, ]';
  }

  EdgeModuleAddObject.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    modulename =
        json['modulename']
    ;
    protocol =
        json['protocol']
    ;
    protocolprops =
        json['protocolprops']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'modulename': modulename,
      'protocol': protocol,
      'protocolprops': protocolprops
     };
  }

  static List<EdgeModuleAddObject> listFromJson(List<dynamic> json) {
    return json == null ? new List<EdgeModuleAddObject>() : json.map((value) => new EdgeModuleAddObject.fromJson(value)).toList();
  }

  static Map<String, EdgeModuleAddObject> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, EdgeModuleAddObject>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new EdgeModuleAddObject.fromJson(value));
    }
    return map;
  }
}

