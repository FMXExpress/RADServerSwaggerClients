package io.swagger.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import EdgeModuleResourceObject._

case class EdgeModuleResourceObject (
  resourcename: String,
modulename: String,
moduleid: String,
meta: MetaEdgeModuleObject)

object EdgeModuleResourceObject {
  import DateTimeCodecs._

  implicit val EdgeModuleResourceObjectCodecJson: CodecJson[EdgeModuleResourceObject] = CodecJson.derive[EdgeModuleResourceObject]
  implicit val EdgeModuleResourceObjectDecoder: EntityDecoder[EdgeModuleResourceObject] = jsonOf[EdgeModuleResourceObject]
  implicit val EdgeModuleResourceObjectEncoder: EntityEncoder[EdgeModuleResourceObject] = jsonEncoderOf[EdgeModuleResourceObject]
}
