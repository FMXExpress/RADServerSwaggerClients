part of swagger.api;

class PushDataObjectGcm {
  
  String message = null;
  

  String title = null;
  
  PushDataObjectGcm();

  @override
  String toString() {
    return 'PushDataObjectGcm[message=$message, title=$title, ]';
  }

  PushDataObjectGcm.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    message =
        json['message']
    ;
    title =
        json['title']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'message': message,
      'title': title
     };
  }

  static List<PushDataObjectGcm> listFromJson(List<dynamic> json) {
    return json == null ? new List<PushDataObjectGcm>() : json.map((value) => new PushDataObjectGcm.fromJson(value)).toList();
  }

  static Map<String, PushDataObjectGcm> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PushDataObjectGcm>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PushDataObjectGcm.fromJson(value));
    }
    return map;
  }
}

