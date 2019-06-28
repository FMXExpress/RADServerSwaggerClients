package io.swagger.client.model {

import io.swagger.client.model.MetaGroupObject;

    [XmlRootNode(name="GroupObject")]
    public class GroupObject {
                [XmlElement(name="name")]
        public var name: String = null;
                [XmlElement(name="_meta")]
        public var meta: MetaGroupObject = NaN;
                // This declaration below of _users_obj_class is to force flash compiler to include this class
        private var _users_obj_class: Array = null;
        [XmlElementWrapper(name="users")]
        [XmlElements(name="users", type="Array")]
                public var users: Array = new Array();

    public function toString(): String {
        var str: String = "GroupObject: ";
        str += " (name: " + name + ")";
        str += " (meta: " + meta + ")";
        str += " (users: " + users + ")";
        return str;
    }

}

}
