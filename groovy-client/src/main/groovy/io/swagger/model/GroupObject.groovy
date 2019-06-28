package io.swagger.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import io.swagger.model.ArrayList;
import io.swagger.model.HashMap;
import io.swagger.model.Map;
import io.swagger.model.MetaGroupObject;
import java.util.List;
@Canonical
class GroupObject {

    String name = null

    MetaGroupObject meta = null

    List<String> users = new ArrayList<String>()
  

}

