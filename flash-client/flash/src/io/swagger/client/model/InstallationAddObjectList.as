package io.swagger.client.model {

import io.swagger.common.ListWrapper;

    public class InstallationAddObjectList implements ListWrapper {
        // This declaration below of _installationAddObject_obj_class is to force flash compiler to include this class
        private var _installationAddObject_obj_class: io.swagger.client.model.InstallationAddObject = null;
        [XmlElements(name="installationAddObject", type="io.swagger.client.model.InstallationAddObject")]
        public var installationAddObject: Array = new Array();

        public function getList(): Array{
            return installationAddObject;
        }

}

}
