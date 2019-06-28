package io.swagger.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import GroupObject._

case class GroupObject (
  name: String,
meta: MetaGroupObject,
users: Option[List[String]])

object GroupObject {
  import DateTimeCodecs._

  implicit val GroupObjectCodecJson: CodecJson[GroupObject] = CodecJson.derive[GroupObject]
  implicit val GroupObjectDecoder: EntityDecoder[GroupObject] = jsonOf[GroupObject]
  implicit val GroupObjectEncoder: EntityEncoder[GroupObject] = jsonEncoderOf[GroupObject]
}
