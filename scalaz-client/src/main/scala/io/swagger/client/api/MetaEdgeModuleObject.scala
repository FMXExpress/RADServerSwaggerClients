package io.swagger.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import MetaEdgeModuleObject._

case class MetaEdgeModuleObject (
  creator: String,
created: String,
updated: Option[String])

object MetaEdgeModuleObject {
  import DateTimeCodecs._

  implicit val MetaEdgeModuleObjectCodecJson: CodecJson[MetaEdgeModuleObject] = CodecJson.derive[MetaEdgeModuleObject]
  implicit val MetaEdgeModuleObjectDecoder: EntityDecoder[MetaEdgeModuleObject] = jsonOf[MetaEdgeModuleObject]
  implicit val MetaEdgeModuleObjectEncoder: EntityEncoder[MetaEdgeModuleObject] = jsonEncoderOf[MetaEdgeModuleObject]
}
