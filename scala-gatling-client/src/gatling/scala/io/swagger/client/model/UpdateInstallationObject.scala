
package io.swagger.client.model

import java.util.HashMap

case class UpdateInstallationObject (
    _channels: Option[List[String]]
)
object UpdateInstallationObject {
    def toStringBody(var_channels: Object) =
        s"""
        | {
        | "channels":$var_channels
        | }
        """.stripMargin
}
