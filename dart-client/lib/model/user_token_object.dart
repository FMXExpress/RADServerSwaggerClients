part of swagger.api;

class UserTokenObject {
  
  String id = null;
  

  String username = null;
  

  MetaObject meta = null;
  

  String sessiontoken = null;
  
  UserTokenObject();

  @override
  String toString() {
    return 'UserTokenObject[id=$id, username=$username, meta=$meta, sessiontoken=$sessiontoken, ]';
  }

  UserTokenObject.fromJson(Map<String, dynamic> json) {
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
    sessiontoken =
        json['sessiontoken']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'username': username,
      'meta': meta,
      'sessiontoken': sessiontoken
     };
  }

  static List<UserTokenObject> listFromJson(List<dynamic> json) {
    return json == null ? new List<UserTokenObject>() : json.map((value) => new UserTokenObject.fromJson(value)).toList();
  }

  static Map<String, UserTokenObject> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UserTokenObject>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UserTokenObject.fromJson(value));
    }
    return map;
  }
}

