package io.swagger.client.model {

import io.swagger.client.model.MetaObject;

    [XmlRootNode(name="UserTokenObject")]
    public class UserTokenObject {
                [XmlElement(name="id")]
        public var id: String = null;
                [XmlElement(name="username")]
        public var username: String = null;
                [XmlElement(name="_meta")]
        public var meta: MetaObject = NaN;
                [XmlElement(name="sessiontoken")]
        public var sessiontoken: String = null;

    public function toString(): String {
        var str: String = "UserTokenObject: ";
        str += " (id: " + id + ")";
        str += " (username: " + username + ")";
        str += " (meta: " + meta + ")";
        str += " (sessiontoken: " + sessiontoken + ")";
        return str;
    }

}

}
