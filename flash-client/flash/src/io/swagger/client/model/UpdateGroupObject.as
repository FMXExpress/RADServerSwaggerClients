package io.swagger.client.model {


    [XmlRootNode(name="UpdateGroupObject")]
    public class UpdateGroupObject {
                [XmlElement(name="fieldName")]
        public var fieldName: String = null;
                // This declaration below of _users_obj_class is to force flash compiler to include this class
        private var _users_obj_class: Array = null;
        [XmlElementWrapper(name="users")]
        [XmlElements(name="users", type="Array")]
                public var users: Array = new Array();

    public function toString(): String {
        var str: String = "UpdateGroupObject: ";
        str += " (fieldName: " + fieldName + ")";
        str += " (users: " + users + ")";
        return str;
    }

}

}
