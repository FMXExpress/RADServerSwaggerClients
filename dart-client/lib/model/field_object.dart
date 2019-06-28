part of swagger.api;

class FieldObject {
  
  String name = null;
  

  List<FieldObjectFields> fields = [];
  

  bool custom = null;
  
  FieldObject();

  @override
  String toString() {
    return 'FieldObject[name=$name, fields=$fields, custom=$custom, ]';
  }

  FieldObject.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name =
        json['name']
    ;
    fields =
      FieldObjectFields.listFromJson(json['fields'])
;
    custom =
        json['custom']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'fields': fields,
      'custom': custom
     };
  }

  static List<FieldObject> listFromJson(List<dynamic> json) {
    return json == null ? new List<FieldObject>() : json.map((value) => new FieldObject.fromJson(value)).toList();
  }

  static Map<String, FieldObject> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, FieldObject>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new FieldObject.fromJson(value));
    }
    return map;
  }
}

