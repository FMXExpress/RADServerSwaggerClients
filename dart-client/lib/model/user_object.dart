part of swagger.api;

class UserObject {
  
  String id = null;
  

  String username = null;
  

  MetaObject meta = null;
  
  UserObject();

  @override
  String toString() {
    return 'UserObject[id=$id, username=$username, meta=$meta, ]';
  }

  UserObject.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id =
        json['id']
    ;
    username =
        json['username']
    ;
    meta =
      
      
      new MetaObject.fromJson(json['meta'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'username': username,
      'meta': meta
     };
  }

  static List<UserObject> listFromJson(List<dynamic> json) {
    return json == null ? new List<UserObject>() : json.map((value) => new UserObject.fromJson(value)).toList();
  }

  static Map<String, UserObject> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UserObject>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UserObject.fromJson(value));
    }
    return map;
  }
}

