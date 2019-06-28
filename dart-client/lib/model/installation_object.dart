part of swagger.api;

class InstallationObject {
  
  String id = null;
  

  String deviceToken = null;
  

  String deviceType = null;
  //enum deviceTypeEnum {  ios,  android,  };

  MetaInstallationObject meta = null;
  

  List<String> channels = [];
  
  InstallationObject();

  @override
  String toString() {
    return 'InstallationObject[id=$id, deviceToken=$deviceToken, deviceType=$deviceType, meta=$meta, channels=$channels, ]';
  }

  InstallationObject.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id =
        json['id']
    ;
    deviceToken =
        json['deviceToken']
    ;
    deviceType =
        json['deviceType']
    ;
    meta =
      
      
      new MetaInstallationObject.fromJson(json['meta'])
;
    channels =
        (json['channels'] as List).map((item) => item as String).toList()
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'deviceToken': deviceToken,
      'deviceType': deviceType,
      'meta': meta,
      'channels': channels
     };
  }

  static List<InstallationObject> listFromJson(List<dynamic> json) {
    return json == null ? new List<InstallationObject>() : json.map((value) => new InstallationObject.fromJson(value)).toList();
  }

  static Map<String, InstallationObject> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InstallationObject>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InstallationObject.fromJson(value));
    }
    return map;
  }
}

