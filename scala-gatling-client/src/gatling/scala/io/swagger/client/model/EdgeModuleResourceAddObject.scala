
package io.swagger.client.model

import java.util.HashMap

case class EdgeModuleResourceAddObject (
    _resourcename: String
)
object EdgeModuleResourceAddObject {
    def toStringBody(var_resourcename: Object) =
        s"""
        | {
        | "resourcename":$var_resourcename
        | }
        """.stripMargin
}
