package io.swagger.client.model {


    [XmlRootNode(name="InstallationAddedObject")]
    public class InstallationAddedObject {
                [XmlElement(name="_id")]
        public var id: String = null;

    public function toString(): String {
        var str: String = "InstallationAddedObject: ";
        str += " (id: " + id + ")";
        return str;
    }

}

}
