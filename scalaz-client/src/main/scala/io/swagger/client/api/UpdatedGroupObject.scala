package io.swagger.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import UpdatedGroupObject._

case class UpdatedGroupObject (
  updated: String)

object UpdatedGroupObject {
  import DateTimeCodecs._

  implicit val UpdatedGroupObjectCodecJson: CodecJson[UpdatedGroupObject] = CodecJson.derive[UpdatedGroupObject]
  implicit val UpdatedGroupObjectDecoder: EntityDecoder[UpdatedGroupObject] = jsonOf[UpdatedGroupObject]
  implicit val UpdatedGroupObjectEncoder: EntityEncoder[UpdatedGroupObject] = jsonEncoderOf[UpdatedGroupObject]
}
