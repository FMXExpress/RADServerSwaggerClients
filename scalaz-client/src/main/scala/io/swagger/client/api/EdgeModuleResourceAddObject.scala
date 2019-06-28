package io.swagger.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import EdgeModuleResourceAddObject._

case class EdgeModuleResourceAddObject (
  resourcename: String)

object EdgeModuleResourceAddObject {
  import DateTimeCodecs._

  implicit val EdgeModuleResourceAddObjectCodecJson: CodecJson[EdgeModuleResourceAddObject] = CodecJson.derive[EdgeModuleResourceAddObject]
  implicit val EdgeModuleResourceAddObjectDecoder: EntityDecoder[EdgeModuleResourceAddObject] = jsonOf[EdgeModuleResourceAddObject]
  implicit val EdgeModuleResourceAddObjectEncoder: EntityEncoder[EdgeModuleResourceAddObject] = jsonEncoderOf[EdgeModuleResourceAddObject]
}
