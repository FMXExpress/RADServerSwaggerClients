
package io.swagger.client.model


case class UpdatedInstallationObject (
    _updated: String
)
object UpdatedInstallationObject {
    def toStringBody(var_updated: Object) =
        s"""
        | {
        | "updated":$var_updated
        | }
        """.stripMargin
}
