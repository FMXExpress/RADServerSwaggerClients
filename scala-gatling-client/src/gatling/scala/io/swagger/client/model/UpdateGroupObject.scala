
package io.swagger.client.model


case class UpdateGroupObject (
    _fieldName: Option[String],
    _users: Option[List[String]]
)
object UpdateGroupObject {
    def toStringBody(var_fieldName: Object, var_users: Object) =
        s"""
        | {
        | "fieldName":$var_fieldName,"users":$var_users
        | }
        """.stripMargin
}
