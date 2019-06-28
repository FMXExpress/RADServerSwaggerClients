
package io.swagger.client.model

import java.util.HashMap

case class EdgeModuleResourceObject (
    _resourcename: String,
    _modulename: String,
    _moduleid: String,
    __meta: _metaEdgeModuleObject
)
object EdgeModuleResourceObject {
    def toStringBody(var_resourcename: Object, var_modulename: Object, var_moduleid: Object, var__meta: Object) =
        s"""
        | {
        | "resourcename":$var_resourcename,"modulename":$var_modulename,"moduleid":$var_moduleid,"_meta":$var__meta
        | }
        """.stripMargin
}
