package io.swagger.client.model {

import io.swagger.common.ListWrapper;

    public class EdgeModuleUpdatedObjectList implements ListWrapper {
        // This declaration below of _edgeModuleUpdatedObject_obj_class is to force flash compiler to include this class
        private var _edgeModuleUpdatedObject_obj_class: io.swagger.client.model.EdgeModuleUpdatedObject = null;
        [XmlElements(name="edgeModuleUpdatedObject", type="io.swagger.client.model.EdgeModuleUpdatedObject")]
        public var edgeModuleUpdatedObject: Array = new Array();

        public function getList(): Array{
            return edgeModuleUpdatedObject;
        }

}

}
