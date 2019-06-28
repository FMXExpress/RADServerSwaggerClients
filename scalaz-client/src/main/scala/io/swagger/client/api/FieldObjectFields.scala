package io.swagger.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import FieldObjectFields._

case class FieldObjectFields (
  name: Option[String])

object FieldObjectFields {
  import DateTimeCodecs._

  implicit val FieldObjectFieldsCodecJson: CodecJson[FieldObjectFields] = CodecJson.derive[FieldObjectFields]
  implicit val FieldObjectFieldsDecoder: EntityDecoder[FieldObjectFields] = jsonOf[FieldObjectFields]
  implicit val FieldObjectFieldsEncoder: EntityEncoder[FieldObjectFields] = jsonEncoderOf[FieldObjectFields]
}
