part of swagger.api;

class PushWhereObject {
  
  String deviceType = null;
  //enum deviceTypeEnum {  ios,  android,  };

  PushWhereObjectDeviceToken deviceToken = null;
  
  PushWhereObject();

  @override
  String toString() {
    return 'PushWhereObject[deviceType=$deviceType, deviceToken=$deviceToken, ]';
  }

  PushWhereObject.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    deviceType =
        json['deviceType']
    ;
    deviceToken =
      
      
      new PushWhereObjectDeviceToken.fromJson(json['deviceToken'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'deviceType': deviceType,
      'deviceToken': deviceToken
     };
  }

  static List<PushWhereObject> listFromJson(List<dynamic> json) {
    return json == null ? new List<PushWhereObject>() : json.map((value) => new PushWhereObject.fromJson(value)).toList();
  }

  static Map<String, PushWhereObject> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PushWhereObject>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PushWhereObject.fromJson(value));
    }
    return map;
  }
}

