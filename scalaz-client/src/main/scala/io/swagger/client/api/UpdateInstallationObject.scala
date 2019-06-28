package io.swagger.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import UpdateInstallationObject._

case class UpdateInstallationObject (
  channels: Option[List[String]])

object UpdateInstallationObject {
  import DateTimeCodecs._

  implicit val UpdateInstallationObjectCodecJson: CodecJson[UpdateInstallationObject] = CodecJson.derive[UpdateInstallationObject]
  implicit val UpdateInstallationObjectDecoder: EntityDecoder[UpdateInstallationObject] = jsonOf[UpdateInstallationObject]
  implicit val UpdateInstallationObjectEncoder: EntityEncoder[UpdateInstallationObject] = jsonEncoderOf[UpdateInstallationObject]
}
