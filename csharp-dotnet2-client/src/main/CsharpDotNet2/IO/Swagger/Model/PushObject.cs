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
  public class PushObject {
    /// <summary>
    /// Gets or Sets Data
    /// </summary>
    [DataMember(Name="data", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "data")]
    public PushDataObject Data { get; set; }

    /// <summary>
    /// Gets or Sets Channels
    /// </summary>
    [DataMember(Name="channels", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "channels")]
    public List<string> Channels { get; set; }

    /// <summary>
    /// Gets or Sets Where
    /// </summary>
    [DataMember(Name="where", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "where")]
    public PushWhereObject Where { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class PushObject {\n");
      sb.Append("  Data: ").Append(Data).Append("\n");
      sb.Append("  Channels: ").Append(Channels).Append("\n");
      sb.Append("  Where: ").Append(Where).Append("\n");
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
