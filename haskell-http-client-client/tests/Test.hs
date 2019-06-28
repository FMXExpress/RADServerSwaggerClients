{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE PartialTypeSignatures #-}

module Main where

import Data.Typeable (Proxy(..))
import Test.Hspec
import Test.Hspec.QuickCheck

import PropMime
import Instances ()

import EMSAPIDocumentation.Model
import EMSAPIDocumentation.MimeTypes

main :: IO ()
main =
  hspec $ modifyMaxSize (const 5) $ do
    describe "JSON instances" $ do
      pure ()
      propMimeEq MimeJSON (Proxy :: Proxy ChannelName)
      propMimeEq MimeJSON (Proxy :: Proxy EdgeModuleAddObject)
      propMimeEq MimeJSON (Proxy :: Proxy EdgeModuleAddedObject)
      propMimeEq MimeJSON (Proxy :: Proxy EdgeModuleObject)
      propMimeEq MimeJSON (Proxy :: Proxy EdgeModuleResourceAddObject)
      propMimeEq MimeJSON (Proxy :: Proxy EdgeModuleResourceAddedObject)
      propMimeEq MimeJSON (Proxy :: Proxy EdgeModuleResourceObject)
      propMimeEq MimeJSON (Proxy :: Proxy EdgeModuleResourceUpdateObject)
      propMimeEq MimeJSON (Proxy :: Proxy EdgeModuleResourceUpdatedObject)
      propMimeEq MimeJSON (Proxy :: Proxy EdgeModuleUpdateObject)
      propMimeEq MimeJSON (Proxy :: Proxy EdgeModuleUpdatedObject)
      propMimeEq MimeJSON (Proxy :: Proxy FieldGroupObject)
      propMimeEq MimeJSON (Proxy :: Proxy FieldInstallationObject)
      propMimeEq MimeJSON (Proxy :: Proxy FieldObject)
      propMimeEq MimeJSON (Proxy :: Proxy FieldObjectFields)
      propMimeEq MimeJSON (Proxy :: Proxy FieldsEdgeModuleObject)
      propMimeEq MimeJSON (Proxy :: Proxy GroupAddObject)
      propMimeEq MimeJSON (Proxy :: Proxy GroupName)
      propMimeEq MimeJSON (Proxy :: Proxy GroupObject)
      propMimeEq MimeJSON (Proxy :: Proxy InstallationAddObject)
      propMimeEq MimeJSON (Proxy :: Proxy InstallationAddedObject)
      propMimeEq MimeJSON (Proxy :: Proxy InstallationObject)
      propMimeEq MimeJSON (Proxy :: Proxy MetaEdgeModuleObject)
      propMimeEq MimeJSON (Proxy :: Proxy MetaGroupObject)
      propMimeEq MimeJSON (Proxy :: Proxy MetaInstallationObject)
      propMimeEq MimeJSON (Proxy :: Proxy MetaObject)
      propMimeEq MimeJSON (Proxy :: Proxy PushDataObject)
      propMimeEq MimeJSON (Proxy :: Proxy PushDataObjectAps)
      propMimeEq MimeJSON (Proxy :: Proxy PushDataObjectExtras)
      propMimeEq MimeJSON (Proxy :: Proxy PushDataObjectGcm)
      propMimeEq MimeJSON (Proxy :: Proxy PushObject)
      propMimeEq MimeJSON (Proxy :: Proxy PushWhereObject)
      propMimeEq MimeJSON (Proxy :: Proxy PushWhereObjectDeviceToken)
      propMimeEq MimeJSON (Proxy :: Proxy UpdateGroupObject)
      propMimeEq MimeJSON (Proxy :: Proxy UpdateInstallationObject)
      propMimeEq MimeJSON (Proxy :: Proxy UpdateObject)
      propMimeEq MimeJSON (Proxy :: Proxy UpdatedGroupObject)
      propMimeEq MimeJSON (Proxy :: Proxy UpdatedInstallationObject)
      propMimeEq MimeJSON (Proxy :: Proxy UpdatedObject)
      propMimeEq MimeJSON (Proxy :: Proxy UserCredentialsObject)
      propMimeEq MimeJSON (Proxy :: Proxy UserObject)
      propMimeEq MimeJSON (Proxy :: Proxy UserSignUpResponseObject)
      propMimeEq MimeJSON (Proxy :: Proxy UserTokenObject)
      propMimeEq MimeJSON (Proxy :: Proxy UseridObject)
      propMimeEq MimeJSON (Proxy :: Proxy VersionObject)
      
