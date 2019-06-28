package io.swagger.client.model {

import io.swagger.common.ListWrapper;
import io.swagger.client.model.MetaEdgeModuleObject;

    public class EdgeModuleResourceObjectList implements ListWrapper {
        // This declaration below of _edgeModuleResourceObject_obj_class is to force flash compiler to include this class
        private var _edgeModuleResourceObject_obj_class: io.swagger.client.model.EdgeModuleResourceObject = null;
        [XmlElements(name="edgeModuleResourceObject", type="io.swagger.client.model.EdgeModuleResourceObject")]
        public var edgeModuleResourceObject: Array = new Array();

        public function getList(): Array{
            return edgeModuleResourceObject;
        }

}

}
