package io.swagger.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import InstallationObject._

case class InstallationObject (
  id: String,
deviceToken: String,
deviceType: DeviceType,
meta: MetaInstallationObject,
channels: Option[List[String]])

object InstallationObject {
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

  implicit val InstallationObjectCodecJson: CodecJson[InstallationObject] = CodecJson.derive[InstallationObject]
  implicit val InstallationObjectDecoder: EntityDecoder[InstallationObject] = jsonOf[InstallationObject]
  implicit val InstallationObjectEncoder: EntityEncoder[InstallationObject] = jsonEncoderOf[InstallationObject]
}
