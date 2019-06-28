
package io.swagger.client.model

import java.util.HashMap

case class InstallationAddObject (
    _deviceToken: String,
    _deviceType: String,
    _channels: Option[List[String]]
)
object InstallationAddObject {
    def toStringBody(var_deviceToken: Object, var_deviceType: Object, var_channels: Object) =
        s"""
        | {
        | "deviceToken":$var_deviceToken,"deviceType":$var_deviceType,"channels":$var_channels
        | }
        """.stripMargin
}
