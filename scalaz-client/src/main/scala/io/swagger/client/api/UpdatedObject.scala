package io.swagger.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import UpdatedObject._

case class UpdatedObject (
  updated: String)

object UpdatedObject {
  import DateTimeCodecs._

  implicit val UpdatedObjectCodecJson: CodecJson[UpdatedObject] = CodecJson.derive[UpdatedObject]
  implicit val UpdatedObjectDecoder: EntityDecoder[UpdatedObject] = jsonOf[UpdatedObject]
  implicit val UpdatedObjectEncoder: EntityEncoder[UpdatedObject] = jsonEncoderOf[UpdatedObject]
}
