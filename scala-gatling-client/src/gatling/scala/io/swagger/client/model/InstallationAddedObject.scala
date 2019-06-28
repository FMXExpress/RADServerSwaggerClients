
package io.swagger.client.model


case class InstallationAddedObject (
    __id: String
)
object InstallationAddedObject {
    def toStringBody(var__id: Object) =
        s"""
        | {
        | "_id":$var__id
        | }
        """.stripMargin
}
