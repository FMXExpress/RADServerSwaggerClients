
package io.swagger.client.model


case class UpdatedObject (
    _updated: String
)
object UpdatedObject {
    def toStringBody(var_updated: Object) =
        s"""
        | {
        | "updated":$var_updated
        | }
        """.stripMargin
}
