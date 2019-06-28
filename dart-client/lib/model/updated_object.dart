part of swagger.api;

class UpdatedObject {
  
  String updated = null;
  
  UpdatedObject();

  @override
  String toString() {
    return 'UpdatedObject[updated=$updated, ]';
  }

  UpdatedObject.fromJson(Map<String, dynamic> json) {
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

  static List<UpdatedObject> listFromJson(List<dynamic> json) {
    return json == null ? new List<UpdatedObject>() : json.map((value) => new UpdatedObject.fromJson(value)).toList();
  }

  static Map<String, UpdatedObject> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UpdatedObject>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UpdatedObject.fromJson(value));
    }
    return map;
  }
}

