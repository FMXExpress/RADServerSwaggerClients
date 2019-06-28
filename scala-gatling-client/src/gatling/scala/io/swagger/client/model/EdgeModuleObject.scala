
package io.swagger.client.model

import java.util.HashMap

case class EdgeModuleObject (
    _modulename: String,
    __id: String,
    _protocol: String,
    _protocolprops: String,
    __meta: _metaEdgeModuleObject
)
object EdgeModuleObject {
    def toStringBody(var_modulename: Object, var__id: Object, var_protocol: Object, var_protocolprops: Object, var__meta: Object) =
        s"""
        | {
        | "modulename":$var_modulename,"_id":$var__id,"protocol":$var_protocol,"protocolprops":$var_protocolprops,"_meta":$var__meta
        | }
        """.stripMargin
}
