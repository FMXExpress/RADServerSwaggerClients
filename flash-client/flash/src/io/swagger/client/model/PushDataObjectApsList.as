package io.swagger.client.model {

import io.swagger.common.ListWrapper;

    public class PushDataObjectApsList implements ListWrapper {
        // This declaration below of _pushDataObject_aps_obj_class is to force flash compiler to include this class
        private var _pushDataObjectAps_obj_class: io.swagger.client.model.PushDataObjectAps = null;
        [XmlElements(name="pushDataObjectAps", type="io.swagger.client.model.PushDataObjectAps")]
        public var pushDataObjectAps: Array = new Array();

        public function getList(): Array{
            return pushDataObjectAps;
        }

}

}
