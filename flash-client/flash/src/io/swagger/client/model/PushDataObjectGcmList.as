package io.swagger.client.model {

import io.swagger.common.ListWrapper;

    public class PushDataObjectGcmList implements ListWrapper {
        // This declaration below of _pushDataObject_gcm_obj_class is to force flash compiler to include this class
        private var _pushDataObjectGcm_obj_class: io.swagger.client.model.PushDataObjectGcm = null;
        [XmlElements(name="pushDataObjectGcm", type="io.swagger.client.model.PushDataObjectGcm")]
        public var pushDataObjectGcm: Array = new Array();

        public function getList(): Array{
            return pushDataObjectGcm;
        }

}

}
