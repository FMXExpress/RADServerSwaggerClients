package io.swagger.model;

import io.swagger.model.MetaEdgeModuleObject;
import java.util.HashMap;
import java.util.Map;

import io.swagger.annotations.ApiModelProperty;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;
import javax.xml.bind.annotation.XmlEnum;
import javax.xml.bind.annotation.XmlEnumValue;
import com.fasterxml.jackson.annotation.JsonProperty;

public class EdgeModuleResourceObject extends HashMap<String, String> {
  
  @ApiModelProperty(required = true, value = "")
  private String resourcename = null;

  @ApiModelProperty(required = true, value = "")
  private String modulename = null;

  @ApiModelProperty(required = true, value = "")
  private String moduleid = null;

  @ApiModelProperty(required = true, value = "")
  private MetaEdgeModuleObject meta = null;
 /**
   * Get resourcename
   * @return resourcename
  **/
  @JsonProperty("resourcename")
  public String getResourcename() {
    return resourcename;
  }

  public void setResourcename(String resourcename) {
    this.resourcename = resourcename;
  }

  public EdgeModuleResourceObject resourcename(String resourcename) {
    this.resourcename = resourcename;
    return this;
  }

 /**
   * Get modulename
   * @return modulename
  **/
  @JsonProperty("modulename")
  public String getModulename() {
    return modulename;
  }

  public void setModulename(String modulename) {
    this.modulename = modulename;
  }

  public EdgeModuleResourceObject modulename(String modulename) {
    this.modulename = modulename;
    return this;
  }

 /**
   * Get moduleid
   * @return moduleid
  **/
  @JsonProperty("moduleid")
  public String getModuleid() {
    return moduleid;
  }

  public void setModuleid(String moduleid) {
    this.moduleid = moduleid;
  }

  public EdgeModuleResourceObject moduleid(String moduleid) {
    this.moduleid = moduleid;
    return this;
  }

 /**
   * Get meta
   * @return meta
  **/
  @JsonProperty("_meta")
  public MetaEdgeModuleObject getMeta() {
    return meta;
  }

  public void setMeta(MetaEdgeModuleObject meta) {
    this.meta = meta;
  }

  public EdgeModuleResourceObject meta(MetaEdgeModuleObject meta) {
    this.meta = meta;
    return this;
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class EdgeModuleResourceObject {\n");
    sb.append("    ").append(toIndentedString(super.toString())).append("\n");
    sb.append("    resourcename: ").append(toIndentedString(resourcename)).append("\n");
    sb.append("    modulename: ").append(toIndentedString(modulename)).append("\n");
    sb.append("    moduleid: ").append(toIndentedString(moduleid)).append("\n");
    sb.append("    meta: ").append(toIndentedString(meta)).append("\n");
    sb.append("}");
    return sb.toString();
  }

  /**
   * Convert the given object to string with each line indented by 4 spaces
   * (except the first line).
   */
  private static String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

