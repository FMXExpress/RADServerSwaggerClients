package io.swagger.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import UpdatedInstallationObject._

case class UpdatedInstallationObject (
  updated: String)

object UpdatedInstallationObject {
  import DateTimeCodecs._

  implicit val UpdatedInstallationObjectCodecJson: CodecJson[UpdatedInstallationObject] = CodecJson.derive[UpdatedInstallationObject]
  implicit val UpdatedInstallationObjectDecoder: EntityDecoder[UpdatedInstallationObject] = jsonOf[UpdatedInstallationObject]
  implicit val UpdatedInstallationObjectEncoder: EntityEncoder[UpdatedInstallationObject] = jsonEncoderOf[UpdatedInstallationObject]
}
