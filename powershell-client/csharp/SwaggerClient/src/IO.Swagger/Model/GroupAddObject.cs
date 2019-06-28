/* 
 * EMS API Documentation
 *
 * Enterprise Mobility Services API      [Learn about EMS](https://www.embarcadero.com/products/rad-studio/enterprise-mobility-services)      EMS (Enterprise Mobility Services) offers a Mobile Enterprise Application Platform (MEAP)      TurnKey Middleware for Interconnected Distributed Apps
 *
 * OpenAPI spec version: 0.0.0
 * 
 * Generated by: https://github.com/swagger-api/swagger-codegen.git
 */

using System;
using System.Linq;
using System.IO;
using System.Text;
using System.Text.RegularExpressions;
using System.Collections;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Runtime.Serialization;
using Newtonsoft.Json;
using Newtonsoft.Json.Converters;
using System.ComponentModel.DataAnnotations;
using SwaggerDateConverter = IO.Swagger.Client.SwaggerDateConverter;

namespace IO.Swagger.Model
{
    /// <summary>
    /// GroupAddObject
    /// </summary>
    [DataContract]
    public partial class GroupAddObject :  IEquatable<GroupAddObject>, IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="GroupAddObject" /> class.
        /// </summary>
        [JsonConstructorAttribute]
        protected GroupAddObject() { }
        /// <summary>
        /// Initializes a new instance of the <see cref="GroupAddObject" /> class.
        /// </summary>
        /// <param name="groupname">groupname (required).</param>
        public GroupAddObject(string groupname = default(string))
        {
            // to ensure "groupname" is required (not null)
            if (groupname == null)
            {
                throw new InvalidDataException("groupname is a required property for GroupAddObject and cannot be null");
            }
            else
            {
                this.Groupname = groupname;
            }
        }
        
        /// <summary>
        /// Gets or Sets Groupname
        /// </summary>
        [DataMember(Name="groupname", EmitDefaultValue=false)]
        public string Groupname { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            var sb = new StringBuilder();
            sb.Append("class GroupAddObject {\n");
            sb.Append("  Groupname: ").Append(Groupname).Append("\n");
            sb.Append("}\n");
            return sb.ToString();
        }
  
        /// <summary>
        /// Returns the JSON string presentation of the object
        /// </summary>
        /// <returns>JSON string presentation of the object</returns>
        public virtual string ToJson()
        {
            return JsonConvert.SerializeObject(this, Formatting.Indented);
        }

        /// <summary>
        /// Returns true if objects are equal
        /// </summary>
        /// <param name="input">Object to be compared</param>
        /// <returns>Boolean</returns>
        public override bool Equals(object input)
        {
            return this.Equals(input as GroupAddObject);
        }

        /// <summary>
        /// Returns true if GroupAddObject instances are equal
        /// </summary>
        /// <param name="input">Instance of GroupAddObject to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(GroupAddObject input)
        {
            if (input == null)
                return false;

            return 
                (
                    this.Groupname == input.Groupname ||
                    (this.Groupname != null &&
                    this.Groupname.Equals(input.Groupname))
                );
        }

        /// <summary>
        /// Gets the hash code
        /// </summary>
        /// <returns>Hash code</returns>
        public override int GetHashCode()
        {
            unchecked // Overflow is fine, just wrap
            {
                int hashCode = 41;
                if (this.Groupname != null)
                    hashCode = hashCode * 59 + this.Groupname.GetHashCode();
                return hashCode;
            }
        }

        /// <summary>
        /// To validate all properties of the instance
        /// </summary>
        /// <param name="validationContext">Validation context</param>
        /// <returns>Validation Result</returns>
        IEnumerable<System.ComponentModel.DataAnnotations.ValidationResult> IValidatableObject.Validate(ValidationContext validationContext)
        {
            yield break;
        }
    }

}