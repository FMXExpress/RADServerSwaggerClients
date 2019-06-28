package io.swagger.client.model {


    [XmlRootNode(name="PushDataObjectExtras")]
    public class PushDataObjectExtras {
                [XmlElement(name="message")]
        public var message: String = null;

    public function toString(): String {
        var str: String = "PushDataObjectExtras: ";
        str += " (message: " + message + ")";
        return str;
    }

}

}
