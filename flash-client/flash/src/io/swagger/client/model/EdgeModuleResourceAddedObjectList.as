package io.swagger.client.model {

import io.swagger.common.ListWrapper;

    public class EdgeModuleResourceAddedObjectList implements ListWrapper {
        // This declaration below of _edgeModuleResourceAddedObject_obj_class is to force flash compiler to include this class
        private var _edgeModuleResourceAddedObject_obj_class: io.swagger.client.model.EdgeModuleResourceAddedObject = null;
        [XmlElements(name="edgeModuleResourceAddedObject", type="io.swagger.client.model.EdgeModuleResourceAddedObject")]
        public var edgeModuleResourceAddedObject: Array = new Array();

        public function getList(): Array{
            return edgeModuleResourceAddedObject;
        }

}

}
