package io.swagger.client.model {


    [XmlRootNode(name="UseridObject")]
    public class UseridObject {
                [XmlElement(name="_id")]
        public var id: String = null;

    public function toString(): String {
        var str: String = "UseridObject: ";
        str += " (id: " + id + ")";
        return str;
    }

}

}
