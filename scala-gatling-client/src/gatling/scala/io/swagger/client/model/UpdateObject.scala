
package io.swagger.client.model


case class UpdateObject (
    _fieldName: Option[String]
)
object UpdateObject {
    def toStringBody(var_fieldName: Object) =
        s"""
        | {
        | "fieldName":$var_fieldName
        | }
        """.stripMargin
}
