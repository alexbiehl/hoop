{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.YarnProtos.FinalApplicationStatusProto (FinalApplicationStatusProto(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data FinalApplicationStatusProto = APP_UNDEFINED
                                 | APP_SUCCEEDED
                                 | APP_FAILED
                                 | APP_KILLED
                                 deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable,
                                           Prelude'.Data)
 
instance P'.Mergeable FinalApplicationStatusProto
 
instance Prelude'.Bounded FinalApplicationStatusProto where
  minBound = APP_UNDEFINED
  maxBound = APP_KILLED
 
instance P'.Default FinalApplicationStatusProto where
  defaultValue = APP_UNDEFINED
 
toMaybe'Enum :: Prelude'.Int -> P'.Maybe FinalApplicationStatusProto
toMaybe'Enum 0 = Prelude'.Just APP_UNDEFINED
toMaybe'Enum 1 = Prelude'.Just APP_SUCCEEDED
toMaybe'Enum 2 = Prelude'.Just APP_FAILED
toMaybe'Enum 3 = Prelude'.Just APP_KILLED
toMaybe'Enum _ = Prelude'.Nothing
 
instance Prelude'.Enum FinalApplicationStatusProto where
  fromEnum APP_UNDEFINED = 0
  fromEnum APP_SUCCEEDED = 1
  fromEnum APP_FAILED = 2
  fromEnum APP_KILLED = 3
  toEnum
   = P'.fromMaybe
      (Prelude'.error "hprotoc generated code: toEnum failure for type Hadoop.Protos.YarnProtos.FinalApplicationStatusProto")
      . toMaybe'Enum
  succ APP_UNDEFINED = APP_SUCCEEDED
  succ APP_SUCCEEDED = APP_FAILED
  succ APP_FAILED = APP_KILLED
  succ _ = Prelude'.error "hprotoc generated code: succ failure for type Hadoop.Protos.YarnProtos.FinalApplicationStatusProto"
  pred APP_SUCCEEDED = APP_UNDEFINED
  pred APP_FAILED = APP_SUCCEEDED
  pred APP_KILLED = APP_FAILED
  pred _ = Prelude'.error "hprotoc generated code: pred failure for type Hadoop.Protos.YarnProtos.FinalApplicationStatusProto"
 
instance P'.Wire FinalApplicationStatusProto where
  wireSize ft' enum = P'.wireSize ft' (Prelude'.fromEnum enum)
  wirePut ft' enum = P'.wirePut ft' (Prelude'.fromEnum enum)
  wireGet 14 = P'.wireGetEnum toMaybe'Enum
  wireGet ft' = P'.wireGetErr ft'
  wireGetPacked 14 = P'.wireGetPackedEnum toMaybe'Enum
  wireGetPacked ft' = P'.wireGetErr ft'
 
instance P'.GPB FinalApplicationStatusProto
 
instance P'.MessageAPI msg' (msg' -> FinalApplicationStatusProto) FinalApplicationStatusProto where
  getVal m' f' = f' m'
 
instance P'.ReflectEnum FinalApplicationStatusProto where
  reflectEnum
   = [(0, "APP_UNDEFINED", APP_UNDEFINED), (1, "APP_SUCCEEDED", APP_SUCCEEDED), (2, "APP_FAILED", APP_FAILED),
      (3, "APP_KILLED", APP_KILLED)]
  reflectEnumInfo _
   = P'.EnumInfo
      (P'.makePNF (P'.pack ".hadoop.yarn.FinalApplicationStatusProto") ["Hadoop", "Protos"] ["YarnProtos"]
        "FinalApplicationStatusProto")
      ["Hadoop", "Protos", "YarnProtos", "FinalApplicationStatusProto.hs"]
      [(0, "APP_UNDEFINED"), (1, "APP_SUCCEEDED"), (2, "APP_FAILED"), (3, "APP_KILLED")]
 
instance P'.TextType FinalApplicationStatusProto where
  tellT = P'.tellShow
  getT = P'.getRead