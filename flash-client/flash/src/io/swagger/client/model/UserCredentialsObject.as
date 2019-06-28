package io.swagger.client.model {


    [XmlRootNode(name="UserCredentialsObject")]
    public class UserCredentialsObject {
                [XmlElement(name="username")]
        public var username: String = null;
                [XmlElement(name="password")]
        public var password: String = null;

    public function toString(): String {
        var str: String = "UserCredentialsObject: ";
        str += " (username: " + username + ")";
        str += " (password: " + password + ")";
        return str;
    }

}

}
