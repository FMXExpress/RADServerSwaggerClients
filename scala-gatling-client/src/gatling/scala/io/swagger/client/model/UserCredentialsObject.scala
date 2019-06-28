
package io.swagger.client.model


case class UserCredentialsObject (
    _username: String,
    _password: String
)
object UserCredentialsObject {
    def toStringBody(var_username: Object, var_password: Object) =
        s"""
        | {
        | "username":$var_username,"password":$var_password
        | }
        """.stripMargin
}
