
package io.swagger.client.model


case class EdgeModuleAddedObject (
    __id: String,
    _modulename: String
)
object EdgeModuleAddedObject {
    def toStringBody(var__id: Object, var_modulename: Object) =
        s"""
        | {
        | "_id":$var__id,"modulename":$var_modulename
        | }
        """.stripMargin
}
