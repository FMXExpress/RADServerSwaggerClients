package io.swagger.client.model {

import io.swagger.client.model.PushWhereObjectDeviceToken;

    [XmlRootNode(name="PushWhereObject")]
    public class PushWhereObject {
                [XmlElement(name="deviceType")]
        public var deviceType: String = null;
                [XmlElement(name="deviceToken")]
        public var deviceToken: PushWhereObjectDeviceToken = NaN;

    public function toString(): String {
        var str: String = "PushWhereObject: ";
        str += " (deviceType: " + deviceType + ")";
        str += " (deviceToken: " + deviceToken + ")";
        return str;
    }

}

}
