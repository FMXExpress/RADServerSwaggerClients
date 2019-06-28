package io.swagger.client.model {

import io.swagger.client.model.MetaEdgeModuleObject;

    [XmlRootNode(name="EdgeModuleObject")]
    public class EdgeModuleObject {
                [XmlElement(name="modulename")]
        public var modulename: String = null;
                [XmlElement(name="_id")]
        public var id: String = null;
                [XmlElement(name="protocol")]
        public var protocol: String = null;
                [XmlElement(name="protocolprops")]
        public var protocolprops: String = null;
                [XmlElement(name="_meta")]
        public var meta: MetaEdgeModuleObject = NaN;

    public function toString(): String {
        var str: String = "EdgeModuleObject: ";
        str += " (modulename: " + modulename + ")";
        str += " (id: " + id + ")";
        str += " (protocol: " + protocol + ")";
        str += " (protocolprops: " + protocolprops + ")";
        str += " (meta: " + meta + ")";
        return str;
    }

}

}
