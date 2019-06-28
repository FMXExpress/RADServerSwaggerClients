
package io.swagger.client.model


case class PushDataObject_extras (
    _message: Option[String]
)
object PushDataObject_extras {
    def toStringBody(var_message: Object) =
        s"""
        | {
        | "message":$var_message
        | }
        """.stripMargin
}
