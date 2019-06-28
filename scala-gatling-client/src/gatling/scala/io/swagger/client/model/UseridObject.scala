
package io.swagger.client.model


case class UseridObject (
    __id: String
)
object UseridObject {
    def toStringBody(var__id: Object) =
        s"""
        | {
        | "_id":$var__id
        | }
        """.stripMargin
}
