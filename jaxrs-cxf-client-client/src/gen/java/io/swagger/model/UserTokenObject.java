package io.swagger.model;

import io.swagger.model.MetaObject;

import io.swagger.annotations.ApiModelProperty;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;
import javax.xml.bind.annotation.XmlEnum;
import javax.xml.bind.annotation.XmlEnumValue;
import com.fasterxml.jackson.annotation.JsonProperty;

public class UserTokenObject  {
  
  @ApiModelProperty(required = true, value = "")
  private String id = null;

  @ApiModelProperty(required = true, value = "")
  private String username = null;

  @ApiModelProperty(required = true, value = "")
  private MetaObject meta = null;

  @ApiModelProperty(required = true, value = "")
  private String sessiontoken = null;
 /**
   * Get id
   * @return id
  **/
  @JsonProperty("id")
  public String getId() {
    return id;
  }

  public void setId(String id) {
    this.id = id;
  }

  public UserTokenObject id(String id) {
    this.id = id;
    return this;
  }

 /**
   * Get username
   * @return username
  **/
  @JsonProperty("username")
  public String getUsername() {
    return username;
  }

  public void setUsername(String username) {
    this.username = username;
  }

  public UserTokenObject username(String username) {
    this.username = username;
    return this;
  }

 /**
   * Get meta
   * @return meta
  **/
  @JsonProperty("_meta")
  public MetaObject getMeta() {
    return meta;
  }

  public void setMeta(MetaObject meta) {
    this.meta = meta;
  }

  public UserTokenObject meta(MetaObject meta) {
    this.meta = meta;
    return this;
  }

 /**
   * Get sessiontoken
   * @return sessiontoken
  **/
  @JsonProperty("sessiontoken")
  public String getSessiontoken() {
    return sessiontoken;
  }

  public void setSessiontoken(String sessiontoken) {
    this.sessiontoken = sessiontoken;
  }

  public UserTokenObject sessiontoken(String sessiontoken) {
    this.sessiontoken = sessiontoken;
    return this;
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class UserTokenObject {\n");
    
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    username: ").append(toIndentedString(username)).append("\n");
    sb.append("    meta: ").append(toIndentedString(meta)).append("\n");
    sb.append("    sessiontoken: ").append(toIndentedString(sessiontoken)).append("\n");
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

