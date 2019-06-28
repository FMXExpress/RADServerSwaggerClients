part of swagger.api;

class MetaInstallationObject {
  
  String creator = null;
  

  String created = null;
  

  String updated = null;
  
  MetaInstallationObject();

  @override
  String toString() {
    return 'MetaInstallationObject[creator=$creator, created=$created, updated=$updated, ]';
  }

  MetaInstallationObject.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    creator =
        json['creator']
    ;
    created =
        json['created']
    ;
    updated =
        json['updated']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'creator': creator,
      'created': created,
      'updated': updated
     };
  }

  static List<MetaInstallationObject> listFromJson(List<dynamic> json) {
    return json == null ? new List<MetaInstallationObject>() : json.map((value) => new MetaInstallationObject.fromJson(value)).toList();
  }

  static Map<String, MetaInstallationObject> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, MetaInstallationObject>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new MetaInstallationObject.fromJson(value));
    }
    return map;
  }
}

