package io.swagger.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import UserObject._

case class UserObject (
  id: String,
username: String,
meta: MetaObject)

object UserObject {
  import DateTimeCodecs._

  implicit val UserObjectCodecJson: CodecJson[UserObject] = CodecJson.derive[UserObject]
  implicit val UserObjectDecoder: EntityDecoder[UserObject] = jsonOf[UserObject]
  implicit val UserObjectEncoder: EntityEncoder[UserObject] = jsonEncoderOf[UserObject]
}
