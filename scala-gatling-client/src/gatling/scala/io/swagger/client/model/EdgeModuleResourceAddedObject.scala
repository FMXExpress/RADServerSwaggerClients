
package io.swagger.client.model


case class EdgeModuleResourceAddedObject (
    _resourcename: String
)
object EdgeModuleResourceAddedObject {
    def toStringBody(var_resourcename: Object) =
        s"""
        | {
        | "resourcename":$var_resourcename
        | }
        """.stripMargin
}
