package io.swagger.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import EdgeModuleUpdateObject._

case class EdgeModuleUpdateObject (
  modulename: String,
protocol: String,
protocolprops: String)

object EdgeModuleUpdateObject {
  import DateTimeCodecs._

  implicit val EdgeModuleUpdateObjectCodecJson: CodecJson[EdgeModuleUpdateObject] = CodecJson.derive[EdgeModuleUpdateObject]
  implicit val EdgeModuleUpdateObjectDecoder: EntityDecoder[EdgeModuleUpdateObject] = jsonOf[EdgeModuleUpdateObject]
  implicit val EdgeModuleUpdateObjectEncoder: EntityEncoder[EdgeModuleUpdateObject] = jsonEncoderOf[EdgeModuleUpdateObject]
}
