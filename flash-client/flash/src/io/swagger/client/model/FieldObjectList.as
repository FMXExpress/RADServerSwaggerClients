package io.swagger.client.model {

import io.swagger.common.ListWrapper;
import io.swagger.client.model.FieldObjectFields;

    public class FieldObjectList implements ListWrapper {
        // This declaration below of _fieldObject_obj_class is to force flash compiler to include this class
        private var _fieldObject_obj_class: io.swagger.client.model.FieldObject = null;
        [XmlElements(name="fieldObject", type="io.swagger.client.model.FieldObject")]
        public var fieldObject: Array = new Array();

        public function getList(): Array{
            return fieldObject;
        }

}

}
