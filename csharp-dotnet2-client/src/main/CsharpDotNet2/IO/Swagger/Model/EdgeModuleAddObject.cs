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
  public class EdgeModuleAddObject : Dictionary<String, string> {
    /// <summary>
    /// Gets or Sets Modulename
    /// </summary>
    [DataMember(Name="modulename", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "modulename")]
    public string Modulename { get; set; }

    /// <summary>
    /// Gets or Sets Protocol
    /// </summary>
    [DataMember(Name="protocol", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "protocol")]
    public string Protocol { get; set; }

    /// <summary>
    /// Gets or Sets Protocolprops
    /// </summary>
    [DataMember(Name="protocolprops", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "protocolprops")]
    public string Protocolprops { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class EdgeModuleAddObject {\n");
      sb.Append("  Modulename: ").Append(Modulename).Append("\n");
      sb.Append("  Protocol: ").Append(Protocol).Append("\n");
      sb.Append("  Protocolprops: ").Append(Protocolprops).Append("\n");
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
