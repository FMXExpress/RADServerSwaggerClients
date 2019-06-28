part of swagger.api;

class GroupAddObject {
  
  String groupname = null;
  
  GroupAddObject();

  @override
  String toString() {
    return 'GroupAddObject[groupname=$groupname, ]';
  }

  GroupAddObject.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    groupname =
        json['groupname']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'groupname': groupname
     };
  }

  static List<GroupAddObject> listFromJson(List<dynamic> json) {
    return json == null ? new List<GroupAddObject>() : json.map((value) => new GroupAddObject.fromJson(value)).toList();
  }

  static Map<String, GroupAddObject> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GroupAddObject>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GroupAddObject.fromJson(value));
    }
    return map;
  }
}

