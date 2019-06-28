part of swagger.api;

class PushDataObjectExtras {
  
  String message = null;
  
  PushDataObjectExtras();

  @override
  String toString() {
    return 'PushDataObjectExtras[message=$message, ]';
  }

  PushDataObjectExtras.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    message =
        json['message']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'message': message
     };
  }

  static List<PushDataObjectExtras> listFromJson(List<dynamic> json) {
    return json == null ? new List<PushDataObjectExtras>() : json.map((value) => new PushDataObjectExtras.fromJson(value)).toList();
  }

  static Map<String, PushDataObjectExtras> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PushDataObjectExtras>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PushDataObjectExtras.fromJson(value));
    }
    return map;
  }
}

