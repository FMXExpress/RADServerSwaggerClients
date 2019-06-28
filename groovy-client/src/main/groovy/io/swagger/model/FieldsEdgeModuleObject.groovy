package io.swagger.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import io.swagger.model.ArrayList;
import io.swagger.model.FieldObjectFields;
import java.util.List;
@Canonical
class FieldsEdgeModuleObject {

    String name = null

    List<FieldObjectFields> fields = new ArrayList<FieldObjectFields>()

    Boolean custom = null
  

}

