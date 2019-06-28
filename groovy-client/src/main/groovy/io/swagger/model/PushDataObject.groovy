package io.swagger.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import io.swagger.model.PushDataObjectAps;
import io.swagger.model.PushDataObjectExtras;
import io.swagger.model.PushDataObjectGcm;
@Canonical
class PushDataObject {

    PushDataObjectGcm gcm = null

    PushDataObjectAps aps = null

    PushDataObjectExtras extras = null
  

}

