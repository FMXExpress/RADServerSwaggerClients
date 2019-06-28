part of swagger.api;

class UpdatedInstallationObject {
  
  String updated = null;
  
  UpdatedInstallationObject();

  @override
  String toString() {
    return 'UpdatedInstallationObject[updated=$updated, ]';
  }

  UpdatedInstallationObject.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    updated =
        json['updated']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'updated': updated
     };
  }

  static List<UpdatedInstallationObject> listFromJson(List<dynamic> json) {
    return json == null ? new List<UpdatedInstallationObject>() : json.map((value) => new UpdatedInstallationObject.fromJson(value)).toList();
  }

  static Map<String, UpdatedInstallationObject> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UpdatedInstallationObject>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UpdatedInstallationObject.fromJson(value));
    }
    return map;
  }
}

