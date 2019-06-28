package io.swagger.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import MetaInstallationObject._

case class MetaInstallationObject (
  creator: String,
created: String,
updated: Option[String])

object MetaInstallationObject {
  import DateTimeCodecs._

  implicit val MetaInstallationObjectCodecJson: CodecJson[MetaInstallationObject] = CodecJson.derive[MetaInstallationObject]
  implicit val MetaInstallationObjectDecoder: EntityDecoder[MetaInstallationObject] = jsonOf[MetaInstallationObject]
  implicit val MetaInstallationObjectEncoder: EntityEncoder[MetaInstallationObject] = jsonEncoderOf[MetaInstallationObject]
}
