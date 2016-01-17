{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.YarnProtos.AMCommandProto (AMCommandProto(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data AMCommandProto = AM_RESYNC
                    | AM_SHUTDOWN
                    deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable AMCommandProto
 
instance Prelude'.Bounded AMCommandProto where
  minBound = AM_RESYNC
  maxBound = AM_SHUTDOWN
 
instance P'.Default AMCommandProto where
  defaultValue = AM_RESYNC
 
toMaybe'Enum :: Prelude'.Int -> P'.Maybe AMCommandProto
toMaybe'Enum 1 = Prelude'.Just AM_RESYNC
toMaybe'Enum 2 = Prelude'.Just AM_SHUTDOWN
toMaybe'Enum _ = Prelude'.Nothing
 
instance Prelude'.Enum AMCommandProto where
  fromEnum AM_RESYNC = 1
  fromEnum AM_SHUTDOWN = 2
  toEnum
   = P'.fromMaybe (Prelude'.error "hprotoc generated code: toEnum failure for type Hadoop.Protos.YarnProtos.AMCommandProto") .
      toMaybe'Enum
  succ AM_RESYNC = AM_SHUTDOWN
  succ _ = Prelude'.error "hprotoc generated code: succ failure for type Hadoop.Protos.YarnProtos.AMCommandProto"
  pred AM_SHUTDOWN = AM_RESYNC
  pred _ = Prelude'.error "hprotoc generated code: pred failure for type Hadoop.Protos.YarnProtos.AMCommandProto"
 
instance P'.Wire AMCommandProto where
  wireSize ft' enum = P'.wireSize ft' (Prelude'.fromEnum enum)
  wirePut ft' enum = P'.wirePut ft' (Prelude'.fromEnum enum)
  wireGet 14 = P'.wireGetEnum toMaybe'Enum
  wireGet ft' = P'.wireGetErr ft'
  wireGetPacked 14 = P'.wireGetPackedEnum toMaybe'Enum
  wireGetPacked ft' = P'.wireGetErr ft'
 
instance P'.GPB AMCommandProto
 
instance P'.MessageAPI msg' (msg' -> AMCommandProto) AMCommandProto where
  getVal m' f' = f' m'
 
instance P'.ReflectEnum AMCommandProto where
  reflectEnum = [(1, "AM_RESYNC", AM_RESYNC), (2, "AM_SHUTDOWN", AM_SHUTDOWN)]
  reflectEnumInfo _
   = P'.EnumInfo (P'.makePNF (P'.pack ".hadoop.yarn.AMCommandProto") ["Hadoop", "Protos"] ["YarnProtos"] "AMCommandProto")
      ["Hadoop", "Protos", "YarnProtos", "AMCommandProto.hs"]
      [(1, "AM_RESYNC"), (2, "AM_SHUTDOWN")]
 
instance P'.TextType AMCommandProto where
  tellT = P'.tellShow
  getT = P'.getRead