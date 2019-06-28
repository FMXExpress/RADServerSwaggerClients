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
  public class EdgeModuleResourceObject : Dictionary<String, string> {
    /// <summary>
    /// Gets or Sets Resourcename
    /// </summary>
    [DataMember(Name="resourcename", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "resourcename")]
    public string Resourcename { get; set; }

    /// <summary>
    /// Gets or Sets Modulename
    /// </summary>
    [DataMember(Name="modulename", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "modulename")]
    public string Modulename { get; set; }

    /// <summary>
    /// Gets or Sets Moduleid
    /// </summary>
    [DataMember(Name="moduleid", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "moduleid")]
    public string Moduleid { get; set; }

    /// <summary>
    /// Gets or Sets Meta
    /// </summary>
    [DataMember(Name="_meta", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "_meta")]
    public MetaEdgeModuleObject Meta { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class EdgeModuleResourceObject {\n");
      sb.Append("  Resourcename: ").Append(Resourcename).Append("\n");
      sb.Append("  Modulename: ").Append(Modulename).Append("\n");
      sb.Append("  Moduleid: ").Append(Moduleid).Append("\n");
      sb.Append("  Meta: ").Append(Meta).Append("\n");
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
