package io.swagger.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import UseridObject._

case class UseridObject (
  id: String)

object UseridObject {
  import DateTimeCodecs._

  implicit val UseridObjectCodecJson: CodecJson[UseridObject] = CodecJson.derive[UseridObject]
  implicit val UseridObjectDecoder: EntityDecoder[UseridObject] = jsonOf[UseridObject]
  implicit val UseridObjectEncoder: EntityEncoder[UseridObject] = jsonEncoderOf[UseridObject]
}
