package io.swagger.client.model {

import io.swagger.common.ListWrapper;
import io.swagger.client.model.MetaGroupObject;

    public class GroupObjectList implements ListWrapper {
        // This declaration below of _groupObject_obj_class is to force flash compiler to include this class
        private var _groupObject_obj_class: io.swagger.client.model.GroupObject = null;
        [XmlElements(name="groupObject", type="io.swagger.client.model.GroupObject")]
        public var groupObject: Array = new Array();

        public function getList(): Array{
            return groupObject;
        }

}

}
