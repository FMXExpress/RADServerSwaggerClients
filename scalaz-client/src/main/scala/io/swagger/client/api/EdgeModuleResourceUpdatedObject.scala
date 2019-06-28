package io.swagger.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import EdgeModuleResourceUpdatedObject._

case class EdgeModuleResourceUpdatedObject (
  updated: String)

object EdgeModuleResourceUpdatedObject {
  import DateTimeCodecs._

  implicit val EdgeModuleResourceUpdatedObjectCodecJson: CodecJson[EdgeModuleResourceUpdatedObject] = CodecJson.derive[EdgeModuleResourceUpdatedObject]
  implicit val EdgeModuleResourceUpdatedObjectDecoder: EntityDecoder[EdgeModuleResourceUpdatedObject] = jsonOf[EdgeModuleResourceUpdatedObject]
  implicit val EdgeModuleResourceUpdatedObjectEncoder: EntityEncoder[EdgeModuleResourceUpdatedObject] = jsonEncoderOf[EdgeModuleResourceUpdatedObject]
}
