part of swagger.api;

class InstallationAddedObject {
  
  String id = null;
  
  InstallationAddedObject();

  @override
  String toString() {
    return 'InstallationAddedObject[id=$id, ]';
  }

  InstallationAddedObject.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id =
        json['id']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id
     };
  }

  static List<InstallationAddedObject> listFromJson(List<dynamic> json) {
    return json == null ? new List<InstallationAddedObject>() : json.map((value) => new InstallationAddedObject.fromJson(value)).toList();
  }

  static Map<String, InstallationAddedObject> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InstallationAddedObject>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InstallationAddedObject.fromJson(value));
    }
    return map;
  }
}

