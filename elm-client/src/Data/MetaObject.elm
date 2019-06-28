{-
   EMS API Documentation
   Enterprise Mobility Services API      [Learn about EMS](https://www.embarcadero.com/products/rad-studio/enterprise-mobility-services)      EMS (Enterprise Mobility Services) offers a Mobile Enterprise Application Platform (MEAP)      TurnKey Middleware for Interconnected Distributed Apps

   OpenAPI spec version: 0.0.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.MetaObject exposing (MetaObject, metaObjectDecoder, metaObjectEncoder)

import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)




type alias MetaObject =
    { creator : String
    , created : String
    , updated : Maybe String
    }


metaObjectDecoder : Decoder MetaObject
metaObjectDecoder =
    decode MetaObject
        |> required "creator" Decode.string
        |> required "created" Decode.string
        |> optional "updated" (Decode.nullable Decode.string) Nothing



metaObjectEncoder : MetaObject -> Encode.Value
metaObjectEncoder model =
    Encode.object
        [ ( "creator", Encode.string model.creator )
        , ( "created", Encode.string model.created )
        , ( "updated", withDefault Encode.null (map Encode.string model.updated) )
        ]

