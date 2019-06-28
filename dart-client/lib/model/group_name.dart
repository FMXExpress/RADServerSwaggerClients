part of swagger.api;

class GroupName {
    GroupName();

  @override
  String toString() {
    return 'GroupName[]';
  }

  GroupName.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<GroupName> listFromJson(List<dynamic> json) {
    return json == null ? new List<GroupName>() : json.map((value) => new GroupName.fromJson(value)).toList();
  }

  static Map<String, GroupName> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GroupName>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GroupName.fromJson(value));
    }
    return map;
  }
}

