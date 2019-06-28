package io.swagger.client.model {

import io.swagger.common.ListWrapper;
import io.swagger.client.model.MetaObject;

    public class UserTokenObjectList implements ListWrapper {
        // This declaration below of _userTokenObject_obj_class is to force flash compiler to include this class
        private var _userTokenObject_obj_class: io.swagger.client.model.UserTokenObject = null;
        [XmlElements(name="userTokenObject", type="io.swagger.client.model.UserTokenObject")]
        public var userTokenObject: Array = new Array();

        public function getList(): Array{
            return userTokenObject;
        }

}

}
