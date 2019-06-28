
package io.swagger.client.model


case class VersionObject (
    _version: Option[String],
    _server: Option[String]
)
object VersionObject {
    def toStringBody(var_version: Object, var_server: Object) =
        s"""
        | {
        | "version":$var_version,"server":$var_server
        | }
        """.stripMargin
}
