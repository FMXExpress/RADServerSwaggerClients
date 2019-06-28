
package io.swagger.client.model


case class PushWhereObject (
    _deviceType: Option[String],
    _deviceToken: Option[PushWhereObject_deviceToken]
)
object PushWhereObject {
    def toStringBody(var_deviceType: Object, var_deviceToken: Object) =
        s"""
        | {
        | "deviceType":$var_deviceType,"deviceToken":$var_deviceToken
        | }
        """.stripMargin
}
