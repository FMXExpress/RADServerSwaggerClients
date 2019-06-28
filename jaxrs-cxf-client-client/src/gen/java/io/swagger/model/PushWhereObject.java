package io.swagger.model;

import io.swagger.model.PushWhereObjectDeviceToken;

import io.swagger.annotations.ApiModelProperty;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;
import javax.xml.bind.annotation.XmlEnum;
import javax.xml.bind.annotation.XmlEnumValue;
import com.fasterxml.jackson.annotation.JsonProperty;

public class PushWhereObject  {
  

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

  @ApiModelProperty(value = "")
  private DeviceTypeEnum deviceType = null;

  @ApiModelProperty(value = "")
  private PushWhereObjectDeviceToken deviceToken = null;
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

  public PushWhereObject deviceType(DeviceTypeEnum deviceType) {
    this.deviceType = deviceType;
    return this;
  }

 /**
   * Get deviceToken
   * @return deviceToken
  **/
  @JsonProperty("deviceToken")
  public PushWhereObjectDeviceToken getDeviceToken() {
    return deviceToken;
  }

  public void setDeviceToken(PushWhereObjectDeviceToken deviceToken) {
    this.deviceToken = deviceToken;
  }

  public PushWhereObject deviceToken(PushWhereObjectDeviceToken deviceToken) {
    this.deviceToken = deviceToken;
    return this;
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class PushWhereObject {\n");
    
    sb.append("    deviceType: ").append(toIndentedString(deviceType)).append("\n");
    sb.append("    deviceToken: ").append(toIndentedString(deviceToken)).append("\n");
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

