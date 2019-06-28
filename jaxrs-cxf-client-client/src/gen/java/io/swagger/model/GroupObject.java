package io.swagger.model;

import io.swagger.model.MetaGroupObject;
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

public class GroupObject extends HashMap<String, String> {
  
  @ApiModelProperty(required = true, value = "")
  private String name = null;

  @ApiModelProperty(required = true, value = "")
  private MetaGroupObject meta = null;

  @ApiModelProperty(value = "")
  private List<String> users = null;
 /**
   * Get name
   * @return name
  **/
  @JsonProperty("name")
  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public GroupObject name(String name) {
    this.name = name;
    return this;
  }

 /**
   * Get meta
   * @return meta
  **/
  @JsonProperty("_meta")
  public MetaGroupObject getMeta() {
    return meta;
  }

  public void setMeta(MetaGroupObject meta) {
    this.meta = meta;
  }

  public GroupObject meta(MetaGroupObject meta) {
    this.meta = meta;
    return this;
  }

 /**
   * Get users
   * @return users
  **/
  @JsonProperty("users")
  public List<String> getUsers() {
    return users;
  }

  public void setUsers(List<String> users) {
    this.users = users;
  }

  public GroupObject users(List<String> users) {
    this.users = users;
    return this;
  }

  public GroupObject addUsersItem(String usersItem) {
    this.users.add(usersItem);
    return this;
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class GroupObject {\n");
    sb.append("    ").append(toIndentedString(super.toString())).append("\n");
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
    sb.append("    meta: ").append(toIndentedString(meta)).append("\n");
    sb.append("    users: ").append(toIndentedString(users)).append("\n");
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

