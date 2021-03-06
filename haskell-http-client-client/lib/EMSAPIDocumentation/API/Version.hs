{-
   EMS API Documentation

   Enterprise Mobility Services API      [Learn about EMS](https://www.embarcadero.com/products/rad-studio/enterprise-mobility-services)      EMS (Enterprise Mobility Services) offers a Mobile Enterprise Application Platform (MEAP)      TurnKey Middleware for Interconnected Distributed Apps

   OpenAPI spec version: 2.0
   EMS API Documentation API version: 0.0.0
   Generated by Swagger Codegen (https://github.com/swagger-api/swagger-codegen.git)
-}

{-|
Module : EMSAPIDocumentation.API.Version
-}

{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MonoLocalBinds #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing -fno-warn-unused-binds -fno-warn-unused-imports #-}

module EMSAPIDocumentation.API.Version where

import EMSAPIDocumentation.Core
import EMSAPIDocumentation.MimeTypes
import EMSAPIDocumentation.Model as M

import qualified Data.Aeson as A
import qualified Data.ByteString as B
import qualified Data.ByteString.Lazy as BL
import qualified Data.Data as P (Typeable, TypeRep, typeOf, typeRep)
import qualified Data.Foldable as P
import qualified Data.Map as Map
import qualified Data.Maybe as P
import qualified Data.Proxy as P (Proxy(..))
import qualified Data.Set as Set
import qualified Data.String as P
import qualified Data.Text as T
import qualified Data.Text.Encoding as T
import qualified Data.Text.Lazy as TL
import qualified Data.Text.Lazy.Encoding as TL
import qualified Data.Time as TI
import qualified Network.HTTP.Client.MultipartFormData as NH
import qualified Network.HTTP.Media as ME
import qualified Network.HTTP.Types as NH
import qualified Web.FormUrlEncoded as WH
import qualified Web.HttpApiData as WH

import Data.Text (Text)
import GHC.Base ((<|>))

import Prelude ((==),(/=),($), (.),(<$>),(<*>),(>>=),Maybe(..),Bool(..),Char,Double,FilePath,Float,Int,Integer,String,fmap,undefined,mempty,maybe,pure,Monad,Applicative,Functor)
import qualified Prelude as P

-- * Operations


-- ** Version

-- *** getVersion

-- | @GET \/version@
-- 
-- Get version
-- 
--  |      Used to retrieve the `Version` of the EMS Server.
-- 
getVersion 
  :: EMSAPIDocumentationRequest GetVersion MimeNoContent VersionObject MimeJSON
getVersion =
  _mkRequest "GET" ["/version"]

data GetVersion  
instance HasOptionalParam GetVersion XEmbarcaderoApplicationId where
  applyOptionalParam req (XEmbarcaderoApplicationId xs) =
    req `setHeader` toHeader ("X-Embarcadero-Application-Id", xs)
instance HasOptionalParam GetVersion XEmbarcaderoAppSecret where
  applyOptionalParam req (XEmbarcaderoAppSecret xs) =
    req `setHeader` toHeader ("X-Embarcadero-App-Secret", xs)
instance HasOptionalParam GetVersion XEmbarcaderoMasterSecret where
  applyOptionalParam req (XEmbarcaderoMasterSecret xs) =
    req `setHeader` toHeader ("X-Embarcadero-Master-Secret", xs)
-- | @application/json@
instance Produces GetVersion MimeJSON

