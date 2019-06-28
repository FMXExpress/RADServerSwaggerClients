package io.swagger.client.model {

import io.swagger.common.ListWrapper;

    public class MetaGroupObjectList implements ListWrapper {
        // This declaration below of __metaGroupObject_obj_class is to force flash compiler to include this class
        private var _metaGroupObject_obj_class: io.swagger.client.model.MetaGroupObject = null;
        [XmlElements(name="metaGroupObject", type="io.swagger.client.model.MetaGroupObject")]
        public var metaGroupObject: Array = new Array();

        public function getList(): Array{
            return metaGroupObject;
        }

}

}
