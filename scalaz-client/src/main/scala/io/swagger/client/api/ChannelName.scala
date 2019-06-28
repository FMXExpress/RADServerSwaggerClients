package io.swagger.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import ChannelName._

case class ChannelName (
  
object ChannelName {
  import DateTimeCodecs._

  implicit val ChannelNameCodecJson: CodecJson[ChannelName] = CodecJson.derive[ChannelName]
  implicit val ChannelNameDecoder: EntityDecoder[ChannelName] = jsonOf[ChannelName]
  implicit val ChannelNameEncoder: EntityEncoder[ChannelName] = jsonEncoderOf[ChannelName]
}
