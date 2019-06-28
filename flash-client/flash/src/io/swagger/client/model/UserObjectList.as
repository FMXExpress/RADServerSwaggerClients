package io.swagger.client.model {

import io.swagger.common.ListWrapper;
import io.swagger.client.model.MetaObject;

    public class UserObjectList implements ListWrapper {
        // This declaration below of _userObject_obj_class is to force flash compiler to include this class
        private var _userObject_obj_class: io.swagger.client.model.UserObject = null;
        [XmlElements(name="userObject", type="io.swagger.client.model.UserObject")]
        public var userObject: Array = new Array();

        public function getList(): Array{
            return userObject;
        }

}

}
