package io.swagger.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import MetaObject._

case class MetaObject (
  creator: String,
created: String,
updated: Option[String])

object MetaObject {
  import DateTimeCodecs._

  implicit val MetaObjectCodecJson: CodecJson[MetaObject] = CodecJson.derive[MetaObject]
  implicit val MetaObjectDecoder: EntityDecoder[MetaObject] = jsonOf[MetaObject]
  implicit val MetaObjectEncoder: EntityEncoder[MetaObject] = jsonEncoderOf[MetaObject]
}
