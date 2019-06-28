
package io.swagger.client.model


case class UserSignUpResponseObject (
    __id: String,
    _sessionToken: String
)
object UserSignUpResponseObject {
    def toStringBody(var__id: Object, var_sessionToken: Object) =
        s"""
        | {
        | "_id":$var__id,"sessionToken":$var_sessionToken
        | }
        """.stripMargin
}
