/*
 * EMS API Documentation
 * Enterprise Mobility Services API\r\n\r\n  [Learn about EMS](https://www.embarcadero.com/products/rad-studio/enterprise-mobility-services)\r\n\r\n  EMS (Enterprise Mobility Services) offers a Mobile Enterprise Application Platform (MEAP)\r\n\r\n  TurnKey Middleware for Interconnected Distributed Apps
 *
 * OpenAPI spec version: 0.0.0
 * 
 *
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen.git
 * Do not edit the class manually.
 */

/**
 * SwagInstallationAddObject
 */
public class SwagInstallationAddObject extends HashMap<String, String> {
    /**
     * Get deviceToken
     * @return deviceToken
     */
    public String deviceToken { get; set; }

    /**
     * Get deviceType
     * @return deviceType
     */
    public String deviceType { get; set; }

    /**
     * Get channels
     * @return channels
     */
    public List<String> channels { get; set; }

    public SwagInstallationAddObject() {
        channels = new List<String>();
    }

    public static SwagInstallationAddObject getExample() {
        SwagInstallationAddObject installationAddObject = new SwagInstallationAddObject();
        installationAddObject.deviceToken = 'aeiou';
        installationAddObject.deviceType = 'aeiou';
        installationAddObject.channels = new List<String>{'aeiou'};
        return installationAddObject;
    }

    public Boolean equals(Object obj) {
        if (obj instanceof SwagInstallationAddObject) {
            SwagInstallationAddObject installationAddObject = (SwagInstallationAddObject) obj;
            return this.deviceToken == installationAddObject.deviceToken
                && this.deviceType == installationAddObject.deviceType
                && this.channels == installationAddObject.channels;
        }
        return false;
    }

    public Integer hashCode() {
        Integer hashCode = 43;
        hashCode = (17 * hashCode) + (deviceToken == null ? 0 : System.hashCode(deviceToken));
        hashCode = (17 * hashCode) + (deviceType == null ? 0 : System.hashCode(deviceType));
        hashCode = (17 * hashCode) + (channels == null ? 0 : System.hashCode(channels));
        return hashCode;
    }
}
