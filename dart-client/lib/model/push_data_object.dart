part of swagger.api;

class PushDataObject {
  
  PushDataObjectGcm gcm = null;
  

  PushDataObjectAps aps = null;
  

  PushDataObjectExtras extras = null;
  
  PushDataObject();

  @override
  String toString() {
    return 'PushDataObject[gcm=$gcm, aps=$aps, extras=$extras, ]';
  }

  PushDataObject.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    gcm =
      
      
      new PushDataObjectGcm.fromJson(json['gcm'])
;
    aps =
      
      
      new PushDataObjectAps.fromJson(json['aps'])
;
    extras =
      
      
      new PushDataObjectExtras.fromJson(json['extras'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'gcm': gcm,
      'aps': aps,
      'extras': extras
     };
  }

  static List<PushDataObject> listFromJson(List<dynamic> json) {
    return json == null ? new List<PushDataObject>() : json.map((value) => new PushDataObject.fromJson(value)).toList();
  }

  static Map<String, PushDataObject> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PushDataObject>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PushDataObject.fromJson(value));
    }
    return map;
  }
}

