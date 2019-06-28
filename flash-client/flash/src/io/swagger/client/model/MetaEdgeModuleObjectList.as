package io.swagger.client.model {

import io.swagger.common.ListWrapper;

    public class MetaEdgeModuleObjectList implements ListWrapper {
        // This declaration below of __metaEdgeModuleObject_obj_class is to force flash compiler to include this class
        private var _metaEdgeModuleObject_obj_class: io.swagger.client.model.MetaEdgeModuleObject = null;
        [XmlElements(name="metaEdgeModuleObject", type="io.swagger.client.model.MetaEdgeModuleObject")]
        public var metaEdgeModuleObject: Array = new Array();

        public function getList(): Array{
            return metaEdgeModuleObject;
        }

}

}
