package io.swagger.client.model {

import io.swagger.common.ListWrapper;

    public class EdgeModuleResourceAddObjectList implements ListWrapper {
        // This declaration below of _edgeModuleResourceAddObject_obj_class is to force flash compiler to include this class
        private var _edgeModuleResourceAddObject_obj_class: io.swagger.client.model.EdgeModuleResourceAddObject = null;
        [XmlElements(name="edgeModuleResourceAddObject", type="io.swagger.client.model.EdgeModuleResourceAddObject")]
        public var edgeModuleResourceAddObject: Array = new Array();

        public function getList(): Array{
            return edgeModuleResourceAddObject;
        }

}

}
