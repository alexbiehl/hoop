{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.YarnServiceProtos.SchedulerResourceTypes (SchedulerResourceTypes(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data SchedulerResourceTypes = MEMORY
                            | CPU
                            deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable SchedulerResourceTypes
 
instance Prelude'.Bounded SchedulerResourceTypes where
  minBound = MEMORY
  maxBound = CPU
 
instance P'.Default SchedulerResourceTypes where
  defaultValue = MEMORY
 
toMaybe'Enum :: Prelude'.Int -> P'.Maybe SchedulerResourceTypes
toMaybe'Enum 0 = Prelude'.Just MEMORY
toMaybe'Enum 1 = Prelude'.Just CPU
toMaybe'Enum _ = Prelude'.Nothing
 
instance Prelude'.Enum SchedulerResourceTypes where
  fromEnum MEMORY = 0
  fromEnum CPU = 1
  toEnum
   = P'.fromMaybe
      (Prelude'.error "hprotoc generated code: toEnum failure for type Hadoop.Protos.YarnServiceProtos.SchedulerResourceTypes")
      . toMaybe'Enum
  succ MEMORY = CPU
  succ _ = Prelude'.error "hprotoc generated code: succ failure for type Hadoop.Protos.YarnServiceProtos.SchedulerResourceTypes"
  pred CPU = MEMORY
  pred _ = Prelude'.error "hprotoc generated code: pred failure for type Hadoop.Protos.YarnServiceProtos.SchedulerResourceTypes"
 
instance P'.Wire SchedulerResourceTypes where
  wireSize ft' enum = P'.wireSize ft' (Prelude'.fromEnum enum)
  wirePut ft' enum = P'.wirePut ft' (Prelude'.fromEnum enum)
  wireGet 14 = P'.wireGetEnum toMaybe'Enum
  wireGet ft' = P'.wireGetErr ft'
  wireGetPacked 14 = P'.wireGetPackedEnum toMaybe'Enum
  wireGetPacked ft' = P'.wireGetErr ft'
 
instance P'.GPB SchedulerResourceTypes
 
instance P'.MessageAPI msg' (msg' -> SchedulerResourceTypes) SchedulerResourceTypes where
  getVal m' f' = f' m'
 
instance P'.ReflectEnum SchedulerResourceTypes where
  reflectEnum = [(0, "MEMORY", MEMORY), (1, "CPU", CPU)]
  reflectEnumInfo _
   = P'.EnumInfo
      (P'.makePNF (P'.pack ".hadoop.yarn.SchedulerResourceTypes") ["Hadoop", "Protos"] ["YarnServiceProtos"]
        "SchedulerResourceTypes")
      ["Hadoop", "Protos", "YarnServiceProtos", "SchedulerResourceTypes.hs"]
      [(0, "MEMORY"), (1, "CPU")]
 
instance P'.TextType SchedulerResourceTypes where
  tellT = P'.tellShow
  getT = P'.getRead