package io.swagger.client.model {


    [XmlRootNode(name="UpdatedGroupObject")]
    public class UpdatedGroupObject {
                [XmlElement(name="updated")]
        public var updated: String = null;

    public function toString(): String {
        var str: String = "UpdatedGroupObject: ";
        str += " (updated: " + updated + ")";
        return str;
    }

}

}
