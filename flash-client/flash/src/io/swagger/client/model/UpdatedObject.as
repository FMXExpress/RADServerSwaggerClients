package io.swagger.client.model {


    [XmlRootNode(name="UpdatedObject")]
    public class UpdatedObject {
                [XmlElement(name="updated")]
        public var updated: String = null;

    public function toString(): String {
        var str: String = "UpdatedObject: ";
        str += " (updated: " + updated + ")";
        return str;
    }

}

}
