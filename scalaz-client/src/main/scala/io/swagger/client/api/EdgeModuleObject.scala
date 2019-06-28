package io.swagger.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import EdgeModuleObject._

case class EdgeModuleObject (
  modulename: String,
id: String,
protocol: String,
protocolprops: String,
meta: MetaEdgeModuleObject)

object EdgeModuleObject {
  import DateTimeCodecs._

  implicit val EdgeModuleObjectCodecJson: CodecJson[EdgeModuleObject] = CodecJson.derive[EdgeModuleObject]
  implicit val EdgeModuleObjectDecoder: EntityDecoder[EdgeModuleObject] = jsonOf[EdgeModuleObject]
  implicit val EdgeModuleObjectEncoder: EntityEncoder[EdgeModuleObject] = jsonEncoderOf[EdgeModuleObject]
}
