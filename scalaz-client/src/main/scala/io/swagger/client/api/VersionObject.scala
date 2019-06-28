package io.swagger.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import VersionObject._

case class VersionObject (
  version: Option[String],
server: Option[String])

object VersionObject {
  import DateTimeCodecs._

  implicit val VersionObjectCodecJson: CodecJson[VersionObject] = CodecJson.derive[VersionObject]
  implicit val VersionObjectDecoder: EntityDecoder[VersionObject] = jsonOf[VersionObject]
  implicit val VersionObjectEncoder: EntityEncoder[VersionObject] = jsonEncoderOf[VersionObject]
}
