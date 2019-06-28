package io.swagger.client.model {

import io.swagger.common.ListWrapper;

    public class UpdatedGroupObjectList implements ListWrapper {
        // This declaration below of _updatedGroupObject_obj_class is to force flash compiler to include this class
        private var _updatedGroupObject_obj_class: io.swagger.client.model.UpdatedGroupObject = null;
        [XmlElements(name="updatedGroupObject", type="io.swagger.client.model.UpdatedGroupObject")]
        public var updatedGroupObject: Array = new Array();

        public function getList(): Array{
            return updatedGroupObject;
        }

}

}
