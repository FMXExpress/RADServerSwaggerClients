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
  public class PushDataObjectAps {
    /// <summary>
    /// Gets or Sets Alert
    /// </summary>
    [DataMember(Name="alert", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "alert")]
    public string Alert { get; set; }

    /// <summary>
    /// Gets or Sets Badge
    /// </summary>
    [DataMember(Name="badge", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "badge")]
    public string Badge { get; set; }

    /// <summary>
    /// Gets or Sets Sound
    /// </summary>
    [DataMember(Name="sound", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "sound")]
    public string Sound { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class PushDataObjectAps {\n");
      sb.Append("  Alert: ").Append(Alert).Append("\n");
      sb.Append("  Badge: ").Append(Badge).Append("\n");
      sb.Append("  Sound: ").Append(Sound).Append("\n");
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
