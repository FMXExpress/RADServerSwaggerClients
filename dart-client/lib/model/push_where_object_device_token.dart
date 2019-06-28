part of swagger.api;

class PushWhereObjectDeviceToken {
  
  List<String> $In = [];
  
  PushWhereObjectDeviceToken();

  @override
  String toString() {
    return 'PushWhereObjectDeviceToken[$In=$$In, ]';
  }

  PushWhereObjectDeviceToken.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    $In =
        (json['$In'] as List).map((item) => item as String).toList()
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      '$In': $In
     };
  }

  static List<PushWhereObjectDeviceToken> listFromJson(List<dynamic> json) {
    return json == null ? new List<PushWhereObjectDeviceToken>() : json.map((value) => new PushWhereObjectDeviceToken.fromJson(value)).toList();
  }

  static Map<String, PushWhereObjectDeviceToken> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PushWhereObjectDeviceToken>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PushWhereObjectDeviceToken.fromJson(value));
    }
    return map;
  }
}

