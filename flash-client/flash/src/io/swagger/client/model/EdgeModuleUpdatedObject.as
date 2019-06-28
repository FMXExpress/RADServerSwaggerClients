package io.swagger.client.model {


    [XmlRootNode(name="EdgeModuleUpdatedObject")]
    public class EdgeModuleUpdatedObject {
                [XmlElement(name="updated")]
        public var updated: String = null;

    public function toString(): String {
        var str: String = "EdgeModuleUpdatedObject: ";
        str += " (updated: " + updated + ")";
        return str;
    }

}

}
