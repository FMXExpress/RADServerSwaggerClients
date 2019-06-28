package io.swagger.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import PushDataObject._

case class PushDataObject (
  gcm: Option[PushDataObjectGcm],
aps: Option[PushDataObjectAps],
extras: Option[PushDataObjectExtras])

object PushDataObject {
  import DateTimeCodecs._

  implicit val PushDataObjectCodecJson: CodecJson[PushDataObject] = CodecJson.derive[PushDataObject]
  implicit val PushDataObjectDecoder: EntityDecoder[PushDataObject] = jsonOf[PushDataObject]
  implicit val PushDataObjectEncoder: EntityEncoder[PushDataObject] = jsonEncoderOf[PushDataObject]
}
