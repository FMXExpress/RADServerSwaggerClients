
package io.swagger.client.model


case class _metaGroupObject (
    _creator: String,
    _created: String,
    _updated: Option[String]
)
object _metaGroupObject {
    def toStringBody(var_creator: Object, var_created: Object, var_updated: Object) =
        s"""
        | {
        | "creator":$var_creator,"created":$var_created,"updated":$var_updated
        | }
        """.stripMargin
}
