part of swagger.api;

class FieldGroupObject {
  
  String name = null;
  

  List<FieldObjectFields> fields = [];
  

  bool custom = null;
  
  FieldGroupObject();

  @override
  String toString() {
    return 'FieldGroupObject[name=$name, fields=$fields, custom=$custom, ]';
  }

  FieldGroupObject.fromJson(Map<String, dynamic> json) {
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

  static List<FieldGroupObject> listFromJson(List<dynamic> json) {
    return json == null ? new List<FieldGroupObject>() : json.map((value) => new FieldGroupObject.fromJson(value)).toList();
  }

  static Map<String, FieldGroupObject> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, FieldGroupObject>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new FieldGroupObject.fromJson(value));
    }
    return map;
  }
}

