package io.swagger.client.model {

import io.swagger.client.model.PushDataObject;
import io.swagger.client.model.PushWhereObject;

    [XmlRootNode(name="PushObject")]
    public class PushObject {
                [XmlElement(name="data")]
        public var data: PushDataObject = NaN;
                // This declaration below of _channels_obj_class is to force flash compiler to include this class
        private var _channels_obj_class: Array = null;
        [XmlElementWrapper(name="channels")]
        [XmlElements(name="channels", type="Array")]
                public var channels: Array = new Array();
                [XmlElement(name="where")]
        public var where: PushWhereObject = NaN;

    public function toString(): String {
        var str: String = "PushObject: ";
        str += " (data: " + data + ")";
        str += " (channels: " + channels + ")";
        str += " (where: " + where + ")";
        return str;
    }

}

}
