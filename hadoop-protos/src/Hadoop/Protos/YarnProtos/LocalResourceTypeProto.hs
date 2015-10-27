{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.YarnProtos.LocalResourceTypeProto (LocalResourceTypeProto(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data LocalResourceTypeProto = ARCHIVE
                            | FILE
                            | PATTERN
                            deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable LocalResourceTypeProto
 
instance Prelude'.Bounded LocalResourceTypeProto where
  minBound = ARCHIVE
  maxBound = PATTERN
 
instance P'.Default LocalResourceTypeProto where
  defaultValue = ARCHIVE
 
toMaybe'Enum :: Prelude'.Int -> P'.Maybe LocalResourceTypeProto
toMaybe'Enum 1 = Prelude'.Just ARCHIVE
toMaybe'Enum 2 = Prelude'.Just FILE
toMaybe'Enum 3 = Prelude'.Just PATTERN
toMaybe'Enum _ = Prelude'.Nothing
 
instance Prelude'.Enum LocalResourceTypeProto where
  fromEnum ARCHIVE = 1
  fromEnum FILE = 2
  fromEnum PATTERN = 3
  toEnum
   = P'.fromMaybe (Prelude'.error "hprotoc generated code: toEnum failure for type Hadoop.Protos.YarnProtos.LocalResourceTypeProto")
      . toMaybe'Enum
  succ ARCHIVE = FILE
  succ FILE = PATTERN
  succ _ = Prelude'.error "hprotoc generated code: succ failure for type Hadoop.Protos.YarnProtos.LocalResourceTypeProto"
  pred FILE = ARCHIVE
  pred PATTERN = FILE
  pred _ = Prelude'.error "hprotoc generated code: pred failure for type Hadoop.Protos.YarnProtos.LocalResourceTypeProto"
 
instance P'.Wire LocalResourceTypeProto where
  wireSize ft' enum = P'.wireSize ft' (Prelude'.fromEnum enum)
  wirePut ft' enum = P'.wirePut ft' (Prelude'.fromEnum enum)
  wireGet 14 = P'.wireGetEnum toMaybe'Enum
  wireGet ft' = P'.wireGetErr ft'
  wireGetPacked 14 = P'.wireGetPackedEnum toMaybe'Enum
  wireGetPacked ft' = P'.wireGetErr ft'
 
instance P'.GPB LocalResourceTypeProto
 
instance P'.MessageAPI msg' (msg' -> LocalResourceTypeProto) LocalResourceTypeProto where
  getVal m' f' = f' m'
 
instance P'.ReflectEnum LocalResourceTypeProto where
  reflectEnum = [(1, "ARCHIVE", ARCHIVE), (2, "FILE", FILE), (3, "PATTERN", PATTERN)]
  reflectEnumInfo _
   = P'.EnumInfo
      (P'.makePNF (P'.pack ".hadoop.yarn.LocalResourceTypeProto") ["Hadoop", "Protos"] ["YarnProtos"] "LocalResourceTypeProto")
      ["Hadoop", "Protos", "YarnProtos", "LocalResourceTypeProto.hs"]
      [(1, "ARCHIVE"), (2, "FILE"), (3, "PATTERN")]
 
instance P'.TextType LocalResourceTypeProto where
  tellT = P'.tellShow
  getT = P'.getRead