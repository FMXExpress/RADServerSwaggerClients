part of swagger.api;

class UserSignUpResponseObject {
  
  String id = null;
  

  String sessionToken = null;
  
  UserSignUpResponseObject();

  @override
  String toString() {
    return 'UserSignUpResponseObject[id=$id, sessionToken=$sessionToken, ]';
  }

  UserSignUpResponseObject.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id =
        json['id']
    ;
    sessionToken =
        json['sessionToken']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'sessionToken': sessionToken
     };
  }

  static List<UserSignUpResponseObject> listFromJson(List<dynamic> json) {
    return json == null ? new List<UserSignUpResponseObject>() : json.map((value) => new UserSignUpResponseObject.fromJson(value)).toList();
  }

  static Map<String, UserSignUpResponseObject> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UserSignUpResponseObject>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UserSignUpResponseObject.fromJson(value));
    }
    return map;
  }
}

