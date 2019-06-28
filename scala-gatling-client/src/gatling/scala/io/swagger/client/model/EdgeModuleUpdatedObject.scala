
package io.swagger.client.model


case class EdgeModuleUpdatedObject (
    _updated: String
)
object EdgeModuleUpdatedObject {
    def toStringBody(var_updated: Object) =
        s"""
        | {
        | "updated":$var_updated
        | }
        """.stripMargin
}
