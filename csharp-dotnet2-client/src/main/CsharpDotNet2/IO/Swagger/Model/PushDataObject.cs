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
  public class PushDataObject {
    /// <summary>
    /// Gets or Sets Gcm
    /// </summary>
    [DataMember(Name="gcm", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "gcm")]
    public PushDataObjectGcm Gcm { get; set; }

    /// <summary>
    /// Gets or Sets Aps
    /// </summary>
    [DataMember(Name="aps", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "aps")]
    public PushDataObjectAps Aps { get; set; }

    /// <summary>
    /// Gets or Sets Extras
    /// </summary>
    [DataMember(Name="extras", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "extras")]
    public PushDataObjectExtras Extras { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class PushDataObject {\n");
      sb.Append("  Gcm: ").Append(Gcm).Append("\n");
      sb.Append("  Aps: ").Append(Aps).Append("\n");
      sb.Append("  Extras: ").Append(Extras).Append("\n");
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
