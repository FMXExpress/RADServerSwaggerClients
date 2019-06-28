package io.swagger.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import PushObject._

case class PushObject (
  data: PushDataObject,
channels: Option[List[String]],
where: PushWhereObject)

object PushObject {
  import DateTimeCodecs._

  implicit val PushObjectCodecJson: CodecJson[PushObject] = CodecJson.derive[PushObject]
  implicit val PushObjectDecoder: EntityDecoder[PushObject] = jsonOf[PushObject]
  implicit val PushObjectEncoder: EntityEncoder[PushObject] = jsonEncoderOf[PushObject]
}
