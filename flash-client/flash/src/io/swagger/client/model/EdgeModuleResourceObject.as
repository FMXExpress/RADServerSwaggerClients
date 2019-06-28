package io.swagger.client.model {

import io.swagger.client.model.MetaEdgeModuleObject;

    [XmlRootNode(name="EdgeModuleResourceObject")]
    public class EdgeModuleResourceObject {
                [XmlElement(name="resourcename")]
        public var resourcename: String = null;
                [XmlElement(name="modulename")]
        public var modulename: String = null;
                [XmlElement(name="moduleid")]
        public var moduleid: String = null;
                [XmlElement(name="_meta")]
        public var meta: MetaEdgeModuleObject = NaN;

    public function toString(): String {
        var str: String = "EdgeModuleResourceObject: ";
        str += " (resourcename: " + resourcename + ")";
        str += " (modulename: " + modulename + ")";
        str += " (moduleid: " + moduleid + ")";
        str += " (meta: " + meta + ")";
        return str;
    }

}

}
