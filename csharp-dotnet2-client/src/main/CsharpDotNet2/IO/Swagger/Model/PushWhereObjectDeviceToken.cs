using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;
using System.Runtime.Serialization;
using Newtonsoft.Json;

namespace IO.Swagger.Model {

  /// <summary>
  /// $in
  /// </summary>
  [DataContract]
  public class PushWhereObjectDeviceToken {
    /// <summary>
    /// Gets or Sets In
    /// </summary>
    [DataMember(Name="$in", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "$in")]
    public List<string> In { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class PushWhereObjectDeviceToken {\n");
      sb.Append("  In: ").Append(In).Append("\n");
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
