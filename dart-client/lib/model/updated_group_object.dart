part of swagger.api;

class UpdatedGroupObject {
  
  String updated = null;
  
  UpdatedGroupObject();

  @override
  String toString() {
    return 'UpdatedGroupObject[updated=$updated, ]';
  }

  UpdatedGroupObject.fromJson(Map<String, dynamic> json) {
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

  static List<UpdatedGroupObject> listFromJson(List<dynamic> json) {
    return json == null ? new List<UpdatedGroupObject>() : json.map((value) => new UpdatedGroupObject.fromJson(value)).toList();
  }

  static Map<String, UpdatedGroupObject> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UpdatedGroupObject>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UpdatedGroupObject.fromJson(value));
    }
    return map;
  }
}

