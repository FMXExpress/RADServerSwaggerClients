package io.swagger.client.model {


    [XmlRootNode(name="UpdatedInstallationObject")]
    public class UpdatedInstallationObject {
                [XmlElement(name="updated")]
        public var updated: String = null;

    public function toString(): String {
        var str: String = "UpdatedInstallationObject: ";
        str += " (updated: " + updated + ")";
        return str;
    }

}

}
