package io.swagger.client.model {

import io.swagger.common.ListWrapper;

    public class EdgeModuleResourceUpdatedObjectList implements ListWrapper {
        // This declaration below of _edgeModuleResourceUpdatedObject_obj_class is to force flash compiler to include this class
        private var _edgeModuleResourceUpdatedObject_obj_class: io.swagger.client.model.EdgeModuleResourceUpdatedObject = null;
        [XmlElements(name="edgeModuleResourceUpdatedObject", type="io.swagger.client.model.EdgeModuleResourceUpdatedObject")]
        public var edgeModuleResourceUpdatedObject: Array = new Array();

        public function getList(): Array{
            return edgeModuleResourceUpdatedObject;
        }

}

}
