package io.swagger.client.model {


    [XmlRootNode(name="EdgeModuleResourceUpdateObject")]
    public class EdgeModuleResourceUpdateObject {
                [XmlElement(name="resourcename")]
        public var resourcename: String = null;

    public function toString(): String {
        var str: String = "EdgeModuleResourceUpdateObject: ";
        str += " (resourcename: " + resourcename + ")";
        return str;
    }

}

}
