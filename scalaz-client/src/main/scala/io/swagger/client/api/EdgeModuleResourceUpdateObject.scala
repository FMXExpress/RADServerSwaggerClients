package io.swagger.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import EdgeModuleResourceUpdateObject._

case class EdgeModuleResourceUpdateObject (
  resourcename: Option[String])

object EdgeModuleResourceUpdateObject {
  import DateTimeCodecs._

  implicit val EdgeModuleResourceUpdateObjectCodecJson: CodecJson[EdgeModuleResourceUpdateObject] = CodecJson.derive[EdgeModuleResourceUpdateObject]
  implicit val EdgeModuleResourceUpdateObjectDecoder: EntityDecoder[EdgeModuleResourceUpdateObject] = jsonOf[EdgeModuleResourceUpdateObject]
  implicit val EdgeModuleResourceUpdateObjectEncoder: EntityEncoder[EdgeModuleResourceUpdateObject] = jsonEncoderOf[EdgeModuleResourceUpdateObject]
}
