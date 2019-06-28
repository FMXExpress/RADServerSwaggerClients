part of swagger.api;

class EdgeModuleObject {
  
  String modulename = null;
  

  String id = null;
  

  String protocol = null;
  

  String protocolprops = null;
  

  MetaEdgeModuleObject meta = null;
  
  EdgeModuleObject();

  @override
  String toString() {
    return 'EdgeModuleObject[modulename=$modulename, id=$id, protocol=$protocol, protocolprops=$protocolprops, meta=$meta, ]';
  }

  EdgeModuleObject.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    modulename =
        json['modulename']
    ;
    id =
        json['id']
    ;
    protocol =
        json['protocol']
    ;
    protocolprops =
        json['protocolprops']
    ;
    meta =
      
      
      new MetaEdgeModuleObject.fromJson(json['meta'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'modulename': modulename,
      'id': id,
      'protocol': protocol,
      'protocolprops': protocolprops,
      'meta': meta
     };
  }

  static List<EdgeModuleObject> listFromJson(List<dynamic> json) {
    return json == null ? new List<EdgeModuleObject>() : json.map((value) => new EdgeModuleObject.fromJson(value)).toList();
  }

  static Map<String, EdgeModuleObject> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, EdgeModuleObject>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new EdgeModuleObject.fromJson(value));
    }
    return map;
  }
}

