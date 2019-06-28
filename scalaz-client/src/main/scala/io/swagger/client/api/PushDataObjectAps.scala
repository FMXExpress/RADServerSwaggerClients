package io.swagger.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import PushDataObjectAps._

case class PushDataObjectAps (
  alert: Option[String],
badge: Option[String],
sound: Option[String])

object PushDataObjectAps {
  import DateTimeCodecs._

  implicit val PushDataObjectApsCodecJson: CodecJson[PushDataObjectAps] = CodecJson.derive[PushDataObjectAps]
  implicit val PushDataObjectApsDecoder: EntityDecoder[PushDataObjectAps] = jsonOf[PushDataObjectAps]
  implicit val PushDataObjectApsEncoder: EntityEncoder[PushDataObjectAps] = jsonEncoderOf[PushDataObjectAps]
}
