part of swagger.api;

class FieldObjectFields {
  
  String name = null;
  
  FieldObjectFields();

  @override
  String toString() {
    return 'FieldObjectFields[name=$name, ]';
  }

  FieldObjectFields.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name =
        json['name']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name
     };
  }

  static List<FieldObjectFields> listFromJson(List<dynamic> json) {
    return json == null ? new List<FieldObjectFields>() : json.map((value) => new FieldObjectFields.fromJson(value)).toList();
  }

  static Map<String, FieldObjectFields> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, FieldObjectFields>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new FieldObjectFields.fromJson(value));
    }
    return map;
  }
}

