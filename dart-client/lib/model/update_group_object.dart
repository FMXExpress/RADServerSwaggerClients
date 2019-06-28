part of swagger.api;

class UpdateGroupObject {
  
  String fieldName = null;
  

  List<String> users = [];
  
  UpdateGroupObject();

  @override
  String toString() {
    return 'UpdateGroupObject[fieldName=$fieldName, users=$users, ]';
  }

  UpdateGroupObject.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    fieldName =
        json['fieldName']
    ;
    users =
        (json['users'] as List).map((item) => item as String).toList()
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'fieldName': fieldName,
      'users': users
     };
  }

  static List<UpdateGroupObject> listFromJson(List<dynamic> json) {
    return json == null ? new List<UpdateGroupObject>() : json.map((value) => new UpdateGroupObject.fromJson(value)).toList();
  }

  static Map<String, UpdateGroupObject> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UpdateGroupObject>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UpdateGroupObject.fromJson(value));
    }
    return map;
  }
}

