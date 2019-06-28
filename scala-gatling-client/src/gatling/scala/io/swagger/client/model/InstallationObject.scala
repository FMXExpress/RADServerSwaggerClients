
package io.swagger.client.model

import java.util.HashMap

case class InstallationObject (
    __id: String,
    _deviceToken: String,
    _deviceType: String,
    __meta: _metaInstallationObject,
    _channels: Option[List[String]]
)
object InstallationObject {
    def toStringBody(var__id: Object, var_deviceToken: Object, var_deviceType: Object, var__meta: Object, var_channels: Object) =
        s"""
        | {
        | "_id":$var__id,"deviceToken":$var_deviceToken,"deviceType":$var_deviceType,"_meta":$var__meta,"channels":$var_channels
        | }
        """.stripMargin
}
