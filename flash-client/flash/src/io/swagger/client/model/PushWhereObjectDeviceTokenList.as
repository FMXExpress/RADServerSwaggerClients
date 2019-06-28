package io.swagger.client.model {

import io.swagger.common.ListWrapper;

    public class PushWhereObjectDeviceTokenList implements ListWrapper {
        // This declaration below of _pushWhereObject_deviceToken_obj_class is to force flash compiler to include this class
        private var _pushWhereObjectDeviceToken_obj_class: io.swagger.client.model.PushWhereObjectDeviceToken = null;
        [XmlElements(name="pushWhereObjectDeviceToken", type="io.swagger.client.model.PushWhereObjectDeviceToken")]
        public var pushWhereObjectDeviceToken: Array = new Array();

        public function getList(): Array{
            return pushWhereObjectDeviceToken;
        }

}

}
