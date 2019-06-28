part of swagger.api;

class PushDataObjectAps {
  
  String alert = null;
  

  String badge = null;
  

  String sound = null;
  
  PushDataObjectAps();

  @override
  String toString() {
    return 'PushDataObjectAps[alert=$alert, badge=$badge, sound=$sound, ]';
  }

  PushDataObjectAps.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    alert =
        json['alert']
    ;
    badge =
        json['badge']
    ;
    sound =
        json['sound']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'alert': alert,
      'badge': badge,
      'sound': sound
     };
  }

  static List<PushDataObjectAps> listFromJson(List<dynamic> json) {
    return json == null ? new List<PushDataObjectAps>() : json.map((value) => new PushDataObjectAps.fromJson(value)).toList();
  }

  static Map<String, PushDataObjectAps> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PushDataObjectAps>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PushDataObjectAps.fromJson(value));
    }
    return map;
  }
}

