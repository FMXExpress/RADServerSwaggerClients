package io.swagger.client.model {

import io.swagger.common.ListWrapper;

    public class UserCredentialsObjectList implements ListWrapper {
        // This declaration below of _userCredentialsObject_obj_class is to force flash compiler to include this class
        private var _userCredentialsObject_obj_class: io.swagger.client.model.UserCredentialsObject = null;
        [XmlElements(name="userCredentialsObject", type="io.swagger.client.model.UserCredentialsObject")]
        public var userCredentialsObject: Array = new Array();

        public function getList(): Array{
            return userCredentialsObject;
        }

}

}
