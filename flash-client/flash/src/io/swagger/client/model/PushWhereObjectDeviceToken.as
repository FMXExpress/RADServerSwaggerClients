package io.swagger.client.model {


    [XmlRootNode(name="PushWhereObjectDeviceToken")]
    public class PushWhereObjectDeviceToken {
                // This declaration below of _$In_obj_class is to force flash compiler to include this class
        private var _$In_obj_class: Array = null;
        [XmlElementWrapper(name="$in")]
        [XmlElements(name="$In", type="Array")]
                public var $In: Array = new Array();

    public function toString(): String {
        var str: String = "PushWhereObjectDeviceToken: ";
        str += " ($In: " + $In + ")";
        return str;
    }

}

}
