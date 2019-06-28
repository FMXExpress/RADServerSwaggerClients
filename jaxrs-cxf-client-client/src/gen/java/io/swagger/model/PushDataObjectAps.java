package io.swagger.model;


import io.swagger.annotations.ApiModelProperty;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;
import javax.xml.bind.annotation.XmlEnum;
import javax.xml.bind.annotation.XmlEnumValue;
import com.fasterxml.jackson.annotation.JsonProperty;

public class PushDataObjectAps  {
  
  @ApiModelProperty(value = "")
  private String alert = null;

  @ApiModelProperty(value = "")
  private String badge = null;

  @ApiModelProperty(value = "")
  private String sound = null;
 /**
   * Get alert
   * @return alert
  **/
  @JsonProperty("alert")
  public String getAlert() {
    return alert;
  }

  public void setAlert(String alert) {
    this.alert = alert;
  }

  public PushDataObjectAps alert(String alert) {
    this.alert = alert;
    return this;
  }

 /**
   * Get badge
   * @return badge
  **/
  @JsonProperty("badge")
  public String getBadge() {
    return badge;
  }

  public void setBadge(String badge) {
    this.badge = badge;
  }

  public PushDataObjectAps badge(String badge) {
    this.badge = badge;
    return this;
  }

 /**
   * Get sound
   * @return sound
  **/
  @JsonProperty("sound")
  public String getSound() {
    return sound;
  }

  public void setSound(String sound) {
    this.sound = sound;
  }

  public PushDataObjectAps sound(String sound) {
    this.sound = sound;
    return this;
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class PushDataObjectAps {\n");
    
    sb.append("    alert: ").append(toIndentedString(alert)).append("\n");
    sb.append("    badge: ").append(toIndentedString(badge)).append("\n");
    sb.append("    sound: ").append(toIndentedString(sound)).append("\n");
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

