
package io.swagger.client.model


case class UserTokenObject (
    _id: String,
    _username: String,
    __meta: _metaObject,
    _sessiontoken: String
)
object UserTokenObject {
    def toStringBody(var_id: Object, var_username: Object, var__meta: Object, var_sessiontoken: Object) =
        s"""
        | {
        | "id":$var_id,"username":$var_username,"_meta":$var__meta,"sessiontoken":$var_sessiontoken
        | }
        """.stripMargin
}
