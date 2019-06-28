package io.swagger.client.model {

import io.swagger.common.ListWrapper;

    public class UpdateObjectList implements ListWrapper {
        // This declaration below of _updateObject_obj_class is to force flash compiler to include this class
        private var _updateObject_obj_class: io.swagger.client.model.UpdateObject = null;
        [XmlElements(name="updateObject", type="io.swagger.client.model.UpdateObject")]
        public var updateObject: Array = new Array();

        public function getList(): Array{
            return updateObject;
        }

}

}
