package io.swagger.client.model {


    [XmlRootNode(name="EdgeModuleResourceAddObject")]
    public class EdgeModuleResourceAddObject {
                [XmlElement(name="resourcename")]
        public var resourcename: String = null;

    public function toString(): String {
        var str: String = "EdgeModuleResourceAddObject: ";
        str += " (resourcename: " + resourcename + ")";
        return str;
    }

}

}
