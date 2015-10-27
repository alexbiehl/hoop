{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.YarnServerResourceManagerServiceProtos.DecommissionTypeProto (DecommissionTypeProto(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data DecommissionTypeProto = NORMAL
                           | GRACEFUL
                           | FORCEFUL
                           deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable DecommissionTypeProto
 
instance Prelude'.Bounded DecommissionTypeProto where
  minBound = NORMAL
  maxBound = FORCEFUL
 
instance P'.Default DecommissionTypeProto where
  defaultValue = NORMAL
 
toMaybe'Enum :: Prelude'.Int -> P'.Maybe DecommissionTypeProto
toMaybe'Enum 1 = Prelude'.Just NORMAL
toMaybe'Enum 2 = Prelude'.Just GRACEFUL
toMaybe'Enum 3 = Prelude'.Just FORCEFUL
toMaybe'Enum _ = Prelude'.Nothing
 
instance Prelude'.Enum DecommissionTypeProto where
  fromEnum NORMAL = 1
  fromEnum GRACEFUL = 2
  fromEnum FORCEFUL = 3
  toEnum
   = P'.fromMaybe
      (Prelude'.error
        "hprotoc generated code: toEnum failure for type Hadoop.Protos.YarnServerResourceManagerServiceProtos.DecommissionTypeProto")
      . toMaybe'Enum
  succ NORMAL = GRACEFUL
  succ GRACEFUL = FORCEFUL
  succ _
   = Prelude'.error
      "hprotoc generated code: succ failure for type Hadoop.Protos.YarnServerResourceManagerServiceProtos.DecommissionTypeProto"
  pred GRACEFUL = NORMAL
  pred FORCEFUL = GRACEFUL
  pred _
   = Prelude'.error
      "hprotoc generated code: pred failure for type Hadoop.Protos.YarnServerResourceManagerServiceProtos.DecommissionTypeProto"
 
instance P'.Wire DecommissionTypeProto where
  wireSize ft' enum = P'.wireSize ft' (Prelude'.fromEnum enum)
  wirePut ft' enum = P'.wirePut ft' (Prelude'.fromEnum enum)
  wireGet 14 = P'.wireGetEnum toMaybe'Enum
  wireGet ft' = P'.wireGetErr ft'
  wireGetPacked 14 = P'.wireGetPackedEnum toMaybe'Enum
  wireGetPacked ft' = P'.wireGetErr ft'
 
instance P'.GPB DecommissionTypeProto
 
instance P'.MessageAPI msg' (msg' -> DecommissionTypeProto) DecommissionTypeProto where
  getVal m' f' = f' m'
 
instance P'.ReflectEnum DecommissionTypeProto where
  reflectEnum = [(1, "NORMAL", NORMAL), (2, "GRACEFUL", GRACEFUL), (3, "FORCEFUL", FORCEFUL)]
  reflectEnumInfo _
   = P'.EnumInfo
      (P'.makePNF (P'.pack ".hadoop.yarn.DecommissionTypeProto") ["Hadoop", "Protos"] ["YarnServerResourceManagerServiceProtos"]
        "DecommissionTypeProto")
      ["Hadoop", "Protos", "YarnServerResourceManagerServiceProtos", "DecommissionTypeProto.hs"]
      [(1, "NORMAL"), (2, "GRACEFUL"), (3, "FORCEFUL")]
 
instance P'.TextType DecommissionTypeProto where
  tellT = P'.tellShow
  getT = P'.getRead