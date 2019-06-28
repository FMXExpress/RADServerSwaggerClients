package io.swagger.model;

import io.swagger.model.FieldObjectFields;
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

public class FieldGroupObject  {
  
  @ApiModelProperty(required = true, value = "")
  private String name = null;

  @ApiModelProperty(value = "")
  private List<FieldObjectFields> fields = null;

  @ApiModelProperty(value = "")
  private Boolean custom = null;
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

  public FieldGroupObject name(String name) {
    this.name = name;
    return this;
  }

 /**
   * Get fields
   * @return fields
  **/
  @JsonProperty("fields")
  public List<FieldObjectFields> getFields() {
    return fields;
  }

  public void setFields(List<FieldObjectFields> fields) {
    this.fields = fields;
  }

  public FieldGroupObject fields(List<FieldObjectFields> fields) {
    this.fields = fields;
    return this;
  }

  public FieldGroupObject addFieldsItem(FieldObjectFields fieldsItem) {
    this.fields.add(fieldsItem);
    return this;
  }

 /**
   * Get custom
   * @return custom
  **/
  @JsonProperty("custom")
  public Boolean isCustom() {
    return custom;
  }

  public void setCustom(Boolean custom) {
    this.custom = custom;
  }

  public FieldGroupObject custom(Boolean custom) {
    this.custom = custom;
    return this;
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class FieldGroupObject {\n");
    
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
    sb.append("    fields: ").append(toIndentedString(fields)).append("\n");
    sb.append("    custom: ").append(toIndentedString(custom)).append("\n");
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

