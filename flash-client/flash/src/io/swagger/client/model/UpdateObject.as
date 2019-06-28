package io.swagger.client.model {


    [XmlRootNode(name="UpdateObject")]
    public class UpdateObject {
                [XmlElement(name="fieldName")]
        public var fieldName: String = null;

    public function toString(): String {
        var str: String = "UpdateObject: ";
        str += " (fieldName: " + fieldName + ")";
        return str;
    }

}

}
