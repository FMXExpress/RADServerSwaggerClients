package io.swagger.client.model {

import io.swagger.common.ListWrapper;

    public class UseridObjectList implements ListWrapper {
        // This declaration below of _useridObject_obj_class is to force flash compiler to include this class
        private var _useridObject_obj_class: io.swagger.client.model.UseridObject = null;
        [XmlElements(name="useridObject", type="io.swagger.client.model.UseridObject")]
        public var useridObject: Array = new Array();

        public function getList(): Array{
            return useridObject;
        }

}

}
