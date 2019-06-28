package io.swagger.client.model {

import io.swagger.common.ListWrapper;

    public class PushDataObjectExtrasList implements ListWrapper {
        // This declaration below of _pushDataObject_extras_obj_class is to force flash compiler to include this class
        private var _pushDataObjectExtras_obj_class: io.swagger.client.model.PushDataObjectExtras = null;
        [XmlElements(name="pushDataObjectExtras", type="io.swagger.client.model.PushDataObjectExtras")]
        public var pushDataObjectExtras: Array = new Array();

        public function getList(): Array{
            return pushDataObjectExtras;
        }

}

}
