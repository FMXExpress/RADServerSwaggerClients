package io.swagger.model;

import io.swagger.model.PushDataObjectAps;
import io.swagger.model.PushDataObjectExtras;
import io.swagger.model.PushDataObjectGcm;

import io.swagger.annotations.ApiModelProperty;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;
import javax.xml.bind.annotation.XmlEnum;
import javax.xml.bind.annotation.XmlEnumValue;
import com.fasterxml.jackson.annotation.JsonProperty;

public class PushDataObject  {
  
  @ApiModelProperty(value = "")
  private PushDataObjectGcm gcm = null;

  @ApiModelProperty(value = "")
  private PushDataObjectAps aps = null;

  @ApiModelProperty(value = "")
  private PushDataObjectExtras extras = null;
 /**
   * Get gcm
   * @return gcm
  **/
  @JsonProperty("gcm")
  public PushDataObjectGcm getGcm() {
    return gcm;
  }

  public void setGcm(PushDataObjectGcm gcm) {
    this.gcm = gcm;
  }

  public PushDataObject gcm(PushDataObjectGcm gcm) {
    this.gcm = gcm;
    return this;
  }

 /**
   * Get aps
   * @return aps
  **/
  @JsonProperty("aps")
  public PushDataObjectAps getAps() {
    return aps;
  }

  public void setAps(PushDataObjectAps aps) {
    this.aps = aps;
  }

  public PushDataObject aps(PushDataObjectAps aps) {
    this.aps = aps;
    return this;
  }

 /**
   * Get extras
   * @return extras
  **/
  @JsonProperty("extras")
  public PushDataObjectExtras getExtras() {
    return extras;
  }

  public void setExtras(PushDataObjectExtras extras) {
    this.extras = extras;
  }

  public PushDataObject extras(PushDataObjectExtras extras) {
    this.extras = extras;
    return this;
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class PushDataObject {\n");
    
    sb.append("    gcm: ").append(toIndentedString(gcm)).append("\n");
    sb.append("    aps: ").append(toIndentedString(aps)).append("\n");
    sb.append("    extras: ").append(toIndentedString(extras)).append("\n");
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

