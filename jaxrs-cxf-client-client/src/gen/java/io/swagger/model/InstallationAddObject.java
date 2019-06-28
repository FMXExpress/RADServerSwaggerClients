package io.swagger.model;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
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

public class InstallationAddObject extends HashMap<String, String> {
  
  @ApiModelProperty(required = true, value = "")
  private String deviceToken = null;

  @ApiModelProperty(required = true, value = "")
  private String deviceType = null;

  @ApiModelProperty(value = "")
  private List<String> channels = null;
 /**
   * Get deviceToken
   * @return deviceToken
  **/
  @JsonProperty("deviceToken")
  public String getDeviceToken() {
    return deviceToken;
  }

  public void setDeviceToken(String deviceToken) {
    this.deviceToken = deviceToken;
  }

  public InstallationAddObject deviceToken(String deviceToken) {
    this.deviceToken = deviceToken;
    return this;
  }

 /**
   * Get deviceType
   * @return deviceType
  **/
  @JsonProperty("deviceType")
  public String getDeviceType() {
    return deviceType;
  }

  public void setDeviceType(String deviceType) {
    this.deviceType = deviceType;
  }

  public InstallationAddObject deviceType(String deviceType) {
    this.deviceType = deviceType;
    return this;
  }

 /**
   * Get channels
   * @return channels
  **/
  @JsonProperty("channels")
  public List<String> getChannels() {
    return channels;
  }

  public void setChannels(List<String> channels) {
    this.channels = channels;
  }

  public InstallationAddObject channels(List<String> channels) {
    this.channels = channels;
    return this;
  }

  public InstallationAddObject addChannelsItem(String channelsItem) {
    this.channels.add(channelsItem);
    return this;
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class InstallationAddObject {\n");
    sb.append("    ").append(toIndentedString(super.toString())).append("\n");
    sb.append("    deviceToken: ").append(toIndentedString(deviceToken)).append("\n");
    sb.append("    deviceType: ").append(toIndentedString(deviceType)).append("\n");
    sb.append("    channels: ").append(toIndentedString(channels)).append("\n");
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

