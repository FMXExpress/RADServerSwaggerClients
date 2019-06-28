package io.swagger.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import EdgeModuleResourceAddedObject._

case class EdgeModuleResourceAddedObject (
  resourcename: String)

object EdgeModuleResourceAddedObject {
  import DateTimeCodecs._

  implicit val EdgeModuleResourceAddedObjectCodecJson: CodecJson[EdgeModuleResourceAddedObject] = CodecJson.derive[EdgeModuleResourceAddedObject]
  implicit val EdgeModuleResourceAddedObjectDecoder: EntityDecoder[EdgeModuleResourceAddedObject] = jsonOf[EdgeModuleResourceAddedObject]
  implicit val EdgeModuleResourceAddedObjectEncoder: EntityEncoder[EdgeModuleResourceAddedObject] = jsonEncoderOf[EdgeModuleResourceAddedObject]
}
