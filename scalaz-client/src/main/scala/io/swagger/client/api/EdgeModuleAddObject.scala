package io.swagger.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import EdgeModuleAddObject._

case class EdgeModuleAddObject (
  modulename: String,
protocol: String,
protocolprops: String)

object EdgeModuleAddObject {
  import DateTimeCodecs._

  implicit val EdgeModuleAddObjectCodecJson: CodecJson[EdgeModuleAddObject] = CodecJson.derive[EdgeModuleAddObject]
  implicit val EdgeModuleAddObjectDecoder: EntityDecoder[EdgeModuleAddObject] = jsonOf[EdgeModuleAddObject]
  implicit val EdgeModuleAddObjectEncoder: EntityEncoder[EdgeModuleAddObject] = jsonEncoderOf[EdgeModuleAddObject]
}
