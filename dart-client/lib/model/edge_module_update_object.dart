part of swagger.api;

class EdgeModuleUpdateObject {
  
  String modulename = null;
  

  String protocol = null;
  

  String protocolprops = null;
  
  EdgeModuleUpdateObject();

  @override
  String toString() {
    return 'EdgeModuleUpdateObject[modulename=$modulename, protocol=$protocol, protocolprops=$protocolprops, ]';
  }

  EdgeModuleUpdateObject.fromJson(Map<String, dynamic> json) {
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

  static List<EdgeModuleUpdateObject> listFromJson(List<dynamic> json) {
    return json == null ? new List<EdgeModuleUpdateObject>() : json.map((value) => new EdgeModuleUpdateObject.fromJson(value)).toList();
  }

  static Map<String, EdgeModuleUpdateObject> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, EdgeModuleUpdateObject>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new EdgeModuleUpdateObject.fromJson(value));
    }
    return map;
  }
}

