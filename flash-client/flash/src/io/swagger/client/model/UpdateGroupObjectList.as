package io.swagger.client.model {

import io.swagger.common.ListWrapper;

    public class UpdateGroupObjectList implements ListWrapper {
        // This declaration below of _updateGroupObject_obj_class is to force flash compiler to include this class
        private var _updateGroupObject_obj_class: io.swagger.client.model.UpdateGroupObject = null;
        [XmlElements(name="updateGroupObject", type="io.swagger.client.model.UpdateGroupObject")]
        public var updateGroupObject: Array = new Array();

        public function getList(): Array{
            return updateGroupObject;
        }

}

}
