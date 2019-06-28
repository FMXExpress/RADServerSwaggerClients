package io.swagger.client.model {

import io.swagger.common.ListWrapper;

    public class MetaInstallationObjectList implements ListWrapper {
        // This declaration below of __metaInstallationObject_obj_class is to force flash compiler to include this class
        private var _metaInstallationObject_obj_class: io.swagger.client.model.MetaInstallationObject = null;
        [XmlElements(name="metaInstallationObject", type="io.swagger.client.model.MetaInstallationObject")]
        public var metaInstallationObject: Array = new Array();

        public function getList(): Array{
            return metaInstallationObject;
        }

}

}
