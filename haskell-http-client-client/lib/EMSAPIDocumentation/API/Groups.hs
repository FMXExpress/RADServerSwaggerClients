{-
   EMS API Documentation

   Enterprise Mobility Services API      [Learn about EMS](https://www.embarcadero.com/products/rad-studio/enterprise-mobility-services)      EMS (Enterprise Mobility Services) offers a Mobile Enterprise Application Platform (MEAP)      TurnKey Middleware for Interconnected Distributed Apps

   OpenAPI spec version: 2.0
   EMS API Documentation API version: 0.0.0
   Generated by Swagger Codegen (https://github.com/swagger-api/swagger-codegen.git)
-}

{-|
Module : EMSAPIDocumentation.API.Groups
-}

{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MonoLocalBinds #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing -fno-warn-unused-binds -fno-warn-unused-imports #-}

module EMSAPIDocumentation.API.Groups where

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


-- ** Groups

-- *** addGroup

-- | @POST \/groups@
-- 
-- Add Group
-- 
--  |      Used to add a new `Group` object to the EMS database.
-- 
-- Note: Has 'Produces' instances, but no response schema
-- 
addGroup 
  :: (Consumes AddGroup MimeJSON, MimeRender MimeJSON GroupAddObject)
  => GroupAddObject -- ^ "body" -  Object to sign up a new EMS User in the EMS Server
  -> EMSAPIDocumentationRequest AddGroup MimeJSON res MimeJSON
addGroup body =
  _mkRequest "POST" ["/groups"]
    `setBodyParam` body

data AddGroup 

-- | /Body Param/ "body" - Object to sign up a new EMS User in the EMS Server
instance HasBodyParam AddGroup GroupAddObject 
instance HasOptionalParam AddGroup XEmbarcaderoApplicationId where
  applyOptionalParam req (XEmbarcaderoApplicationId xs) =
    req `setHeader` toHeader ("X-Embarcadero-Application-Id", xs)
instance HasOptionalParam AddGroup XEmbarcaderoAppSecret where
  applyOptionalParam req (XEmbarcaderoAppSecret xs) =
    req `setHeader` toHeader ("X-Embarcadero-App-Secret", xs)
instance HasOptionalParam AddGroup XEmbarcaderoMasterSecret where
  applyOptionalParam req (XEmbarcaderoMasterSecret xs) =
    req `setHeader` toHeader ("X-Embarcadero-Master-Secret", xs)

-- | @application/json@
instance Consumes AddGroup MimeJSON

-- | @application/json@
instance Produces AddGroup MimeJSON


-- *** deleteGroup

-- | @DELETE \/groups\/{item}@
-- 
-- Delete Group
-- 
--  |      Used to delete a `Group`. **item** is the unique EMS Group name in the EMS database.
-- 
deleteGroup 
  :: Item -- ^ "item" -  A group name
  -> EMSAPIDocumentationRequest DeleteGroup MimeNoContent NoContent MimeNoContent
deleteGroup (Item item) =
  _mkRequest "DELETE" ["/groups/",toPath item]

data DeleteGroup  
instance HasOptionalParam DeleteGroup XEmbarcaderoApplicationId where
  applyOptionalParam req (XEmbarcaderoApplicationId xs) =
    req `setHeader` toHeader ("X-Embarcadero-Application-Id", xs)
instance HasOptionalParam DeleteGroup XEmbarcaderoAppSecret where
  applyOptionalParam req (XEmbarcaderoAppSecret xs) =
    req `setHeader` toHeader ("X-Embarcadero-App-Secret", xs)
instance HasOptionalParam DeleteGroup XEmbarcaderoMasterSecret where
  applyOptionalParam req (XEmbarcaderoMasterSecret xs) =
    req `setHeader` toHeader ("X-Embarcadero-Master-Secret", xs)

-- *** getGroup

-- | @GET \/groups\/{item}@
-- 
-- Get Group
-- 
--  |      Used to retrieve all data from a `Group`. **item** is the unique EMS Group name in the EMS database.
-- 
getGroup 
  :: Item -- ^ "item" -  A group name
  -> EMSAPIDocumentationRequest GetGroup MimeNoContent GroupObject MimeJSON
getGroup (Item item) =
  _mkRequest "GET" ["/groups/",toPath item]

data GetGroup  
instance HasOptionalParam GetGroup XEmbarcaderoApplicationId where
  applyOptionalParam req (XEmbarcaderoApplicationId xs) =
    req `setHeader` toHeader ("X-Embarcadero-Application-Id", xs)
instance HasOptionalParam GetGroup XEmbarcaderoAppSecret where
  applyOptionalParam req (XEmbarcaderoAppSecret xs) =
    req `setHeader` toHeader ("X-Embarcadero-App-Secret", xs)
instance HasOptionalParam GetGroup XEmbarcaderoMasterSecret where
  applyOptionalParam req (XEmbarcaderoMasterSecret xs) =
    req `setHeader` toHeader ("X-Embarcadero-Master-Secret", xs)
-- | @application/json@
instance Produces GetGroup MimeJSON


-- *** getGroupFields

-- | @GET \/groups\/fields@
-- 
-- Get Fields
-- 
--  |      Used to retrieve all the `field names` of the EMS Group (including the custom fields).
-- 
getGroupFields 
  :: EMSAPIDocumentationRequest GetGroupFields MimeNoContent [FieldGroupObject] MimeJSON
getGroupFields =
  _mkRequest "GET" ["/groups/fields"]

data GetGroupFields  
instance HasOptionalParam GetGroupFields XEmbarcaderoApplicationId where
  applyOptionalParam req (XEmbarcaderoApplicationId xs) =
    req `setHeader` toHeader ("X-Embarcadero-Application-Id", xs)
instance HasOptionalParam GetGroupFields XEmbarcaderoAppSecret where
  applyOptionalParam req (XEmbarcaderoAppSecret xs) =
    req `setHeader` toHeader ("X-Embarcadero-App-Secret", xs)
instance HasOptionalParam GetGroupFields XEmbarcaderoMasterSecret where
  applyOptionalParam req (XEmbarcaderoMasterSecret xs) =
    req `setHeader` toHeader ("X-Embarcadero-Master-Secret", xs)
-- | @application/json@
instance Produces GetGroupFields MimeJSON


-- *** getGroups

-- | @GET \/groups@
-- 
-- Get Groups
-- 
--  |      Used to retrieve all data from `Groups`.      Optional query param of **skip, limit, order, where** determines       size of returned array, filtered and order by.
-- 
getGroups 
  :: EMSAPIDocumentationRequest GetGroups MimeNoContent [GroupObject] MimeJSON
getGroups =
  _mkRequest "GET" ["/groups"]

data GetGroups  
instance HasOptionalParam GetGroups XEmbarcaderoApplicationId where
  applyOptionalParam req (XEmbarcaderoApplicationId xs) =
    req `setHeader` toHeader ("X-Embarcadero-Application-Id", xs)
instance HasOptionalParam GetGroups XEmbarcaderoAppSecret where
  applyOptionalParam req (XEmbarcaderoAppSecret xs) =
    req `setHeader` toHeader ("X-Embarcadero-App-Secret", xs)
instance HasOptionalParam GetGroups XEmbarcaderoMasterSecret where
  applyOptionalParam req (XEmbarcaderoMasterSecret xs) =
    req `setHeader` toHeader ("X-Embarcadero-Master-Secret", xs)

-- | /Optional Param/ "skip" - users skipped
instance HasOptionalParam GetGroups Skip where
  applyOptionalParam req (Skip xs) =
    req `setQuery` toQuery ("skip", Just xs)

-- | /Optional Param/ "limit" - maximum number of results to return
instance HasOptionalParam GetGroups Limit where
  applyOptionalParam req (Limit xs) =
    req `setQuery` toQuery ("limit", Just xs)

-- | /Optional Param/ "order" - order ascending or descending (asc, desc)
instance HasOptionalParam GetGroups Order where
  applyOptionalParam req (Order xs) =
    req `setQuery` toQuery ("order", Just xs)

-- | /Optional Param/ "where" - filter operators (lt, lte, gt, gte, eq, neq, like, nlike)
instance HasOptionalParam GetGroups ParamWhere where
  applyOptionalParam req (ParamWhere xs) =
    req `setQuery` toQuery ("where", Just xs)
-- | @application/json@
instance Produces GetGroups MimeJSON


-- *** updateGroup

-- | @PUT \/groups\/{item}@
-- 
-- Update Group
-- 
--  |      Used to update a `Group`. **item** is the unique EMS Group name in the EMS database.
-- 
updateGroup 
  :: (Consumes UpdateGroup MimeJSON, MimeRender MimeJSON UpdateGroupObject)
  => Item -- ^ "item" -  A group name
  -> UpdateGroupObject -- ^ "body" -  Object to sign up a new EMS User in the EMS Server
  -> EMSAPIDocumentationRequest UpdateGroup MimeJSON UpdatedGroupObject MimeJSON
updateGroup (Item item) body =
  _mkRequest "PUT" ["/groups/",toPath item]
    `setBodyParam` body

data UpdateGroup 

-- | /Body Param/ "body" - Object to sign up a new EMS User in the EMS Server
instance HasBodyParam UpdateGroup UpdateGroupObject 
instance HasOptionalParam UpdateGroup XEmbarcaderoApplicationId where
  applyOptionalParam req (XEmbarcaderoApplicationId xs) =
    req `setHeader` toHeader ("X-Embarcadero-Application-Id", xs)
instance HasOptionalParam UpdateGroup XEmbarcaderoAppSecret where
  applyOptionalParam req (XEmbarcaderoAppSecret xs) =
    req `setHeader` toHeader ("X-Embarcadero-App-Secret", xs)
instance HasOptionalParam UpdateGroup XEmbarcaderoMasterSecret where
  applyOptionalParam req (XEmbarcaderoMasterSecret xs) =
    req `setHeader` toHeader ("X-Embarcadero-Master-Secret", xs)

-- | @application/json@
instance Consumes UpdateGroup MimeJSON

-- | @application/json@
instance Produces UpdateGroup MimeJSON

