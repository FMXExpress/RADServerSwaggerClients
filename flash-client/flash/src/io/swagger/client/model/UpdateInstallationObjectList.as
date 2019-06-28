package io.swagger.client.model {

import io.swagger.common.ListWrapper;

    public class UpdateInstallationObjectList implements ListWrapper {
        // This declaration below of _updateInstallationObject_obj_class is to force flash compiler to include this class
        private var _updateInstallationObject_obj_class: io.swagger.client.model.UpdateInstallationObject = null;
        [XmlElements(name="updateInstallationObject", type="io.swagger.client.model.UpdateInstallationObject")]
        public var updateInstallationObject: Array = new Array();

        public function getList(): Array{
            return updateInstallationObject;
        }

}

}
