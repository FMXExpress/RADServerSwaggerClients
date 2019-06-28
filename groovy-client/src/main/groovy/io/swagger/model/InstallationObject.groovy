package io.swagger.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import io.swagger.model.ArrayList;
import io.swagger.model.HashMap;
import io.swagger.model.Map;
import io.swagger.model.MetaInstallationObject;
import java.util.List;
@Canonical
class InstallationObject {

    String id = null

    String deviceToken = null

    String deviceType = null

    MetaInstallationObject meta = null

    List<String> channels = new ArrayList<String>()
  

}

