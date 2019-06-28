
package io.swagger.client.model


case class PushObject (
    _data: PushDataObject,
    _channels: Option[List[String]],
    _where: PushWhereObject
)
object PushObject {
    def toStringBody(var_data: Object, var_channels: Object, var_where: Object) =
        s"""
        | {
        | "data":$var_data,"channels":$var_channels,"where":$var_where
        | }
        """.stripMargin
}
