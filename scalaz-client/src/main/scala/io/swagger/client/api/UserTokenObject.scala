package io.swagger.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import UserTokenObject._

case class UserTokenObject (
  id: String,
username: String,
meta: MetaObject,
sessiontoken: String)

object UserTokenObject {
  import DateTimeCodecs._

  implicit val UserTokenObjectCodecJson: CodecJson[UserTokenObject] = CodecJson.derive[UserTokenObject]
  implicit val UserTokenObjectDecoder: EntityDecoder[UserTokenObject] = jsonOf[UserTokenObject]
  implicit val UserTokenObjectEncoder: EntityEncoder[UserTokenObject] = jsonEncoderOf[UserTokenObject]
}
