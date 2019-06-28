{-
   EMS API Documentation
   Enterprise Mobility Services API      [Learn about EMS](https://www.embarcadero.com/products/rad-studio/enterprise-mobility-services)      EMS (Enterprise Mobility Services) offers a Mobile Enterprise Application Platform (MEAP)      TurnKey Middleware for Interconnected Distributed Apps

   OpenAPI spec version: 0.0.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.PushWhereObject exposing (PushWhereObject, DeviceType(..), pushWhereObjectDecoder, pushWhereObjectEncoder)

import Data.PushWhereObjectDeviceToken exposing (PushWhereObjectDeviceToken, pushWhereObjectDeviceTokenDecoder, pushWhereObjectDeviceTokenEncoder)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)




type alias PushWhereObject =
    { deviceType : Maybe DeviceType
    , deviceToken : Maybe PushWhereObjectDeviceToken
    }


type DeviceType
    = Ios
    | Android



pushWhereObjectDecoder : Decoder PushWhereObject
pushWhereObjectDecoder =
    decode PushWhereObject
        |> optional "deviceType" (Decode.nullable deviceTypeDecoder) Nothing
        |> optional "deviceToken" (Decode.nullable pushWhereObjectDeviceTokenDecoder) Nothing



pushWhereObjectEncoder : PushWhereObject -> Encode.Value
pushWhereObjectEncoder model =
    Encode.object
        [ ( "deviceType", withDefault Encode.null (map deviceTypeEncoder model.deviceType) )
        , ( "deviceToken", withDefault Encode.null (map pushWhereObjectDeviceTokenEncoder model.deviceToken) )
        ]



deviceTypeDecoder : Decoder DeviceType
deviceTypeDecoder =
    Decode.string
        |> Decode.andThen (\str ->
            case str of
                "ios" ->
                    Decode.succeed Ios

                "android" ->
                    Decode.succeed Android

                other ->
                    Decode.fail <| "Unknown type: " ++ other
        )


deviceTypeEncoder : DeviceType -> Encode.Value
deviceTypeEncoder model =
    case model of
        Ios ->
            Encode.string "ios"

        Android ->
            Encode.string "android"


