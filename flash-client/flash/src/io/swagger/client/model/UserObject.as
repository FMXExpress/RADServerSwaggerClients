package io.swagger.client.model {

import io.swagger.client.model.MetaObject;

    [XmlRootNode(name="UserObject")]
    public class UserObject {
                [XmlElement(name="id")]
        public var id: String = null;
                [XmlElement(name="username")]
        public var username: String = null;
                [XmlElement(name="_meta")]
        public var meta: MetaObject = NaN;

    public function toString(): String {
        var str: String = "UserObject: ";
        str += " (id: " + id + ")";
        str += " (username: " + username + ")";
        str += " (meta: " + meta + ")";
        return str;
    }

}

}
