
package io.swagger.client.model


case class FieldObject_fields (
    _name: Option[String]
)
object FieldObject_fields {
    def toStringBody(var_name: Object) =
        s"""
        | {
        | "name":$var_name
        | }
        """.stripMargin
}
