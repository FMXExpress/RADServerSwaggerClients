package io.swagger.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import FieldGroupObject._

case class FieldGroupObject (
  name: String,
fields: Option[List[FieldObjectFields]],
custom: Option[Boolean])

object FieldGroupObject {
  import DateTimeCodecs._

  implicit val FieldGroupObjectCodecJson: CodecJson[FieldGroupObject] = CodecJson.derive[FieldGroupObject]
  implicit val FieldGroupObjectDecoder: EntityDecoder[FieldGroupObject] = jsonOf[FieldGroupObject]
  implicit val FieldGroupObjectEncoder: EntityEncoder[FieldGroupObject] = jsonEncoderOf[FieldGroupObject]
}
