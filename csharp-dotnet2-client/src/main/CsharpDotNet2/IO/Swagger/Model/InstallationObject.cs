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
  public class InstallationObject : Dictionary<String, string> {
    /// <summary>
    /// Gets or Sets Id
    /// </summary>
    [DataMember(Name="_id", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "_id")]
    public string Id { get; set; }

    /// <summary>
    /// Gets or Sets DeviceToken
    /// </summary>
    [DataMember(Name="deviceToken", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "deviceToken")]
    public string DeviceToken { get; set; }

    /// <summary>
    /// Gets or Sets DeviceType
    /// </summary>
    [DataMember(Name="deviceType", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "deviceType")]
    public string DeviceType { get; set; }

    /// <summary>
    /// Gets or Sets Meta
    /// </summary>
    [DataMember(Name="_meta", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "_meta")]
    public MetaInstallationObject Meta { get; set; }

    /// <summary>
    /// Gets or Sets Channels
    /// </summary>
    [DataMember(Name="channels", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "channels")]
    public List<string> Channels { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class InstallationObject {\n");
      sb.Append("  Id: ").Append(Id).Append("\n");
      sb.Append("  DeviceToken: ").Append(DeviceToken).Append("\n");
      sb.Append("  DeviceType: ").Append(DeviceType).Append("\n");
      sb.Append("  Meta: ").Append(Meta).Append("\n");
      sb.Append("  Channels: ").Append(Channels).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }

    /// <summary>
    /// Get the JSON string presentation of the object
    /// </summary>
    /// <returns>JSON string presentation of the object</returns>
    public  new string ToJson() {
      return JsonConvert.SerializeObject(this, Formatting.Indented);
    }

}
}
