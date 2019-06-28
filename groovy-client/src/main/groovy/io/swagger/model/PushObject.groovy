package io.swagger.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import io.swagger.model.ArrayList;
import io.swagger.model.PushDataObject;
import io.swagger.model.PushWhereObject;
import java.util.List;
@Canonical
class PushObject {

    PushDataObject data = null

    List<String> channels = new ArrayList<String>()

    PushWhereObject where = null
  

}

