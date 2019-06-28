part of swagger.api;

class InstallationAddObject {
  
  String deviceToken = null;
  

  String deviceType = null;
  

  List<String> channels = [];
  
  InstallationAddObject();

  @override
  String toString() {
    return 'InstallationAddObject[deviceToken=$deviceToken, deviceType=$deviceType, channels=$channels, ]';
  }

  InstallationAddObject.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    deviceToken =
        json['deviceToken']
    ;
    deviceType =
        json['deviceType']
    ;
    channels =
        (json['channels'] as List).map((item) => item as String).toList()
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'deviceToken': deviceToken,
      'deviceType': deviceType,
      'channels': channels
     };
  }

  static List<InstallationAddObject> listFromJson(List<dynamic> json) {
    return json == null ? new List<InstallationAddObject>() : json.map((value) => new InstallationAddObject.fromJson(value)).toList();
  }

  static Map<String, InstallationAddObject> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InstallationAddObject>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InstallationAddObject.fromJson(value));
    }
    return map;
  }
}

