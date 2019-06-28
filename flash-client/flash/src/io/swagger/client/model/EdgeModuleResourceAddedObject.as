package io.swagger.client.model {


    [XmlRootNode(name="EdgeModuleResourceAddedObject")]
    public class EdgeModuleResourceAddedObject {
                [XmlElement(name="resourcename")]
        public var resourcename: String = null;

    public function toString(): String {
        var str: String = "EdgeModuleResourceAddedObject: ";
        str += " (resourcename: " + resourcename + ")";
        return str;
    }

}

}
