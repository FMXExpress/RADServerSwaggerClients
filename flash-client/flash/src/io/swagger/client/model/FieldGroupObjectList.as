package io.swagger.client.model {

import io.swagger.common.ListWrapper;
import io.swagger.client.model.FieldObjectFields;

    public class FieldGroupObjectList implements ListWrapper {
        // This declaration below of _fieldGroupObject_obj_class is to force flash compiler to include this class
        private var _fieldGroupObject_obj_class: io.swagger.client.model.FieldGroupObject = null;
        [XmlElements(name="fieldGroupObject", type="io.swagger.client.model.FieldGroupObject")]
        public var fieldGroupObject: Array = new Array();

        public function getList(): Array{
            return fieldGroupObject;
        }

}

}
