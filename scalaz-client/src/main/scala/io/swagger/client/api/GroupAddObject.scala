package io.swagger.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import GroupAddObject._

case class GroupAddObject (
  groupname: String)

object GroupAddObject {
  import DateTimeCodecs._

  implicit val GroupAddObjectCodecJson: CodecJson[GroupAddObject] = CodecJson.derive[GroupAddObject]
  implicit val GroupAddObjectDecoder: EntityDecoder[GroupAddObject] = jsonOf[GroupAddObject]
  implicit val GroupAddObjectEncoder: EntityEncoder[GroupAddObject] = jsonEncoderOf[GroupAddObject]
}
