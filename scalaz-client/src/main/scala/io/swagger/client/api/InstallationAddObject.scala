package io.swagger.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import InstallationAddObject._

case class InstallationAddObject (
  deviceToken: String,
deviceType: String,
channels: Option[List[String]])

object InstallationAddObject {
  import DateTimeCodecs._

  implicit val InstallationAddObjectCodecJson: CodecJson[InstallationAddObject] = CodecJson.derive[InstallationAddObject]
  implicit val InstallationAddObjectDecoder: EntityDecoder[InstallationAddObject] = jsonOf[InstallationAddObject]
  implicit val InstallationAddObjectEncoder: EntityEncoder[InstallationAddObject] = jsonEncoderOf[InstallationAddObject]
}
