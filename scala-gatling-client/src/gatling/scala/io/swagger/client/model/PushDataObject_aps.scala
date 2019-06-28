
package io.swagger.client.model


case class PushDataObject_aps (
    _alert: Option[String],
    _badge: Option[String],
    _sound: Option[String]
)
object PushDataObject_aps {
    def toStringBody(var_alert: Object, var_badge: Object, var_sound: Object) =
        s"""
        | {
        | "alert":$var_alert,"badge":$var_badge,"sound":$var_sound
        | }
        """.stripMargin
}
