
package io.swagger.client.model

import java.util.HashMap

case class EdgeModuleResourceUpdateObject (
    _resourcename: Option[String]
)
object EdgeModuleResourceUpdateObject {
    def toStringBody(var_resourcename: Object) =
        s"""
        | {
        | "resourcename":$var_resourcename
        | }
        """.stripMargin
}
