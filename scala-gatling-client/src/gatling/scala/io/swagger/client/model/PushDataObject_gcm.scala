
package io.swagger.client.model


case class PushDataObject_gcm (
    _message: Option[String],
    _title: Option[String]
)
object PushDataObject_gcm {
    def toStringBody(var_message: Object, var_title: Object) =
        s"""
        | {
        | "message":$var_message,"title":$var_title
        | }
        """.stripMargin
}
