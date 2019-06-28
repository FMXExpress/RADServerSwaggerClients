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
  public class UserTokenObject {
    /// <summary>
    /// Gets or Sets Id
    /// </summary>
    [DataMember(Name="id", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "id")]
    public string Id { get; set; }

    /// <summary>
    /// Gets or Sets Username
    /// </summary>
    [DataMember(Name="username", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "username")]
    public string Username { get; set; }

    /// <summary>
    /// Gets or Sets Meta
    /// </summary>
    [DataMember(Name="_meta", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "_meta")]
    public MetaObject Meta { get; set; }

    /// <summary>
    /// Gets or Sets Sessiontoken
    /// </summary>
    [DataMember(Name="sessiontoken", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "sessiontoken")]
    public string Sessiontoken { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class UserTokenObject {\n");
      sb.Append("  Id: ").Append(Id).Append("\n");
      sb.Append("  Username: ").Append(Username).Append("\n");
      sb.Append("  Meta: ").Append(Meta).Append("\n");
      sb.Append("  Sessiontoken: ").Append(Sessiontoken).Append("\n");
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
