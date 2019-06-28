package io.swagger.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import PushWhereObject._

case class PushWhereObject (
  deviceType: Option[DeviceType],
deviceToken: Option[PushWhereObjectDeviceToken])

object PushWhereObject {
  import DateTimeCodecs._
  sealed trait DeviceType
  case object Ios extends DeviceType
  case object Android extends DeviceType

  object DeviceType {
    def toDeviceType(s: String): Option[DeviceType] = s match {
      case "Ios" => Some(Ios)
      case "Android" => Some(Android)
      case _ => None
    }

    def fromDeviceType(x: DeviceType): String = x match {
      case Ios => "Ios"
      case Android => "Android"
    }
  }

  implicit val DeviceTypeEnumEncoder: EncodeJson[DeviceType] =
    EncodeJson[DeviceType](is => StringEncodeJson(DeviceType.fromDeviceType(is)))

  implicit val DeviceTypeEnumDecoder: DecodeJson[DeviceType] =
    DecodeJson.optionDecoder[DeviceType](n => n.string.flatMap(jStr => DeviceType.toDeviceType(jStr)), "DeviceType failed to de-serialize")

  implicit val PushWhereObjectCodecJson: CodecJson[PushWhereObject] = CodecJson.derive[PushWhereObject]
  implicit val PushWhereObjectDecoder: EntityDecoder[PushWhereObject] = jsonOf[PushWhereObject]
  implicit val PushWhereObjectEncoder: EntityEncoder[PushWhereObject] = jsonEncoderOf[PushWhereObject]
}
