package io.swagger.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import EdgeModuleAddedObject._

case class EdgeModuleAddedObject (
  id: String,
modulename: String)

object EdgeModuleAddedObject {
  import DateTimeCodecs._

  implicit val EdgeModuleAddedObjectCodecJson: CodecJson[EdgeModuleAddedObject] = CodecJson.derive[EdgeModuleAddedObject]
  implicit val EdgeModuleAddedObjectDecoder: EntityDecoder[EdgeModuleAddedObject] = jsonOf[EdgeModuleAddedObject]
  implicit val EdgeModuleAddedObjectEncoder: EntityEncoder[EdgeModuleAddedObject] = jsonEncoderOf[EdgeModuleAddedObject]
}
