package io.swagger.client.model {


    [XmlRootNode(name="FieldObjectFields")]
    public class FieldObjectFields {
                [XmlElement(name="name")]
        public var name: String = null;

    public function toString(): String {
        var str: String = "FieldObjectFields: ";
        str += " (name: " + name + ")";
        return str;
    }

}

}
