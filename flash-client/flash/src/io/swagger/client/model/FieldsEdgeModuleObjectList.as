package io.swagger.client.model {

import io.swagger.common.ListWrapper;
import io.swagger.client.model.FieldObjectFields;

    public class FieldsEdgeModuleObjectList implements ListWrapper {
        // This declaration below of _fieldsEdgeModuleObject_obj_class is to force flash compiler to include this class
        private var _fieldsEdgeModuleObject_obj_class: io.swagger.client.model.FieldsEdgeModuleObject = null;
        [XmlElements(name="fieldsEdgeModuleObject", type="io.swagger.client.model.FieldsEdgeModuleObject")]
        public var fieldsEdgeModuleObject: Array = new Array();

        public function getList(): Array{
            return fieldsEdgeModuleObject;
        }

}

}
