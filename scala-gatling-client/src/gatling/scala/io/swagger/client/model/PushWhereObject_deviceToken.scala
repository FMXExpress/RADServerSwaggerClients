
package io.swagger.client.model


case class PushWhereObject_deviceToken (
    _$in: List[String]
)
object PushWhereObject_deviceToken {
    def toStringBody(var_$in: Object) =
        s"""
        | {
        | "$in":$var_$in
        | }
        """.stripMargin
}
