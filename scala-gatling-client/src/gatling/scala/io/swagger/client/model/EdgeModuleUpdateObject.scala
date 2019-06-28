
package io.swagger.client.model

import java.util.HashMap

case class EdgeModuleUpdateObject (
    _modulename: String,
    _protocol: String,
    _protocolprops: String
)
object EdgeModuleUpdateObject {
    def toStringBody(var_modulename: Object, var_protocol: Object, var_protocolprops: Object) =
        s"""
        | {
        | "modulename":$var_modulename,"protocol":$var_protocol,"protocolprops":$var_protocolprops
        | }
        """.stripMargin
}
