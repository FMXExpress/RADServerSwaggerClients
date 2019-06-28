package io.swagger.client.model {

import io.swagger.common.ListWrapper;

    public class UpdatedObjectList implements ListWrapper {
        // This declaration below of _updatedObject_obj_class is to force flash compiler to include this class
        private var _updatedObject_obj_class: io.swagger.client.model.UpdatedObject = null;
        [XmlElements(name="updatedObject", type="io.swagger.client.model.UpdatedObject")]
        public var updatedObject: Array = new Array();

        public function getList(): Array{
            return updatedObject;
        }

}

}
