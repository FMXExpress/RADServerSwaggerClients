package io.swagger.client.model {


    [XmlRootNode(name="MetaObject")]
    public class MetaObject {
                [XmlElement(name="creator")]
        public var creator: String = null;
                [XmlElement(name="created")]
        public var created: String = null;
                [XmlElement(name="updated")]
        public var updated: String = null;

    public function toString(): String {
        var str: String = "MetaObject: ";
        str += " (creator: " + creator + ")";
        str += " (created: " + created + ")";
        str += " (updated: " + updated + ")";
        return str;
    }

}

}
