part of swagger.api;

class VersionObject {
  
  String version = null;
  

  String server = null;
  
  VersionObject();

  @override
  String toString() {
    return 'VersionObject[version=$version, server=$server, ]';
  }

  VersionObject.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    version =
        json['version']
    ;
    server =
        json['server']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'version': version,
      'server': server
     };
  }

  static List<VersionObject> listFromJson(List<dynamic> json) {
    return json == null ? new List<VersionObject>() : json.map((value) => new VersionObject.fromJson(value)).toList();
  }

  static Map<String, VersionObject> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, VersionObject>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new VersionObject.fromJson(value));
    }
    return map;
  }
}

