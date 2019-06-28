package io.swagger.client.model {

import io.swagger.common.ListWrapper;

    public class MetaObjectList implements ListWrapper {
        // This declaration below of __metaObject_obj_class is to force flash compiler to include this class
        private var _metaObject_obj_class: io.swagger.client.model.MetaObject = null;
        [XmlElements(name="metaObject", type="io.swagger.client.model.MetaObject")]
        public var metaObject: Array = new Array();

        public function getList(): Array{
            return metaObject;
        }

}

}
