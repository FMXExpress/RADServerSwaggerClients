package io.swagger.client.model {

import io.swagger.common.ListWrapper;

    public class EdgeModuleAddedObjectList implements ListWrapper {
        // This declaration below of _edgeModuleAddedObject_obj_class is to force flash compiler to include this class
        private var _edgeModuleAddedObject_obj_class: io.swagger.client.model.EdgeModuleAddedObject = null;
        [XmlElements(name="edgeModuleAddedObject", type="io.swagger.client.model.EdgeModuleAddedObject")]
        public var edgeModuleAddedObject: Array = new Array();

        public function getList(): Array{
            return edgeModuleAddedObject;
        }

}

}
