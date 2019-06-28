{-# OPTIONS_GHC -fno-warn-unused-imports #-}

module Instances where

import EMSAPIDocumentation.Model
import EMSAPIDocumentation.Core

import qualified Data.Aeson as A
import qualified Data.ByteString.Lazy as BL
import qualified Data.HashMap.Strict as HM
import qualified Data.Set as Set
import qualified Data.Text as T
import qualified Data.Time as TI
import qualified Data.Vector as V

import Control.Monad
import Data.Char (isSpace)
import Data.List (sort)
import Test.QuickCheck

import ApproxEq

instance Arbitrary T.Text where
  arbitrary = T.pack <$> arbitrary

instance Arbitrary TI.Day where
  arbitrary = TI.ModifiedJulianDay . (2000 +) <$> arbitrary
  shrink = (TI.ModifiedJulianDay <$>) . shrink . TI.toModifiedJulianDay

instance Arbitrary TI.UTCTime where
  arbitrary =
    TI.UTCTime <$> arbitrary <*> (TI.secondsToDiffTime <$> choose (0, 86401))

instance Arbitrary BL.ByteString where
    arbitrary = BL.pack <$> arbitrary
    shrink xs = BL.pack <$> shrink (BL.unpack xs)

instance Arbitrary ByteArray where
    arbitrary = ByteArray <$> arbitrary
    shrink (ByteArray xs) = ByteArray <$> shrink xs

instance Arbitrary Binary where
    arbitrary = Binary <$> arbitrary
    shrink (Binary xs) = Binary <$> shrink xs

instance Arbitrary DateTime where
    arbitrary = DateTime <$> arbitrary
    shrink (DateTime xs) = DateTime <$> shrink xs

instance Arbitrary Date where
    arbitrary = Date <$> arbitrary
    shrink (Date xs) = Date <$> shrink xs

-- | A naive Arbitrary instance for A.Value:
instance Arbitrary A.Value where
  arbitrary = frequency [(3, simpleTypes), (1, arrayTypes), (1, objectTypes)]
    where
      simpleTypes :: Gen A.Value
      simpleTypes =
        frequency
          [ (1, return A.Null)
          , (2, liftM A.Bool (arbitrary :: Gen Bool))
          , (2, liftM (A.Number . fromIntegral) (arbitrary :: Gen Int))
          , (2, liftM (A.String . T.pack) (arbitrary :: Gen String))
          ]
      mapF (k, v) = (T.pack k, v)
      simpleAndArrays = frequency [(1, sized sizedArray), (4, simpleTypes)]
      arrayTypes = sized sizedArray
      objectTypes = sized sizedObject
      sizedArray n = liftM (A.Array . V.fromList) $ replicateM n simpleTypes
      sizedObject n =
        liftM (A.object . map mapF) $
        replicateM n $ (,) <$> (arbitrary :: Gen String) <*> simpleAndArrays
    
-- | Checks if a given list has no duplicates in _O(n log n)_.
hasNoDups
  :: (Ord a)
  => [a] -> Bool
hasNoDups = go Set.empty
  where
    go _ [] = True
    go s (x:xs)
      | s' <- Set.insert x s
      , Set.size s' > Set.size s = go s' xs
      | otherwise = False

instance ApproxEq TI.Day where
  (=~) = (==)

-- * Models
 
instance Arbitrary ChannelName where
  arbitrary =
    ChannelName <$> arbitrary
instance Arbitrary EdgeModuleAddObject where
  arbitrary =
    EdgeModuleAddObject
      <$> arbitrary -- edgeModuleAddObjectModulename :: Text
      <*> arbitrary -- edgeModuleAddObjectProtocol :: Text
      <*> arbitrary -- edgeModuleAddObjectProtocolprops :: Text
    
instance Arbitrary EdgeModuleAddedObject where
  arbitrary =
    EdgeModuleAddedObject
      <$> arbitrary -- edgeModuleAddedObjectId :: Text
      <*> arbitrary -- edgeModuleAddedObjectModulename :: Text
    
instance Arbitrary EdgeModuleObject where
  arbitrary =
    EdgeModuleObject
      <$> arbitrary -- edgeModuleObjectModulename :: Text
      <*> arbitrary -- edgeModuleObjectId :: Text
      <*> arbitrary -- edgeModuleObjectProtocol :: Text
      <*> arbitrary -- edgeModuleObjectProtocolprops :: Text
      <*> arbitrary -- edgeModuleObjectMeta :: MetaEdgeModuleObject
    
instance Arbitrary EdgeModuleResourceAddObject where
  arbitrary =
    EdgeModuleResourceAddObject
      <$> arbitrary -- edgeModuleResourceAddObjectResourcename :: Text
    
instance Arbitrary EdgeModuleResourceAddedObject where
  arbitrary =
    EdgeModuleResourceAddedObject
      <$> arbitrary -- edgeModuleResourceAddedObjectResourcename :: Text
    
instance Arbitrary EdgeModuleResourceObject where
  arbitrary =
    EdgeModuleResourceObject
      <$> arbitrary -- edgeModuleResourceObjectResourcename :: Text
      <*> arbitrary -- edgeModuleResourceObjectModulename :: Text
      <*> arbitrary -- edgeModuleResourceObjectModuleid :: Text
      <*> arbitrary -- edgeModuleResourceObjectMeta :: MetaEdgeModuleObject
    
instance Arbitrary EdgeModuleResourceUpdateObject where
  arbitrary =
    EdgeModuleResourceUpdateObject
      <$> arbitrary -- edgeModuleResourceUpdateObjectResourcename :: Maybe Text
    
instance Arbitrary EdgeModuleResourceUpdatedObject where
  arbitrary =
    EdgeModuleResourceUpdatedObject
      <$> arbitrary -- edgeModuleResourceUpdatedObjectUpdated :: Text
    
instance Arbitrary EdgeModuleUpdateObject where
  arbitrary =
    EdgeModuleUpdateObject
      <$> arbitrary -- edgeModuleUpdateObjectModulename :: Text
      <*> arbitrary -- edgeModuleUpdateObjectProtocol :: Text
      <*> arbitrary -- edgeModuleUpdateObjectProtocolprops :: Text
    
instance Arbitrary EdgeModuleUpdatedObject where
  arbitrary =
    EdgeModuleUpdatedObject
      <$> arbitrary -- edgeModuleUpdatedObjectUpdated :: Text
    
instance Arbitrary FieldGroupObject where
  arbitrary =
    FieldGroupObject
      <$> arbitrary -- fieldGroupObjectName :: Text
      <*> arbitrary -- fieldGroupObjectFields :: Maybe [FieldObjectFields]
      <*> arbitrary -- fieldGroupObjectCustom :: Maybe Bool
    
instance Arbitrary FieldInstallationObject where
  arbitrary =
    FieldInstallationObject
      <$> arbitrary -- fieldInstallationObjectName :: Text
      <*> arbitrary -- fieldInstallationObjectFields :: Maybe [FieldObjectFields]
      <*> arbitrary -- fieldInstallationObjectCustom :: Maybe Bool
    
instance Arbitrary FieldObject where
  arbitrary =
    FieldObject
      <$> arbitrary -- fieldObjectName :: Text
      <*> arbitrary -- fieldObjectFields :: Maybe [FieldObjectFields]
      <*> arbitrary -- fieldObjectCustom :: Maybe Bool
    
instance Arbitrary FieldObjectFields where
  arbitrary =
    FieldObjectFields
      <$> arbitrary -- fieldObjectFieldsName :: Maybe Text
    
instance Arbitrary FieldsEdgeModuleObject where
  arbitrary =
    FieldsEdgeModuleObject
      <$> arbitrary -- fieldsEdgeModuleObjectName :: Text
      <*> arbitrary -- fieldsEdgeModuleObjectFields :: Maybe [FieldObjectFields]
      <*> arbitrary -- fieldsEdgeModuleObjectCustom :: Maybe Bool
    
instance Arbitrary GroupAddObject where
  arbitrary =
    GroupAddObject
      <$> arbitrary -- groupAddObjectGroupname :: Text
    
instance Arbitrary GroupName where
  arbitrary =
    GroupName <$> arbitrary
instance Arbitrary GroupObject where
  arbitrary =
    GroupObject
      <$> arbitrary -- groupObjectName :: Text
      <*> arbitrary -- groupObjectMeta :: MetaGroupObject
      <*> arbitrary -- groupObjectUsers :: Maybe [Text]
    
instance Arbitrary InstallationAddObject where
  arbitrary =
    InstallationAddObject
      <$> arbitrary -- installationAddObjectDeviceToken :: Text
      <*> arbitrary -- installationAddObjectDeviceType :: Text
      <*> arbitrary -- installationAddObjectChannels :: Maybe [Text]
    
instance Arbitrary InstallationAddedObject where
  arbitrary =
    InstallationAddedObject
      <$> arbitrary -- installationAddedObjectId :: Text
    
instance Arbitrary InstallationObject where
  arbitrary =
    InstallationObject
      <$> arbitrary -- installationObjectId :: Text
      <*> arbitrary -- installationObjectDeviceToken :: Text
      <*> arbitrary -- installationObjectDeviceType :: Text
      <*> arbitrary -- installationObjectMeta :: MetaInstallationObject
      <*> arbitrary -- installationObjectChannels :: Maybe [Text]
    
instance Arbitrary MetaEdgeModuleObject where
  arbitrary =
    MetaEdgeModuleObject
      <$> arbitrary -- metaEdgeModuleObjectCreator :: Text
      <*> arbitrary -- metaEdgeModuleObjectCreated :: Text
      <*> arbitrary -- metaEdgeModuleObjectUpdated :: Maybe Text
    
instance Arbitrary MetaGroupObject where
  arbitrary =
    MetaGroupObject
      <$> arbitrary -- metaGroupObjectCreator :: Text
      <*> arbitrary -- metaGroupObjectCreated :: Text
      <*> arbitrary -- metaGroupObjectUpdated :: Maybe Text
    
instance Arbitrary MetaInstallationObject where
  arbitrary =
    MetaInstallationObject
      <$> arbitrary -- metaInstallationObjectCreator :: Text
      <*> arbitrary -- metaInstallationObjectCreated :: Text
      <*> arbitrary -- metaInstallationObjectUpdated :: Maybe Text
    
instance Arbitrary MetaObject where
  arbitrary =
    MetaObject
      <$> arbitrary -- metaObjectCreator :: Text
      <*> arbitrary -- metaObjectCreated :: Text
      <*> arbitrary -- metaObjectUpdated :: Maybe Text
    
instance Arbitrary PushDataObject where
  arbitrary =
    PushDataObject
      <$> arbitrary -- pushDataObjectGcm :: Maybe PushDataObjectGcm
      <*> arbitrary -- pushDataObjectAps :: Maybe PushDataObjectAps
      <*> arbitrary -- pushDataObjectExtras :: Maybe PushDataObjectExtras
    
instance Arbitrary PushDataObjectAps where
  arbitrary =
    PushDataObjectAps
      <$> arbitrary -- pushDataObjectApsAlert :: Maybe Text
      <*> arbitrary -- pushDataObjectApsBadge :: Maybe Text
      <*> arbitrary -- pushDataObjectApsSound :: Maybe Text
    
instance Arbitrary PushDataObjectExtras where
  arbitrary =
    PushDataObjectExtras
      <$> arbitrary -- pushDataObjectExtrasMessage :: Maybe Text
    
instance Arbitrary PushDataObjectGcm where
  arbitrary =
    PushDataObjectGcm
      <$> arbitrary -- pushDataObjectGcmMessage :: Maybe Text
      <*> arbitrary -- pushDataObjectGcmTitle :: Maybe Text
    
instance Arbitrary PushObject where
  arbitrary =
    PushObject
      <$> arbitrary -- pushObjectData :: PushDataObject
      <*> arbitrary -- pushObjectChannels :: Maybe [Text]
      <*> arbitrary -- pushObjectWhere :: PushWhereObject
    
instance Arbitrary PushWhereObject where
  arbitrary =
    PushWhereObject
      <$> arbitrary -- pushWhereObjectDeviceType :: Maybe Text
      <*> arbitrary -- pushWhereObjectDeviceToken :: Maybe PushWhereObjectDeviceToken
    
instance Arbitrary PushWhereObjectDeviceToken where
  arbitrary =
    PushWhereObjectDeviceToken
      <$> arbitrary -- pushWhereObjectDeviceTokenIn :: [Text]
    
instance Arbitrary UpdateGroupObject where
  arbitrary =
    UpdateGroupObject
      <$> arbitrary -- updateGroupObjectFieldName :: Maybe Text
      <*> arbitrary -- updateGroupObjectUsers :: Maybe [Text]
    
instance Arbitrary UpdateInstallationObject where
  arbitrary =
    UpdateInstallationObject
      <$> arbitrary -- updateInstallationObjectChannels :: Maybe [Text]
    
instance Arbitrary UpdateObject where
  arbitrary =
    UpdateObject
      <$> arbitrary -- updateObjectFieldName :: Maybe Text
    
instance Arbitrary UpdatedGroupObject where
  arbitrary =
    UpdatedGroupObject
      <$> arbitrary -- updatedGroupObjectUpdated :: Text
    
instance Arbitrary UpdatedInstallationObject where
  arbitrary =
    UpdatedInstallationObject
      <$> arbitrary -- updatedInstallationObjectUpdated :: Text
    
instance Arbitrary UpdatedObject where
  arbitrary =
    UpdatedObject
      <$> arbitrary -- updatedObjectUpdated :: Text
    
instance Arbitrary UserCredentialsObject where
  arbitrary =
    UserCredentialsObject
      <$> arbitrary -- userCredentialsObjectUsername :: Text
      <*> arbitrary -- userCredentialsObjectPassword :: Text
    
instance Arbitrary UserObject where
  arbitrary =
    UserObject
      <$> arbitrary -- userObjectId :: Text
      <*> arbitrary -- userObjectUsername :: Text
      <*> arbitrary -- userObjectMeta :: MetaObject
    
instance Arbitrary UserSignUpResponseObject where
  arbitrary =
    UserSignUpResponseObject
      <$> arbitrary -- userSignUpResponseObjectId :: Text
      <*> arbitrary -- userSignUpResponseObjectSessionToken :: Text
    
instance Arbitrary UserTokenObject where
  arbitrary =
    UserTokenObject
      <$> arbitrary -- userTokenObjectId :: Text
      <*> arbitrary -- userTokenObjectUsername :: Text
      <*> arbitrary -- userTokenObjectMeta :: MetaObject
      <*> arbitrary -- userTokenObjectSessiontoken :: Text
    
instance Arbitrary UseridObject where
  arbitrary =
    UseridObject
      <$> arbitrary -- useridObjectId :: Text
    
instance Arbitrary VersionObject where
  arbitrary =
    VersionObject
      <$> arbitrary -- versionObjectVersion :: Maybe Text
      <*> arbitrary -- versionObjectServer :: Maybe Text
    



instance Arbitrary E'DeviceType where
  arbitrary = arbitraryBoundedEnum
