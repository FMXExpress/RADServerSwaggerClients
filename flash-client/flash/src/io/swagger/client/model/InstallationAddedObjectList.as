package io.swagger.client.model {

import io.swagger.common.ListWrapper;

    public class InstallationAddedObjectList implements ListWrapper {
        // This declaration below of _installationAddedObject_obj_class is to force flash compiler to include this class
        private var _installationAddedObject_obj_class: io.swagger.client.model.InstallationAddedObject = null;
        [XmlElements(name="installationAddedObject", type="io.swagger.client.model.InstallationAddedObject")]
        public var installationAddedObject: Array = new Array();

        public function getList(): Array{
            return installationAddedObject;
        }

}

}
