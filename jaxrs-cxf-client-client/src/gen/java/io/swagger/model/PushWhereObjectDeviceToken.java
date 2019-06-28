package io.swagger.model;

import io.swagger.annotations.ApiModel;
import java.util.ArrayList;
import java.util.List;

import io.swagger.annotations.ApiModelProperty;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;
import javax.xml.bind.annotation.XmlEnum;
import javax.xml.bind.annotation.XmlEnumValue;
import com.fasterxml.jackson.annotation.JsonProperty;

/**
  * $in
 **/
@ApiModel(description="$in")
public class PushWhereObjectDeviceToken  {
  
  @ApiModelProperty(required = true, value = "")
  private List<String> in = new ArrayList<String>();
 /**
   * Get in
   * @return in
  **/
  @JsonProperty("$in")
  public List<String> getIn() {
    return in;
  }

  public void setIn(List<String> in) {
    this.in = in;
  }

  public PushWhereObjectDeviceToken in(List<String> in) {
    this.in = in;
    return this;
  }

  public PushWhereObjectDeviceToken addInItem(String inItem) {
    this.in.add(inItem);
    return this;
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class PushWhereObjectDeviceToken {\n");
    
    sb.append("    in: ").append(toIndentedString(in)).append("\n");
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

