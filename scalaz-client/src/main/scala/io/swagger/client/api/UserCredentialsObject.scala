package io.swagger.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import UserCredentialsObject._

case class UserCredentialsObject (
  username: String,
password: String)

object UserCredentialsObject {
  import DateTimeCodecs._

  implicit val UserCredentialsObjectCodecJson: CodecJson[UserCredentialsObject] = CodecJson.derive[UserCredentialsObject]
  implicit val UserCredentialsObjectDecoder: EntityDecoder[UserCredentialsObject] = jsonOf[UserCredentialsObject]
  implicit val UserCredentialsObjectEncoder: EntityEncoder[UserCredentialsObject] = jsonEncoderOf[UserCredentialsObject]
}
