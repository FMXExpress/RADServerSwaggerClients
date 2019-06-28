package io.swagger.client.model {


    [XmlRootNode(name="UpdateInstallationObject")]
    public class UpdateInstallationObject {
                // This declaration below of _channels_obj_class is to force flash compiler to include this class
        private var _channels_obj_class: Array = null;
        [XmlElementWrapper(name="channels")]
        [XmlElements(name="channels", type="Array")]
                public var channels: Array = new Array();

    public function toString(): String {
        var str: String = "UpdateInstallationObject: ";
        str += " (channels: " + channels + ")";
        return str;
    }

}

}
