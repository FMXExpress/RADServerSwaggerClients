package io.swagger.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import PushWhereObjectDeviceToken._

case class PushWhereObjectDeviceToken (
  in: List[String])

object PushWhereObjectDeviceToken {
  import DateTimeCodecs._

  implicit val PushWhereObjectDeviceTokenCodecJson: CodecJson[PushWhereObjectDeviceToken] = CodecJson.derive[PushWhereObjectDeviceToken]
  implicit val PushWhereObjectDeviceTokenDecoder: EntityDecoder[PushWhereObjectDeviceToken] = jsonOf[PushWhereObjectDeviceToken]
  implicit val PushWhereObjectDeviceTokenEncoder: EntityEncoder[PushWhereObjectDeviceToken] = jsonEncoderOf[PushWhereObjectDeviceToken]
}
