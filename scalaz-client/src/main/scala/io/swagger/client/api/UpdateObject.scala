package io.swagger.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import UpdateObject._

case class UpdateObject (
  fieldName: Option[String])

object UpdateObject {
  import DateTimeCodecs._

  implicit val UpdateObjectCodecJson: CodecJson[UpdateObject] = CodecJson.derive[UpdateObject]
  implicit val UpdateObjectDecoder: EntityDecoder[UpdateObject] = jsonOf[UpdateObject]
  implicit val UpdateObjectEncoder: EntityEncoder[UpdateObject] = jsonEncoderOf[UpdateObject]
}
