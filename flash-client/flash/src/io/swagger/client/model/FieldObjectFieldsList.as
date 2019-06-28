package io.swagger.client.model {

import io.swagger.common.ListWrapper;

    public class FieldObjectFieldsList implements ListWrapper {
        // This declaration below of _fieldObject_fields_obj_class is to force flash compiler to include this class
        private var _fieldObjectFields_obj_class: io.swagger.client.model.FieldObjectFields = null;
        [XmlElements(name="fieldObjectFields", type="io.swagger.client.model.FieldObjectFields")]
        public var fieldObjectFields: Array = new Array();

        public function getList(): Array{
            return fieldObjectFields;
        }

}

}
