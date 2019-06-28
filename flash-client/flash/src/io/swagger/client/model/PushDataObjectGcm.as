package io.swagger.client.model {


    [XmlRootNode(name="PushDataObjectGcm")]
    public class PushDataObjectGcm {
                [XmlElement(name="message")]
        public var message: String = null;
                [XmlElement(name="title")]
        public var title: String = null;

    public function toString(): String {
        var str: String = "PushDataObjectGcm: ";
        str += " (message: " + message + ")";
        str += " (title: " + title + ")";
        return str;
    }

}

}
