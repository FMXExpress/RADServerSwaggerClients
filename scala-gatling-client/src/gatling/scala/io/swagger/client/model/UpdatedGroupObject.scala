
package io.swagger.client.model


case class UpdatedGroupObject (
    _updated: String
)
object UpdatedGroupObject {
    def toStringBody(var_updated: Object) =
        s"""
        | {
        | "updated":$var_updated
        | }
        """.stripMargin
}
