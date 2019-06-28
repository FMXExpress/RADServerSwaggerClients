package io.swagger.client.model {

import io.swagger.common.ListWrapper;
import io.swagger.client.model.MetaInstallationObject;

    public class InstallationObjectList implements ListWrapper {
        // This declaration below of _installationObject_obj_class is to force flash compiler to include this class
        private var _installationObject_obj_class: io.swagger.client.model.InstallationObject = null;
        [XmlElements(name="installationObject", type="io.swagger.client.model.InstallationObject")]
        public var installationObject: Array = new Array();

        public function getList(): Array{
            return installationObject;
        }

}

}
