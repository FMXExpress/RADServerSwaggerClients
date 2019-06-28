part of swagger.api;

class FieldInstallationObject {
  
  String name = null;
  

  List<FieldObjectFields> fields = [];
  

  bool custom = null;
  
  FieldInstallationObject();

  @override
  String toString() {
    return 'FieldInstallationObject[name=$name, fields=$fields, custom=$custom, ]';
  }

  FieldInstallationObject.fromJson(Map<String, dynamic> json) {
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

  static List<FieldInstallationObject> listFromJson(List<dynamic> json) {
    return json == null ? new List<FieldInstallationObject>() : json.map((value) => new FieldInstallationObject.fromJson(value)).toList();
  }

  static Map<String, FieldInstallationObject> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, FieldInstallationObject>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new FieldInstallationObject.fromJson(value));
    }
    return map;
  }
}

