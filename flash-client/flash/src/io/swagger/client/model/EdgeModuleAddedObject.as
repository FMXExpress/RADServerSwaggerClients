package io.swagger.client.model {


    [XmlRootNode(name="EdgeModuleAddedObject")]
    public class EdgeModuleAddedObject {
                [XmlElement(name="_id")]
        public var id: String = null;
                [XmlElement(name="modulename")]
        public var modulename: String = null;

    public function toString(): String {
        var str: String = "EdgeModuleAddedObject: ";
        str += " (id: " + id + ")";
        str += " (modulename: " + modulename + ")";
        return str;
    }

}

}
