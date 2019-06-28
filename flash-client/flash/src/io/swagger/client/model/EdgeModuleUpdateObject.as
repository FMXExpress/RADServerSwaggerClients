package io.swagger.client.model {


    [XmlRootNode(name="EdgeModuleUpdateObject")]
    public class EdgeModuleUpdateObject {
                [XmlElement(name="modulename")]
        public var modulename: String = null;
                [XmlElement(name="protocol")]
        public var protocol: String = null;
                [XmlElement(name="protocolprops")]
        public var protocolprops: String = null;

    public function toString(): String {
        var str: String = "EdgeModuleUpdateObject: ";
        str += " (modulename: " + modulename + ")";
        str += " (protocol: " + protocol + ")";
        str += " (protocolprops: " + protocolprops + ")";
        return str;
    }

}

}
