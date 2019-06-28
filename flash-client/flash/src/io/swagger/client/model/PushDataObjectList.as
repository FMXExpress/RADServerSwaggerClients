package io.swagger.client.model {

import io.swagger.common.ListWrapper;
import io.swagger.client.model.PushDataObjectAps;
import io.swagger.client.model.PushDataObjectExtras;
import io.swagger.client.model.PushDataObjectGcm;

    public class PushDataObjectList implements ListWrapper {
        // This declaration below of _pushDataObject_obj_class is to force flash compiler to include this class
        private var _pushDataObject_obj_class: io.swagger.client.model.PushDataObject = null;
        [XmlElements(name="pushDataObject", type="io.swagger.client.model.PushDataObject")]
        public var pushDataObject: Array = new Array();

        public function getList(): Array{
            return pushDataObject;
        }

}

}
