package io.swagger.client.model {


    [XmlRootNode(name="InstallationAddObject")]
    public class InstallationAddObject {
                [XmlElement(name="deviceToken")]
        public var deviceToken: String = null;
                [XmlElement(name="deviceType")]
        public var deviceType: String = null;
                // This declaration below of _channels_obj_class is to force flash compiler to include this class
        private var _channels_obj_class: Array = null;
        [XmlElementWrapper(name="channels")]
        [XmlElements(name="channels", type="Array")]
                public var channels: Array = new Array();

    public function toString(): String {
        var str: String = "InstallationAddObject: ";
        str += " (deviceToken: " + deviceToken + ")";
        str += " (deviceType: " + deviceType + ")";
        str += " (channels: " + channels + ")";
        return str;
    }

}

}
