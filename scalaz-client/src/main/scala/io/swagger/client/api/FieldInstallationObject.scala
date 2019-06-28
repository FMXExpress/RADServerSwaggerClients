package io.swagger.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import FieldInstallationObject._

case class FieldInstallationObject (
  name: String,
fields: Option[List[FieldObjectFields]],
custom: Option[Boolean])

object FieldInstallationObject {
  import DateTimeCodecs._

  implicit val FieldInstallationObjectCodecJson: CodecJson[FieldInstallationObject] = CodecJson.derive[FieldInstallationObject]
  implicit val FieldInstallationObjectDecoder: EntityDecoder[FieldInstallationObject] = jsonOf[FieldInstallationObject]
  implicit val FieldInstallationObjectEncoder: EntityEncoder[FieldInstallationObject] = jsonEncoderOf[FieldInstallationObject]
}
