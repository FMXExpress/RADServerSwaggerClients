part of swagger.api;

class UserCredentialsObject {
  
  String username = null;
  

  String password = null;
  
  UserCredentialsObject();

  @override
  String toString() {
    return 'UserCredentialsObject[username=$username, password=$password, ]';
  }

  UserCredentialsObject.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    username =
        json['username']
    ;
    password =
        json['password']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'username': username,
      'password': password
     };
  }

  static List<UserCredentialsObject> listFromJson(List<dynamic> json) {
    return json == null ? new List<UserCredentialsObject>() : json.map((value) => new UserCredentialsObject.fromJson(value)).toList();
  }

  static Map<String, UserCredentialsObject> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UserCredentialsObject>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UserCredentialsObject.fromJson(value));
    }
    return map;
  }
}

