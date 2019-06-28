package io.swagger.client.model {


    [XmlRootNode(name="VersionObject")]
    public class VersionObject {
                [XmlElement(name="version")]
        public var version: String = null;
                [XmlElement(name="server")]
        public var server: String = null;

    public function toString(): String {
        var str: String = "VersionObject: ";
        str += " (version: " + version + ")";
        str += " (server: " + server + ")";
        return str;
    }

}

}
