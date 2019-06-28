part of swagger.api;

class GroupObject {
  
  String name = null;
  

  MetaGroupObject meta = null;
  

  List<String> users = [];
  
  GroupObject();

  @override
  String toString() {
    return 'GroupObject[name=$name, meta=$meta, users=$users, ]';
  }

  GroupObject.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name =
        json['name']
    ;
    meta =
      
      
      new MetaGroupObject.fromJson(json['meta'])
;
    users =
        (json['users'] as List).map((item) => item as String).toList()
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'meta': meta,
      'users': users
     };
  }

  static List<GroupObject> listFromJson(List<dynamic> json) {
    return json == null ? new List<GroupObject>() : json.map((value) => new GroupObject.fromJson(value)).toList();
  }

  static Map<String, GroupObject> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GroupObject>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GroupObject.fromJson(value));
    }
    return map;
  }
}

