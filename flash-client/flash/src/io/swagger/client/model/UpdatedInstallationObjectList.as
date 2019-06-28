package io.swagger.client.model {

import io.swagger.common.ListWrapper;

    public class UpdatedInstallationObjectList implements ListWrapper {
        // This declaration below of _updatedInstallationObject_obj_class is to force flash compiler to include this class
        private var _updatedInstallationObject_obj_class: io.swagger.client.model.UpdatedInstallationObject = null;
        [XmlElements(name="updatedInstallationObject", type="io.swagger.client.model.UpdatedInstallationObject")]
        public var updatedInstallationObject: Array = new Array();

        public function getList(): Array{
            return updatedInstallationObject;
        }

}

}
