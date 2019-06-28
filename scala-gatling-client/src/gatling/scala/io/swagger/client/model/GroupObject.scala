
package io.swagger.client.model

import java.util.HashMap

case class GroupObject (
    _name: String,
    __meta: _metaGroupObject,
    _users: Option[List[String]]
)
object GroupObject {
    def toStringBody(var_name: Object, var__meta: Object, var_users: Object) =
        s"""
        | {
        | "name":$var_name,"_meta":$var__meta,"users":$var_users
        | }
        """.stripMargin
}
