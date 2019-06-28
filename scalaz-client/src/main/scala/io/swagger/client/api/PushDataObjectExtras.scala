package io.swagger.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import PushDataObjectExtras._

case class PushDataObjectExtras (
  message: Option[String])

object PushDataObjectExtras {
  import DateTimeCodecs._

  implicit val PushDataObjectExtrasCodecJson: CodecJson[PushDataObjectExtras] = CodecJson.derive[PushDataObjectExtras]
  implicit val PushDataObjectExtrasDecoder: EntityDecoder[PushDataObjectExtras] = jsonOf[PushDataObjectExtras]
  implicit val PushDataObjectExtrasEncoder: EntityEncoder[PushDataObjectExtras] = jsonEncoderOf[PushDataObjectExtras]
}
