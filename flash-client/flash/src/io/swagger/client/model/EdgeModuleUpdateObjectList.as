package io.swagger.client.model {

import io.swagger.common.ListWrapper;

    public class EdgeModuleUpdateObjectList implements ListWrapper {
        // This declaration below of _edgeModuleUpdateObject_obj_class is to force flash compiler to include this class
        private var _edgeModuleUpdateObject_obj_class: io.swagger.client.model.EdgeModuleUpdateObject = null;
        [XmlElements(name="edgeModuleUpdateObject", type="io.swagger.client.model.EdgeModuleUpdateObject")]
        public var edgeModuleUpdateObject: Array = new Array();

        public function getList(): Array{
            return edgeModuleUpdateObject;
        }

}

}
