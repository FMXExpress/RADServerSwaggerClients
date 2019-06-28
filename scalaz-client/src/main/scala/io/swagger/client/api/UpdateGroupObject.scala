package io.swagger.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import UpdateGroupObject._

case class UpdateGroupObject (
  fieldName: Option[String],
users: Option[List[String]])

object UpdateGroupObject {
  import DateTimeCodecs._

  implicit val UpdateGroupObjectCodecJson: CodecJson[UpdateGroupObject] = CodecJson.derive[UpdateGroupObject]
  implicit val UpdateGroupObjectDecoder: EntityDecoder[UpdateGroupObject] = jsonOf[UpdateGroupObject]
  implicit val UpdateGroupObjectEncoder: EntityEncoder[UpdateGroupObject] = jsonEncoderOf[UpdateGroupObject]
}
