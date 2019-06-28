package io.swagger.client.model {


    [XmlRootNode(name="PushDataObjectAps")]
    public class PushDataObjectAps {
                [XmlElement(name="alert")]
        public var alert: String = null;
                [XmlElement(name="badge")]
        public var badge: String = null;
                [XmlElement(name="sound")]
        public var sound: String = null;

    public function toString(): String {
        var str: String = "PushDataObjectAps: ";
        str += " (alert: " + alert + ")";
        str += " (badge: " + badge + ")";
        str += " (sound: " + sound + ")";
        return str;
    }

}

}
