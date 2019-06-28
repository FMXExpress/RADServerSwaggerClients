package io.swagger.client.model {


    [XmlRootNode(name="GroupAddObject")]
    public class GroupAddObject {
                [XmlElement(name="groupname")]
        public var groupname: String = null;

    public function toString(): String {
        var str: String = "GroupAddObject: ";
        str += " (groupname: " + groupname + ")";
        return str;
    }

}

}
