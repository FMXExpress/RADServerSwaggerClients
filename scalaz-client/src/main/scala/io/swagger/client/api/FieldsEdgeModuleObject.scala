package io.swagger.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import FieldsEdgeModuleObject._

case class FieldsEdgeModuleObject (
  name: String,
fields: Option[List[FieldObjectFields]],
custom: Option[Boolean])

object FieldsEdgeModuleObject {
  import DateTimeCodecs._

  implicit val FieldsEdgeModuleObjectCodecJson: CodecJson[FieldsEdgeModuleObject] = CodecJson.derive[FieldsEdgeModuleObject]
  implicit val FieldsEdgeModuleObjectDecoder: EntityDecoder[FieldsEdgeModuleObject] = jsonOf[FieldsEdgeModuleObject]
  implicit val FieldsEdgeModuleObjectEncoder: EntityEncoder[FieldsEdgeModuleObject] = jsonEncoderOf[FieldsEdgeModuleObject]
}
