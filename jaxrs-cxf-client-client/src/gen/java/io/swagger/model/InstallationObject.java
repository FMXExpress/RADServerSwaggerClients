package io.swagger.model;

import io.swagger.model.MetaInstallationObject;
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

public class InstallationObject extends HashMap<String, String> {
  
  @ApiModelProperty(required = true, value = "")
  private String id = null;

  @ApiModelProperty(required = true, value = "")
  private String deviceToken = null;


@XmlType(name="DeviceTypeEnum")
@XmlEnum(String.class)
public enum DeviceTypeEnum {

@XmlEnumValue("ios") IOS(String.valueOf("ios")), @XmlEnumValue("android") ANDROID(String.valueOf("android"));


    private String value;

    DeviceTypeEnum (String v) {
        value = v;
    }

    public String value() {
        return value;
    }

    @Override
    public String toString() {
        return String.valueOf(value);
    }

    public static DeviceTypeEnum fromValue(String v) {
        for (DeviceTypeEnum b : DeviceTypeEnum.values()) {
            if (String.valueOf(b.value).equals(v)) {
                return b;
            }
        }
        return null;
    }
}

  @ApiModelProperty(required = true, value = "")
  private DeviceTypeEnum deviceType = null;

  @ApiModelProperty(required = true, value = "")
  private MetaInstallationObject meta = null;

  @ApiModelProperty(value = "")
  private List<String> channels = null;
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

  public InstallationObject id(String id) {
    this.id = id;
    return this;
  }

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

  public InstallationObject deviceToken(String deviceToken) {
    this.deviceToken = deviceToken;
    return this;
  }

 /**
   * Get deviceType
   * @return deviceType
  **/
  @JsonProperty("deviceType")
  public String getDeviceType() {
    if (deviceType == null) {
      return null;
    }
    return deviceType.value();
  }

  public void setDeviceType(DeviceTypeEnum deviceType) {
    this.deviceType = deviceType;
  }

  public InstallationObject deviceType(DeviceTypeEnum deviceType) {
    this.deviceType = deviceType;
    return this;
  }

 /**
   * Get meta
   * @return meta
  **/
  @JsonProperty("_meta")
  public MetaInstallationObject getMeta() {
    return meta;
  }

  public void setMeta(MetaInstallationObject meta) {
    this.meta = meta;
  }

  public InstallationObject meta(MetaInstallationObject meta) {
    this.meta = meta;
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

  public InstallationObject channels(List<String> channels) {
    this.channels = channels;
    return this;
  }

  public InstallationObject addChannelsItem(String channelsItem) {
    this.channels.add(channelsItem);
    return this;
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class InstallationObject {\n");
    sb.append("    ").append(toIndentedString(super.toString())).append("\n");
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    deviceToken: ").append(toIndentedString(deviceToken)).append("\n");
    sb.append("    deviceType: ").append(toIndentedString(deviceType)).append("\n");
    sb.append("    meta: ").append(toIndentedString(meta)).append("\n");
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

