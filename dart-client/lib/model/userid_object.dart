part of swagger.api;

class UseridObject {
  
  String id = null;
  
  UseridObject();

  @override
  String toString() {
    return 'UseridObject[id=$id, ]';
  }

  UseridObject.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id =
        json['id']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id
     };
  }

  static List<UseridObject> listFromJson(List<dynamic> json) {
    return json == null ? new List<UseridObject>() : json.map((value) => new UseridObject.fromJson(value)).toList();
  }

  static Map<String, UseridObject> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UseridObject>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UseridObject.fromJson(value));
    }
    return map;
  }
}

