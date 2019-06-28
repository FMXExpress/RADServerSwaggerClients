package io.swagger.client.model {

import io.swagger.common.ListWrapper;

    public class GroupNameList implements ListWrapper {
        // This declaration below of _groupName_obj_class is to force flash compiler to include this class
        private var _groupName_obj_class: io.swagger.client.model.GroupName = null;
        [XmlElements(name="groupName", type="io.swagger.client.model.GroupName")]
        public var groupName: Array = new Array();

        public function getList(): Array{
            return groupName;
        }

}

}
