part of swagger.api;

class UpdateInstallationObject {
  
  List<String> channels = [];
  
  UpdateInstallationObject();

  @override
  String toString() {
    return 'UpdateInstallationObject[channels=$channels, ]';
  }

  UpdateInstallationObject.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    channels =
        (json['channels'] as List).map((item) => item as String).toList()
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'channels': channels
     };
  }

  static List<UpdateInstallationObject> listFromJson(List<dynamic> json) {
    return json == null ? new List<UpdateInstallationObject>() : json.map((value) => new UpdateInstallationObject.fromJson(value)).toList();
  }

  static Map<String, UpdateInstallationObject> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UpdateInstallationObject>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UpdateInstallationObject.fromJson(value));
    }
    return map;
  }
}

