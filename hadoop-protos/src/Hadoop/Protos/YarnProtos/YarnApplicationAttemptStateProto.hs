{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.YarnProtos.YarnApplicationAttemptStateProto (YarnApplicationAttemptStateProto(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data YarnApplicationAttemptStateProto = APP_ATTEMPT_NEW
                                      | APP_ATTEMPT_SUBMITTED
                                      | APP_ATTEMPT_SCHEDULED
                                      | APP_ATTEMPT_ALLOCATED_SAVING
                                      | APP_ATTEMPT_ALLOCATED
                                      | APP_ATTEMPT_LAUNCHED
                                      | APP_ATTEMPT_FAILED
                                      | APP_ATTEMPT_RUNNING
                                      | APP_ATTEMPT_FINISHING
                                      | APP_ATTEMPT_FINISHED
                                      | APP_ATTEMPT_KILLED
                                      deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable,
                                                Prelude'.Data)
 
instance P'.Mergeable YarnApplicationAttemptStateProto
 
instance Prelude'.Bounded YarnApplicationAttemptStateProto where
  minBound = APP_ATTEMPT_NEW
  maxBound = APP_ATTEMPT_KILLED
 
instance P'.Default YarnApplicationAttemptStateProto where
  defaultValue = APP_ATTEMPT_NEW
 
toMaybe'Enum :: Prelude'.Int -> P'.Maybe YarnApplicationAttemptStateProto
toMaybe'Enum 1 = Prelude'.Just APP_ATTEMPT_NEW
toMaybe'Enum 2 = Prelude'.Just APP_ATTEMPT_SUBMITTED
toMaybe'Enum 3 = Prelude'.Just APP_ATTEMPT_SCHEDULED
toMaybe'Enum 4 = Prelude'.Just APP_ATTEMPT_ALLOCATED_SAVING
toMaybe'Enum 5 = Prelude'.Just APP_ATTEMPT_ALLOCATED
toMaybe'Enum 6 = Prelude'.Just APP_ATTEMPT_LAUNCHED
toMaybe'Enum 7 = Prelude'.Just APP_ATTEMPT_FAILED
toMaybe'Enum 8 = Prelude'.Just APP_ATTEMPT_RUNNING
toMaybe'Enum 9 = Prelude'.Just APP_ATTEMPT_FINISHING
toMaybe'Enum 10 = Prelude'.Just APP_ATTEMPT_FINISHED
toMaybe'Enum 11 = Prelude'.Just APP_ATTEMPT_KILLED
toMaybe'Enum _ = Prelude'.Nothing
 
instance Prelude'.Enum YarnApplicationAttemptStateProto where
  fromEnum APP_ATTEMPT_NEW = 1
  fromEnum APP_ATTEMPT_SUBMITTED = 2
  fromEnum APP_ATTEMPT_SCHEDULED = 3
  fromEnum APP_ATTEMPT_ALLOCATED_SAVING = 4
  fromEnum APP_ATTEMPT_ALLOCATED = 5
  fromEnum APP_ATTEMPT_LAUNCHED = 6
  fromEnum APP_ATTEMPT_FAILED = 7
  fromEnum APP_ATTEMPT_RUNNING = 8
  fromEnum APP_ATTEMPT_FINISHING = 9
  fromEnum APP_ATTEMPT_FINISHED = 10
  fromEnum APP_ATTEMPT_KILLED = 11
  toEnum
   = P'.fromMaybe
      (Prelude'.error "hprotoc generated code: toEnum failure for type Hadoop.Protos.YarnProtos.YarnApplicationAttemptStateProto")
      . toMaybe'Enum
  succ APP_ATTEMPT_NEW = APP_ATTEMPT_SUBMITTED
  succ APP_ATTEMPT_SUBMITTED = APP_ATTEMPT_SCHEDULED
  succ APP_ATTEMPT_SCHEDULED = APP_ATTEMPT_ALLOCATED_SAVING
  succ APP_ATTEMPT_ALLOCATED_SAVING = APP_ATTEMPT_ALLOCATED
  succ APP_ATTEMPT_ALLOCATED = APP_ATTEMPT_LAUNCHED
  succ APP_ATTEMPT_LAUNCHED = APP_ATTEMPT_FAILED
  succ APP_ATTEMPT_FAILED = APP_ATTEMPT_RUNNING
  succ APP_ATTEMPT_RUNNING = APP_ATTEMPT_FINISHING
  succ APP_ATTEMPT_FINISHING = APP_ATTEMPT_FINISHED
  succ APP_ATTEMPT_FINISHED = APP_ATTEMPT_KILLED
  succ _ = Prelude'.error "hprotoc generated code: succ failure for type Hadoop.Protos.YarnProtos.YarnApplicationAttemptStateProto"
  pred APP_ATTEMPT_SUBMITTED = APP_ATTEMPT_NEW
  pred APP_ATTEMPT_SCHEDULED = APP_ATTEMPT_SUBMITTED
  pred APP_ATTEMPT_ALLOCATED_SAVING = APP_ATTEMPT_SCHEDULED
  pred APP_ATTEMPT_ALLOCATED = APP_ATTEMPT_ALLOCATED_SAVING
  pred APP_ATTEMPT_LAUNCHED = APP_ATTEMPT_ALLOCATED
  pred APP_ATTEMPT_FAILED = APP_ATTEMPT_LAUNCHED
  pred APP_ATTEMPT_RUNNING = APP_ATTEMPT_FAILED
  pred APP_ATTEMPT_FINISHING = APP_ATTEMPT_RUNNING
  pred APP_ATTEMPT_FINISHED = APP_ATTEMPT_FINISHING
  pred APP_ATTEMPT_KILLED = APP_ATTEMPT_FINISHED
  pred _ = Prelude'.error "hprotoc generated code: pred failure for type Hadoop.Protos.YarnProtos.YarnApplicationAttemptStateProto"
 
instance P'.Wire YarnApplicationAttemptStateProto where
  wireSize ft' enum = P'.wireSize ft' (Prelude'.fromEnum enum)
  wirePut ft' enum = P'.wirePut ft' (Prelude'.fromEnum enum)
  wireGet 14 = P'.wireGetEnum toMaybe'Enum
  wireGet ft' = P'.wireGetErr ft'
  wireGetPacked 14 = P'.wireGetPackedEnum toMaybe'Enum
  wireGetPacked ft' = P'.wireGetErr ft'
 
instance P'.GPB YarnApplicationAttemptStateProto
 
instance P'.MessageAPI msg' (msg' -> YarnApplicationAttemptStateProto) YarnApplicationAttemptStateProto where
  getVal m' f' = f' m'
 
instance P'.ReflectEnum YarnApplicationAttemptStateProto where
  reflectEnum
   = [(1, "APP_ATTEMPT_NEW", APP_ATTEMPT_NEW), (2, "APP_ATTEMPT_SUBMITTED", APP_ATTEMPT_SUBMITTED),
      (3, "APP_ATTEMPT_SCHEDULED", APP_ATTEMPT_SCHEDULED), (4, "APP_ATTEMPT_ALLOCATED_SAVING", APP_ATTEMPT_ALLOCATED_SAVING),
      (5, "APP_ATTEMPT_ALLOCATED", APP_ATTEMPT_ALLOCATED), (6, "APP_ATTEMPT_LAUNCHED", APP_ATTEMPT_LAUNCHED),
      (7, "APP_ATTEMPT_FAILED", APP_ATTEMPT_FAILED), (8, "APP_ATTEMPT_RUNNING", APP_ATTEMPT_RUNNING),
      (9, "APP_ATTEMPT_FINISHING", APP_ATTEMPT_FINISHING), (10, "APP_ATTEMPT_FINISHED", APP_ATTEMPT_FINISHED),
      (11, "APP_ATTEMPT_KILLED", APP_ATTEMPT_KILLED)]
  reflectEnumInfo _
   = P'.EnumInfo
      (P'.makePNF (P'.pack ".hadoop.yarn.YarnApplicationAttemptStateProto") ["Hadoop", "Protos"] ["YarnProtos"]
        "YarnApplicationAttemptStateProto")
      ["Hadoop", "Protos", "YarnProtos", "YarnApplicationAttemptStateProto.hs"]
      [(1, "APP_ATTEMPT_NEW"), (2, "APP_ATTEMPT_SUBMITTED"), (3, "APP_ATTEMPT_SCHEDULED"), (4, "APP_ATTEMPT_ALLOCATED_SAVING"),
       (5, "APP_ATTEMPT_ALLOCATED"), (6, "APP_ATTEMPT_LAUNCHED"), (7, "APP_ATTEMPT_FAILED"), (8, "APP_ATTEMPT_RUNNING"),
       (9, "APP_ATTEMPT_FINISHING"), (10, "APP_ATTEMPT_FINISHED"), (11, "APP_ATTEMPT_KILLED")]
 
instance P'.TextType YarnApplicationAttemptStateProto where
  tellT = P'.tellShow
  getT = P'.getRead