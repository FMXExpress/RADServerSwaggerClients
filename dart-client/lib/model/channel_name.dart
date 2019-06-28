part of swagger.api;

class ChannelName {
    ChannelName();

  @override
  String toString() {
    return 'ChannelName[]';
  }

  ChannelName.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<ChannelName> listFromJson(List<dynamic> json) {
    return json == null ? new List<ChannelName>() : json.map((value) => new ChannelName.fromJson(value)).toList();
  }

  static Map<String, ChannelName> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ChannelName>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ChannelName.fromJson(value));
    }
    return map;
  }
}

