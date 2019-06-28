package io.swagger.client.model {

import io.swagger.common.ListWrapper;

    public class VersionObjectList implements ListWrapper {
        // This declaration below of _versionObject_obj_class is to force flash compiler to include this class
        private var _versionObject_obj_class: io.swagger.client.model.VersionObject = null;
        [XmlElements(name="versionObject", type="io.swagger.client.model.VersionObject")]
        public var versionObject: Array = new Array();

        public function getList(): Array{
            return versionObject;
        }

}

}
