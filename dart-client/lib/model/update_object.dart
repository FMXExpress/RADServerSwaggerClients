part of swagger.api;

class UpdateObject {
  
  String fieldName = null;
  
  UpdateObject();

  @override
  String toString() {
    return 'UpdateObject[fieldName=$fieldName, ]';
  }

  UpdateObject.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    fieldName =
        json['fieldName']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'fieldName': fieldName
     };
  }

  static List<UpdateObject> listFromJson(List<dynamic> json) {
    return json == null ? new List<UpdateObject>() : json.map((value) => new UpdateObject.fromJson(value)).toList();
  }

  static Map<String, UpdateObject> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UpdateObject>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UpdateObject.fromJson(value));
    }
    return map;
  }
}

