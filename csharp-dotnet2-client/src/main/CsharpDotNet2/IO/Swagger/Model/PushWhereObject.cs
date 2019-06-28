using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;
using System.Runtime.Serialization;
using Newtonsoft.Json;

namespace IO.Swagger.Model {

  /// <summary>
  /// 
  /// </summary>
  [DataContract]
  public class PushWhereObject {
    /// <summary>
    /// Gets or Sets DeviceType
    /// </summary>
    [DataMember(Name="deviceType", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "deviceType")]
    public string DeviceType { get; set; }

    /// <summary>
    /// Gets or Sets DeviceToken
    /// </summary>
    [DataMember(Name="deviceToken", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "deviceToken")]
    public PushWhereObjectDeviceToken DeviceToken { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class PushWhereObject {\n");
      sb.Append("  DeviceType: ").Append(DeviceType).Append("\n");
      sb.Append("  DeviceToken: ").Append(DeviceToken).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }

    /// <summary>
    /// Get the JSON string presentation of the object
    /// </summary>
    /// <returns>JSON string presentation of the object</returns>
    public string ToJson() {
      return JsonConvert.SerializeObject(this, Formatting.Indented);
    }

}
}
