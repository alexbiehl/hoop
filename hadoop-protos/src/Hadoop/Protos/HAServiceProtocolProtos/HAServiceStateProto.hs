{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.HAServiceProtocolProtos.HAServiceStateProto (HAServiceStateProto(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data HAServiceStateProto = INITIALIZING
                         | ACTIVE
                         | STANDBY
                         deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable HAServiceStateProto
 
instance Prelude'.Bounded HAServiceStateProto where
  minBound = INITIALIZING
  maxBound = STANDBY
 
instance P'.Default HAServiceStateProto where
  defaultValue = INITIALIZING
 
toMaybe'Enum :: Prelude'.Int -> P'.Maybe HAServiceStateProto
toMaybe'Enum 0 = Prelude'.Just INITIALIZING
toMaybe'Enum 1 = Prelude'.Just ACTIVE
toMaybe'Enum 2 = Prelude'.Just STANDBY
toMaybe'Enum _ = Prelude'.Nothing
 
instance Prelude'.Enum HAServiceStateProto where
  fromEnum INITIALIZING = 0
  fromEnum ACTIVE = 1
  fromEnum STANDBY = 2
  toEnum
   = P'.fromMaybe
      (Prelude'.error "hprotoc generated code: toEnum failure for type Hadoop.Protos.HAServiceProtocolProtos.HAServiceStateProto")
      . toMaybe'Enum
  succ INITIALIZING = ACTIVE
  succ ACTIVE = STANDBY
  succ _ = Prelude'.error "hprotoc generated code: succ failure for type Hadoop.Protos.HAServiceProtocolProtos.HAServiceStateProto"
  pred ACTIVE = INITIALIZING
  pred STANDBY = ACTIVE
  pred _ = Prelude'.error "hprotoc generated code: pred failure for type Hadoop.Protos.HAServiceProtocolProtos.HAServiceStateProto"
 
instance P'.Wire HAServiceStateProto where
  wireSize ft' enum = P'.wireSize ft' (Prelude'.fromEnum enum)
  wirePut ft' enum = P'.wirePut ft' (Prelude'.fromEnum enum)
  wireGet 14 = P'.wireGetEnum toMaybe'Enum
  wireGet ft' = P'.wireGetErr ft'
  wireGetPacked 14 = P'.wireGetPackedEnum toMaybe'Enum
  wireGetPacked ft' = P'.wireGetErr ft'
 
instance P'.GPB HAServiceStateProto
 
instance P'.MessageAPI msg' (msg' -> HAServiceStateProto) HAServiceStateProto where
  getVal m' f' = f' m'
 
instance P'.ReflectEnum HAServiceStateProto where
  reflectEnum = [(0, "INITIALIZING", INITIALIZING), (1, "ACTIVE", ACTIVE), (2, "STANDBY", STANDBY)]
  reflectEnumInfo _
   = P'.EnumInfo
      (P'.makePNF (P'.pack ".hadoop.common.HAServiceStateProto") ["Hadoop", "Protos"] ["HAServiceProtocolProtos"]
        "HAServiceStateProto")
      ["Hadoop", "Protos", "HAServiceProtocolProtos", "HAServiceStateProto.hs"]
      [(0, "INITIALIZING"), (1, "ACTIVE"), (2, "STANDBY")]
 
instance P'.TextType HAServiceStateProto where
  tellT = P'.tellShow
  getT = P'.getRead