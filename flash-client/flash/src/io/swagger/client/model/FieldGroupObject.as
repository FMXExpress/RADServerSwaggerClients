package io.swagger.client.model {

import io.swagger.client.model.FieldObjectFields;

    [XmlRootNode(name="FieldGroupObject")]
    public class FieldGroupObject {
                [XmlElement(name="name")]
        public var name: String = null;
                // This declaration below of _fields_obj_class is to force flash compiler to include this class
        private var _fields_obj_class: Array = null;
        [XmlElementWrapper(name="fields")]
        [XmlElements(name="fields", type="Array")]
                public var fields: Array = new Array();
                [XmlElement(name="custom")]
        public var custom: Boolean = false;

    public function toString(): String {
        var str: String = "FieldGroupObject: ";
        str += " (name: " + name + ")";
        str += " (fields: " + fields + ")";
        str += " (custom: " + custom + ")";
        return str;
    }

}

}
