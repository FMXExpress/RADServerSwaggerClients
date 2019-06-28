package io.swagger.model;

import io.swagger.model.PushDataObject;
import io.swagger.model.PushWhereObject;
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

public class PushObject  {
  
  @ApiModelProperty(required = true, value = "")
  private PushDataObject data = null;

  @ApiModelProperty(value = "")
  private List<String> channels = null;

  @ApiModelProperty(required = true, value = "")
  private PushWhereObject where = null;
 /**
   * Get data
   * @return data
  **/
  @JsonProperty("data")
  public PushDataObject getData() {
    return data;
  }

  public void setData(PushDataObject data) {
    this.data = data;
  }

  public PushObject data(PushDataObject data) {
    this.data = data;
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

  public PushObject channels(List<String> channels) {
    this.channels = channels;
    return this;
  }

  public PushObject addChannelsItem(String channelsItem) {
    this.channels.add(channelsItem);
    return this;
  }

 /**
   * Get where
   * @return where
  **/
  @JsonProperty("where")
  public PushWhereObject getWhere() {
    return where;
  }

  public void setWhere(PushWhereObject where) {
    this.where = where;
  }

  public PushObject where(PushWhereObject where) {
    this.where = where;
    return this;
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class PushObject {\n");
    
    sb.append("    data: ").append(toIndentedString(data)).append("\n");
    sb.append("    channels: ").append(toIndentedString(channels)).append("\n");
    sb.append("    where: ").append(toIndentedString(where)).append("\n");
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

