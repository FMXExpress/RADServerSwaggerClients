package io.swagger.client.model {

import io.swagger.common.ListWrapper;

    public class EdgeModuleAddObjectList implements ListWrapper {
        // This declaration below of _edgeModuleAddObject_obj_class is to force flash compiler to include this class
        private var _edgeModuleAddObject_obj_class: io.swagger.client.model.EdgeModuleAddObject = null;
        [XmlElements(name="edgeModuleAddObject", type="io.swagger.client.model.EdgeModuleAddObject")]
        public var edgeModuleAddObject: Array = new Array();

        public function getList(): Array{
            return edgeModuleAddObject;
        }

}

}
