{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.YarnProtos.LocalResourceVisibilityProto (LocalResourceVisibilityProto(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data LocalResourceVisibilityProto = PUBLIC
                                  | PRIVATE
                                  | APPLICATION
                                  deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable,
                                            Prelude'.Data)
 
instance P'.Mergeable LocalResourceVisibilityProto
 
instance Prelude'.Bounded LocalResourceVisibilityProto where
  minBound = PUBLIC
  maxBound = APPLICATION
 
instance P'.Default LocalResourceVisibilityProto where
  defaultValue = PUBLIC
 
toMaybe'Enum :: Prelude'.Int -> P'.Maybe LocalResourceVisibilityProto
toMaybe'Enum 1 = Prelude'.Just PUBLIC
toMaybe'Enum 2 = Prelude'.Just PRIVATE
toMaybe'Enum 3 = Prelude'.Just APPLICATION
toMaybe'Enum _ = Prelude'.Nothing
 
instance Prelude'.Enum LocalResourceVisibilityProto where
  fromEnum PUBLIC = 1
  fromEnum PRIVATE = 2
  fromEnum APPLICATION = 3
  toEnum
   = P'.fromMaybe
      (Prelude'.error "hprotoc generated code: toEnum failure for type Hadoop.Protos.YarnProtos.LocalResourceVisibilityProto")
      . toMaybe'Enum
  succ PUBLIC = PRIVATE
  succ PRIVATE = APPLICATION
  succ _ = Prelude'.error "hprotoc generated code: succ failure for type Hadoop.Protos.YarnProtos.LocalResourceVisibilityProto"
  pred PRIVATE = PUBLIC
  pred APPLICATION = PRIVATE
  pred _ = Prelude'.error "hprotoc generated code: pred failure for type Hadoop.Protos.YarnProtos.LocalResourceVisibilityProto"
 
instance P'.Wire LocalResourceVisibilityProto where
  wireSize ft' enum = P'.wireSize ft' (Prelude'.fromEnum enum)
  wirePut ft' enum = P'.wirePut ft' (Prelude'.fromEnum enum)
  wireGet 14 = P'.wireGetEnum toMaybe'Enum
  wireGet ft' = P'.wireGetErr ft'
  wireGetPacked 14 = P'.wireGetPackedEnum toMaybe'Enum
  wireGetPacked ft' = P'.wireGetErr ft'
 
instance P'.GPB LocalResourceVisibilityProto
 
instance P'.MessageAPI msg' (msg' -> LocalResourceVisibilityProto) LocalResourceVisibilityProto where
  getVal m' f' = f' m'
 
instance P'.ReflectEnum LocalResourceVisibilityProto where
  reflectEnum = [(1, "PUBLIC", PUBLIC), (2, "PRIVATE", PRIVATE), (3, "APPLICATION", APPLICATION)]
  reflectEnumInfo _
   = P'.EnumInfo
      (P'.makePNF (P'.pack ".hadoop.yarn.LocalResourceVisibilityProto") ["Hadoop", "Protos"] ["YarnProtos"]
        "LocalResourceVisibilityProto")
      ["Hadoop", "Protos", "YarnProtos", "LocalResourceVisibilityProto.hs"]
      [(1, "PUBLIC"), (2, "PRIVATE"), (3, "APPLICATION")]
 
instance P'.TextType LocalResourceVisibilityProto where
  tellT = P'.tellShow
  getT = P'.getRead