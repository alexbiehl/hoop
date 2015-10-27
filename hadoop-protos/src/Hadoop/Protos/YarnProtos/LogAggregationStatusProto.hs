{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.YarnProtos.LogAggregationStatusProto (LogAggregationStatusProto(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data LogAggregationStatusProto = LOG_DISABLED
                               | LOG_NOT_START
                               | LOG_RUNNING
                               | LOG_SUCCEEDED
                               | LOG_FAILED
                               | LOG_TIME_OUT
                               | LOG_RUNNING_WITH_FAILURE
                               deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable LogAggregationStatusProto
 
instance Prelude'.Bounded LogAggregationStatusProto where
  minBound = LOG_DISABLED
  maxBound = LOG_RUNNING_WITH_FAILURE
 
instance P'.Default LogAggregationStatusProto where
  defaultValue = LOG_DISABLED
 
toMaybe'Enum :: Prelude'.Int -> P'.Maybe LogAggregationStatusProto
toMaybe'Enum 1 = Prelude'.Just LOG_DISABLED
toMaybe'Enum 2 = Prelude'.Just LOG_NOT_START
toMaybe'Enum 3 = Prelude'.Just LOG_RUNNING
toMaybe'Enum 4 = Prelude'.Just LOG_SUCCEEDED
toMaybe'Enum 5 = Prelude'.Just LOG_FAILED
toMaybe'Enum 6 = Prelude'.Just LOG_TIME_OUT
toMaybe'Enum 7 = Prelude'.Just LOG_RUNNING_WITH_FAILURE
toMaybe'Enum _ = Prelude'.Nothing
 
instance Prelude'.Enum LogAggregationStatusProto where
  fromEnum LOG_DISABLED = 1
  fromEnum LOG_NOT_START = 2
  fromEnum LOG_RUNNING = 3
  fromEnum LOG_SUCCEEDED = 4
  fromEnum LOG_FAILED = 5
  fromEnum LOG_TIME_OUT = 6
  fromEnum LOG_RUNNING_WITH_FAILURE = 7
  toEnum
   = P'.fromMaybe
      (Prelude'.error "hprotoc generated code: toEnum failure for type Hadoop.Protos.YarnProtos.LogAggregationStatusProto")
      . toMaybe'Enum
  succ LOG_DISABLED = LOG_NOT_START
  succ LOG_NOT_START = LOG_RUNNING
  succ LOG_RUNNING = LOG_SUCCEEDED
  succ LOG_SUCCEEDED = LOG_FAILED
  succ LOG_FAILED = LOG_TIME_OUT
  succ LOG_TIME_OUT = LOG_RUNNING_WITH_FAILURE
  succ _ = Prelude'.error "hprotoc generated code: succ failure for type Hadoop.Protos.YarnProtos.LogAggregationStatusProto"
  pred LOG_NOT_START = LOG_DISABLED
  pred LOG_RUNNING = LOG_NOT_START
  pred LOG_SUCCEEDED = LOG_RUNNING
  pred LOG_FAILED = LOG_SUCCEEDED
  pred LOG_TIME_OUT = LOG_FAILED
  pred LOG_RUNNING_WITH_FAILURE = LOG_TIME_OUT
  pred _ = Prelude'.error "hprotoc generated code: pred failure for type Hadoop.Protos.YarnProtos.LogAggregationStatusProto"
 
instance P'.Wire LogAggregationStatusProto where
  wireSize ft' enum = P'.wireSize ft' (Prelude'.fromEnum enum)
  wirePut ft' enum = P'.wirePut ft' (Prelude'.fromEnum enum)
  wireGet 14 = P'.wireGetEnum toMaybe'Enum
  wireGet ft' = P'.wireGetErr ft'
  wireGetPacked 14 = P'.wireGetPackedEnum toMaybe'Enum
  wireGetPacked ft' = P'.wireGetErr ft'
 
instance P'.GPB LogAggregationStatusProto
 
instance P'.MessageAPI msg' (msg' -> LogAggregationStatusProto) LogAggregationStatusProto where
  getVal m' f' = f' m'
 
instance P'.ReflectEnum LogAggregationStatusProto where
  reflectEnum
   = [(1, "LOG_DISABLED", LOG_DISABLED), (2, "LOG_NOT_START", LOG_NOT_START), (3, "LOG_RUNNING", LOG_RUNNING),
      (4, "LOG_SUCCEEDED", LOG_SUCCEEDED), (5, "LOG_FAILED", LOG_FAILED), (6, "LOG_TIME_OUT", LOG_TIME_OUT),
      (7, "LOG_RUNNING_WITH_FAILURE", LOG_RUNNING_WITH_FAILURE)]
  reflectEnumInfo _
   = P'.EnumInfo
      (P'.makePNF (P'.pack ".hadoop.yarn.LogAggregationStatusProto") ["Hadoop", "Protos"] ["YarnProtos"]
        "LogAggregationStatusProto")
      ["Hadoop", "Protos", "YarnProtos", "LogAggregationStatusProto.hs"]
      [(1, "LOG_DISABLED"), (2, "LOG_NOT_START"), (3, "LOG_RUNNING"), (4, "LOG_SUCCEEDED"), (5, "LOG_FAILED"), (6, "LOG_TIME_OUT"),
       (7, "LOG_RUNNING_WITH_FAILURE")]
 
instance P'.TextType LogAggregationStatusProto where
  tellT = P'.tellShow
  getT = P'.getRead