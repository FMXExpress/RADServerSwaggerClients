
package io.swagger.client.model


case class EdgeModuleResourceUpdatedObject (
    _updated: String
)
object EdgeModuleResourceUpdatedObject {
    def toStringBody(var_updated: Object) =
        s"""
        | {
        | "updated":$var_updated
        | }
        """.stripMargin
}
