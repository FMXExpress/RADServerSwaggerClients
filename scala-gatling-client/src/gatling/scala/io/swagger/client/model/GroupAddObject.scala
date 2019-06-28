
package io.swagger.client.model


case class GroupAddObject (
    _groupname: String
)
object GroupAddObject {
    def toStringBody(var_groupname: Object) =
        s"""
        | {
        | "groupname":$var_groupname
        | }
        """.stripMargin
}
