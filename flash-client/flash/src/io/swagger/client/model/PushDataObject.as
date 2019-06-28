package io.swagger.client.model {

import io.swagger.client.model.PushDataObjectAps;
import io.swagger.client.model.PushDataObjectExtras;
import io.swagger.client.model.PushDataObjectGcm;

    [XmlRootNode(name="PushDataObject")]
    public class PushDataObject {
                [XmlElement(name="gcm")]
        public var gcm: PushDataObjectGcm = NaN;
                [XmlElement(name="aps")]
        public var aps: PushDataObjectAps = NaN;
                [XmlElement(name="extras")]
        public var extras: PushDataObjectExtras = NaN;

    public function toString(): String {
        var str: String = "PushDataObject: ";
        str += " (gcm: " + gcm + ")";
        str += " (aps: " + aps + ")";
        str += " (extras: " + extras + ")";
        return str;
    }

}

}
