/*
 * EMS API Documentation
 * Enterprise Mobility Services API      [Learn about EMS](https://www.embarcadero.com/products/rad-studio/enterprise-mobility-services)      EMS (Enterprise Mobility Services) offers a Mobile Enterprise Application Platform (MEAP)      TurnKey Middleware for Interconnected Distributed Apps
 *
 * OpenAPI spec version: 0.0.0
 * 
 *
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen.git
 * Do not edit the class manually.
 */


package io.swagger.client.model;

import java.util.Objects;
import java.util.Arrays;
import com.google.gson.TypeAdapter;
import com.google.gson.annotations.JsonAdapter;
import com.google.gson.annotations.SerializedName;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import io.swagger.client.model.PushDataObject;
import io.swagger.client.model.PushWhereObject;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * PushObject
 */
@javax.annotation.Generated(value = "io.swagger.codegen.languages.JavaClientCodegen", date = "2019-06-27T17:11:31.701Z")
public class PushObject {
  @SerializedName("data")
  private PushDataObject data = null;

  @SerializedName("channels")
  private List<String> channels = null;

  @SerializedName("where")
  private PushWhereObject where = null;

  public PushObject data(PushDataObject data) {
    this.data = data;
    return this;
  }

   /**
   * Get data
   * @return data
  **/
  @ApiModelProperty(required = true, value = "")
  public PushDataObject getData() {
    return data;
  }

  public void setData(PushDataObject data) {
    this.data = data;
  }

  public PushObject channels(List<String> channels) {
    this.channels = channels;
    return this;
  }

  public PushObject addChannelsItem(String channelsItem) {
    if (this.channels == null) {
      this.channels = new ArrayList<String>();
    }
    this.channels.add(channelsItem);
    return this;
  }

   /**
   * Get channels
   * @return channels
  **/
  @ApiModelProperty(value = "")
  public List<String> getChannels() {
    return channels;
  }

  public void setChannels(List<String> channels) {
    this.channels = channels;
  }

  public PushObject where(PushWhereObject where) {
    this.where = where;
    return this;
  }

   /**
   * Get where
   * @return where
  **/
  @ApiModelProperty(required = true, value = "")
  public PushWhereObject getWhere() {
    return where;
  }

  public void setWhere(PushWhereObject where) {
    this.where = where;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    PushObject pushObject = (PushObject) o;
    return Objects.equals(this.data, pushObject.data) &&
        Objects.equals(this.channels, pushObject.channels) &&
        Objects.equals(this.where, pushObject.where);
  }

  @Override
  public int hashCode() {
    return Objects.hash(data, channels, where);
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
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }

}
