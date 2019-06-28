package io.swagger.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import FieldObject._

case class FieldObject (
  name: String,
fields: Option[List[FieldObjectFields]],
custom: Option[Boolean])

object FieldObject {
  import DateTimeCodecs._

  implicit val FieldObjectCodecJson: CodecJson[FieldObject] = CodecJson.derive[FieldObject]
  implicit val FieldObjectDecoder: EntityDecoder[FieldObject] = jsonOf[FieldObject]
  implicit val FieldObjectEncoder: EntityEncoder[FieldObject] = jsonEncoderOf[FieldObject]
}
