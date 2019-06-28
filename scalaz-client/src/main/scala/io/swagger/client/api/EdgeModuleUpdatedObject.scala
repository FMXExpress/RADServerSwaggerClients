package io.swagger.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import EdgeModuleUpdatedObject._

case class EdgeModuleUpdatedObject (
  updated: String)

object EdgeModuleUpdatedObject {
  import DateTimeCodecs._

  implicit val EdgeModuleUpdatedObjectCodecJson: CodecJson[EdgeModuleUpdatedObject] = CodecJson.derive[EdgeModuleUpdatedObject]
  implicit val EdgeModuleUpdatedObjectDecoder: EntityDecoder[EdgeModuleUpdatedObject] = jsonOf[EdgeModuleUpdatedObject]
  implicit val EdgeModuleUpdatedObjectEncoder: EntityEncoder[EdgeModuleUpdatedObject] = jsonEncoderOf[EdgeModuleUpdatedObject]
}
