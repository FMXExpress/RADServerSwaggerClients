package io.swagger.client.model {

import io.swagger.common.ListWrapper;
import io.swagger.client.model.FieldObjectFields;

    public class FieldInstallationObjectList implements ListWrapper {
        // This declaration below of _fieldInstallationObject_obj_class is to force flash compiler to include this class
        private var _fieldInstallationObject_obj_class: io.swagger.client.model.FieldInstallationObject = null;
        [XmlElements(name="fieldInstallationObject", type="io.swagger.client.model.FieldInstallationObject")]
        public var fieldInstallationObject: Array = new Array();

        public function getList(): Array{
            return fieldInstallationObject;
        }

}

}
