package io.swagger.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import GroupName._

case class GroupName (
  
object GroupName {
  import DateTimeCodecs._

  implicit val GroupNameCodecJson: CodecJson[GroupName] = CodecJson.derive[GroupName]
  implicit val GroupNameDecoder: EntityDecoder[GroupName] = jsonOf[GroupName]
  implicit val GroupNameEncoder: EntityEncoder[GroupName] = jsonEncoderOf[GroupName]
}
