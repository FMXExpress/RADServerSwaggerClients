package io.swagger.client.model {

import io.swagger.common.ListWrapper;
import io.swagger.client.model.MetaEdgeModuleObject;

    public class EdgeModuleObjectList implements ListWrapper {
        // This declaration below of _edgeModuleObject_obj_class is to force flash compiler to include this class
        private var _edgeModuleObject_obj_class: io.swagger.client.model.EdgeModuleObject = null;
        [XmlElements(name="edgeModuleObject", type="io.swagger.client.model.EdgeModuleObject")]
        public var edgeModuleObject: Array = new Array();

        public function getList(): Array{
            return edgeModuleObject;
        }

}

}
