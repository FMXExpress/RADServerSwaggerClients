package io.swagger.client.model {

import io.swagger.common.ListWrapper;
import io.swagger.client.model.PushWhereObjectDeviceToken;

    public class PushWhereObjectList implements ListWrapper {
        // This declaration below of _pushWhereObject_obj_class is to force flash compiler to include this class
        private var _pushWhereObject_obj_class: io.swagger.client.model.PushWhereObject = null;
        [XmlElements(name="pushWhereObject", type="io.swagger.client.model.PushWhereObject")]
        public var pushWhereObject: Array = new Array();

        public function getList(): Array{
            return pushWhereObject;
        }

}

}
