package io.swagger.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import MetaGroupObject._

case class MetaGroupObject (
  creator: String,
created: String,
updated: Option[String])

object MetaGroupObject {
  import DateTimeCodecs._

  implicit val MetaGroupObjectCodecJson: CodecJson[MetaGroupObject] = CodecJson.derive[MetaGroupObject]
  implicit val MetaGroupObjectDecoder: EntityDecoder[MetaGroupObject] = jsonOf[MetaGroupObject]
  implicit val MetaGroupObjectEncoder: EntityEncoder[MetaGroupObject] = jsonEncoderOf[MetaGroupObject]
}
