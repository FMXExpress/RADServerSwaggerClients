package io.swagger.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import PushDataObjectGcm._

case class PushDataObjectGcm (
  message: Option[String],
title: Option[String])

object PushDataObjectGcm {
  import DateTimeCodecs._

  implicit val PushDataObjectGcmCodecJson: CodecJson[PushDataObjectGcm] = CodecJson.derive[PushDataObjectGcm]
  implicit val PushDataObjectGcmDecoder: EntityDecoder[PushDataObjectGcm] = jsonOf[PushDataObjectGcm]
  implicit val PushDataObjectGcmEncoder: EntityEncoder[PushDataObjectGcm] = jsonEncoderOf[PushDataObjectGcm]
}
