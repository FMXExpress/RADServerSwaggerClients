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

public class EdgeModuleObject extends HashMap<String, String> {
  
  @ApiModelProperty(required = true, value = "")
  private String modulename = null;

  @ApiModelProperty(required = true, value = "")
  private String id = null;

  @ApiModelProperty(required = true, value = "")
  private String protocol = null;

  @ApiModelProperty(required = true, value = "")
  private String protocolprops = null;

  @ApiModelProperty(required = true, value = "")
  private MetaEdgeModuleObject meta = null;
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

  public EdgeModuleObject modulename(String modulename) {
    this.modulename = modulename;
    return this;
  }

 /**
   * Get id
   * @return id
  **/
  @JsonProperty("_id")
  public String getId() {
    return id;
  }

  public void setId(String id) {
    this.id = id;
  }

  public EdgeModuleObject id(String id) {
    this.id = id;
    return this;
  }

 /**
   * Get protocol
   * @return protocol
  **/
  @JsonProperty("protocol")
  public String getProtocol() {
    return protocol;
  }

  public void setProtocol(String protocol) {
    this.protocol = protocol;
  }

  public EdgeModuleObject protocol(String protocol) {
    this.protocol = protocol;
    return this;
  }

 /**
   * Get protocolprops
   * @return protocolprops
  **/
  @JsonProperty("protocolprops")
  public String getProtocolprops() {
    return protocolprops;
  }

  public void setProtocolprops(String protocolprops) {
    this.protocolprops = protocolprops;
  }

  public EdgeModuleObject protocolprops(String protocolprops) {
    this.protocolprops = protocolprops;
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

  public EdgeModuleObject meta(MetaEdgeModuleObject meta) {
    this.meta = meta;
    return this;
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class EdgeModuleObject {\n");
    sb.append("    ").append(toIndentedString(super.toString())).append("\n");
    sb.append("    modulename: ").append(toIndentedString(modulename)).append("\n");
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    protocol: ").append(toIndentedString(protocol)).append("\n");
    sb.append("    protocolprops: ").append(toIndentedString(protocolprops)).append("\n");
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

