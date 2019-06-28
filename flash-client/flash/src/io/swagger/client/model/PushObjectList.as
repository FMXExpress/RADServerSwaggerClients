package io.swagger.client.model {

import io.swagger.common.ListWrapper;
import io.swagger.client.model.PushDataObject;
import io.swagger.client.model.PushWhereObject;

    public class PushObjectList implements ListWrapper {
        // This declaration below of _pushObject_obj_class is to force flash compiler to include this class
        private var _pushObject_obj_class: io.swagger.client.model.PushObject = null;
        [XmlElements(name="pushObject", type="io.swagger.client.model.PushObject")]
        public var pushObject: Array = new Array();

        public function getList(): Array{
            return pushObject;
        }

}

}
