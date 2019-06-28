
package io.swagger.client.model

import java.util.HashMap

case class UserObject (
    _id: String,
    _username: String,
    __meta: _metaObject
)
object UserObject {
    def toStringBody(var_id: Object, var_username: Object, var__meta: Object) =
        s"""
        | {
        | "id":$var_id,"username":$var_username,"_meta":$var__meta
        | }
        """.stripMargin
}
