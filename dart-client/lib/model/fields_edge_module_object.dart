part of swagger.api;

class FieldsEdgeModuleObject {
  
  String name = null;
  

  List<FieldObjectFields> fields = [];
  

  bool custom = null;
  
  FieldsEdgeModuleObject();

  @override
  String toString() {
    return 'FieldsEdgeModuleObject[name=$name, fields=$fields, custom=$custom, ]';
  }

  FieldsEdgeModuleObject.fromJson(Map<String, dynamic> json) {
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

  static List<FieldsEdgeModuleObject> listFromJson(List<dynamic> json) {
    return json == null ? new List<FieldsEdgeModuleObject>() : json.map((value) => new FieldsEdgeModuleObject.fromJson(value)).toList();
  }

  static Map<String, FieldsEdgeModuleObject> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, FieldsEdgeModuleObject>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new FieldsEdgeModuleObject.fromJson(value));
    }
    return map;
  }
}

