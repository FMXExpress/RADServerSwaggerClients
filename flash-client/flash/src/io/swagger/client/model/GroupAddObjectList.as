package io.swagger.client.model {

import io.swagger.common.ListWrapper;

    public class GroupAddObjectList implements ListWrapper {
        // This declaration below of _groupAddObject_obj_class is to force flash compiler to include this class
        private var _groupAddObject_obj_class: io.swagger.client.model.GroupAddObject = null;
        [XmlElements(name="groupAddObject", type="io.swagger.client.model.GroupAddObject")]
        public var groupAddObject: Array = new Array();

        public function getList(): Array{
            return groupAddObject;
        }

}

}
