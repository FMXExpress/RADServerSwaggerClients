package io.swagger.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import UserSignUpResponseObject._

case class UserSignUpResponseObject (
  id: String,
sessionToken: String)

object UserSignUpResponseObject {
  import DateTimeCodecs._

  implicit val UserSignUpResponseObjectCodecJson: CodecJson[UserSignUpResponseObject] = CodecJson.derive[UserSignUpResponseObject]
  implicit val UserSignUpResponseObjectDecoder: EntityDecoder[UserSignUpResponseObject] = jsonOf[UserSignUpResponseObject]
  implicit val UserSignUpResponseObjectEncoder: EntityEncoder[UserSignUpResponseObject] = jsonEncoderOf[UserSignUpResponseObject]
}
