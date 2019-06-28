package io.swagger.client.model {

import io.swagger.common.ListWrapper;

    public class EdgeModuleResourceUpdateObjectList implements ListWrapper {
        // This declaration below of _edgeModuleResourceUpdateObject_obj_class is to force flash compiler to include this class
        private var _edgeModuleResourceUpdateObject_obj_class: io.swagger.client.model.EdgeModuleResourceUpdateObject = null;
        [XmlElements(name="edgeModuleResourceUpdateObject", type="io.swagger.client.model.EdgeModuleResourceUpdateObject")]
        public var edgeModuleResourceUpdateObject: Array = new Array();

        public function getList(): Array{
            return edgeModuleResourceUpdateObject;
        }

}

}
