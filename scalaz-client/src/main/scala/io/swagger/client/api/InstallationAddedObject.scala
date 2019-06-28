package io.swagger.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import InstallationAddedObject._

case class InstallationAddedObject (
  id: String)

object InstallationAddedObject {
  import DateTimeCodecs._

  implicit val InstallationAddedObjectCodecJson: CodecJson[InstallationAddedObject] = CodecJson.derive[InstallationAddedObject]
  implicit val InstallationAddedObjectDecoder: EntityDecoder[InstallationAddedObject] = jsonOf[InstallationAddedObject]
  implicit val InstallationAddedObjectEncoder: EntityEncoder[InstallationAddedObject] = jsonEncoderOf[InstallationAddedObject]
}
