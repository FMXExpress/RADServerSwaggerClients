package io.swagger.client.model {

import io.swagger.common.ListWrapper;

    public class UserSignUpResponseObjectList implements ListWrapper {
        // This declaration below of _userSignUpResponseObject_obj_class is to force flash compiler to include this class
        private var _userSignUpResponseObject_obj_class: io.swagger.client.model.UserSignUpResponseObject = null;
        [XmlElements(name="userSignUpResponseObject", type="io.swagger.client.model.UserSignUpResponseObject")]
        public var userSignUpResponseObject: Array = new Array();

        public function getList(): Array{
            return userSignUpResponseObject;
        }

}

}
