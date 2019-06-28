package io.swagger.client.model {


    [XmlRootNode(name="UserSignUpResponseObject")]
    public class UserSignUpResponseObject {
                [XmlElement(name="_id")]
        public var id: String = null;
                [XmlElement(name="sessionToken")]
        public var sessionToken: String = null;

    public function toString(): String {
        var str: String = "UserSignUpResponseObject: ";
        str += " (id: " + id + ")";
        str += " (sessionToken: " + sessionToken + ")";
        return str;
    }

}

}
