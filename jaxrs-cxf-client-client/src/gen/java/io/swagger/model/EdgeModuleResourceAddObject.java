package io.swagger.model;

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

public class EdgeModuleResourceAddObject extends HashMap<String, String> {
  
  @ApiModelProperty(required = true, value = "")
  private String resourcename = null;
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

  public EdgeModuleResourceAddObject resourcename(String resourcename) {
    this.resourcename = resourcename;
    return this;
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class EdgeModuleResourceAddObject {\n");
    sb.append("    ").append(toIndentedString(super.toString())).append("\n");
    sb.append("    resourcename: ").append(toIndentedString(resourcename)).append("\n");
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

