package io.swagger.client.model {

import io.swagger.client.model.MetaInstallationObject;

    [XmlRootNode(name="InstallationObject")]
    public class InstallationObject {
                [XmlElement(name="_id")]
        public var id: String = null;
                [XmlElement(name="deviceToken")]
        public var deviceToken: String = null;
                [XmlElement(name="deviceType")]
        public var deviceType: String = null;
                [XmlElement(name="_meta")]
        public var meta: MetaInstallationObject = NaN;
                // This declaration below of _channels_obj_class is to force flash compiler to include this class
        private var _channels_obj_class: Array = null;
        [XmlElementWrapper(name="channels")]
        [XmlElements(name="channels", type="Array")]
                public var channels: Array = new Array();

    public function toString(): String {
        var str: String = "InstallationObject: ";
        str += " (id: " + id + ")";
        str += " (deviceToken: " + deviceToken + ")";
        str += " (deviceType: " + deviceType + ")";
        str += " (meta: " + meta + ")";
        str += " (channels: " + channels + ")";
        return str;
    }

}

}
