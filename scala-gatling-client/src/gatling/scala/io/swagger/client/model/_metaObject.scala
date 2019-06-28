
package io.swagger.client.model


case class _metaObject (
    _creator: String,
    _created: String,
    _updated: Option[String]
)
object _metaObject {
    def toStringBody(var_creator: Object, var_created: Object, var_updated: Object) =
        s"""
        | {
        | "creator":$var_creator,"created":$var_created,"updated":$var_updated
        | }
        """.stripMargin
}
