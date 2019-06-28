
package io.swagger.client.model


case class PushDataObject (
    _gcm: Option[PushDataObject_gcm],
    _aps: Option[PushDataObject_aps],
    _extras: Option[PushDataObject_extras]
)
object PushDataObject {
    def toStringBody(var_gcm: Object, var_aps: Object, var_extras: Object) =
        s"""
        | {
        | "gcm":$var_gcm,"aps":$var_aps,"extras":$var_extras
        | }
        """.stripMargin
}
