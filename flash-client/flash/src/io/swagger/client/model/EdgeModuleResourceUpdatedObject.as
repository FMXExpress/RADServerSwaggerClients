package io.swagger.client.model {


    [XmlRootNode(name="EdgeModuleResourceUpdatedObject")]
    public class EdgeModuleResourceUpdatedObject {
                [XmlElement(name="updated")]
        public var updated: String = null;

    public function toString(): String {
        var str: String = "EdgeModuleResourceUpdatedObject: ";
        str += " (updated: " + updated + ")";
        return str;
    }

}

}
