{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.YarnServerResourceManagerRecoveryProtos.RMAppAttemptStateProto (RMAppAttemptStateProto(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data RMAppAttemptStateProto = RMATTEMPT_NEW
                            | RMATTEMPT_SUBMITTED
                            | RMATTEMPT_SCHEDULED
                            | RMATTEMPT_ALLOCATED
                            | RMATTEMPT_LAUNCHED
                            | RMATTEMPT_FAILED
                            | RMATTEMPT_RUNNING
                            | RMATTEMPT_FINISHING
                            | RMATTEMPT_FINISHED
                            | RMATTEMPT_KILLED
                            | RMATTEMPT_ALLOCATED_SAVING
                            | RMATTEMPT_LAUNCHED_UNMANAGED_SAVING
                            | RMATTEMPT_RECOVERED
                            | RMATTEMPT_FINAL_SAVING
                            deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable RMAppAttemptStateProto
 
instance Prelude'.Bounded RMAppAttemptStateProto where
  minBound = RMATTEMPT_NEW
  maxBound = RMATTEMPT_FINAL_SAVING
 
instance P'.Default RMAppAttemptStateProto where
  defaultValue = RMATTEMPT_NEW
 
toMaybe'Enum :: Prelude'.Int -> P'.Maybe RMAppAttemptStateProto
toMaybe'Enum 1 = Prelude'.Just RMATTEMPT_NEW
toMaybe'Enum 2 = Prelude'.Just RMATTEMPT_SUBMITTED
toMaybe'Enum 3 = Prelude'.Just RMATTEMPT_SCHEDULED
toMaybe'Enum 4 = Prelude'.Just RMATTEMPT_ALLOCATED
toMaybe'Enum 5 = Prelude'.Just RMATTEMPT_LAUNCHED
toMaybe'Enum 6 = Prelude'.Just RMATTEMPT_FAILED
toMaybe'Enum 7 = Prelude'.Just RMATTEMPT_RUNNING
toMaybe'Enum 8 = Prelude'.Just RMATTEMPT_FINISHING
toMaybe'Enum 9 = Prelude'.Just RMATTEMPT_FINISHED
toMaybe'Enum 10 = Prelude'.Just RMATTEMPT_KILLED
toMaybe'Enum 11 = Prelude'.Just RMATTEMPT_ALLOCATED_SAVING
toMaybe'Enum 12 = Prelude'.Just RMATTEMPT_LAUNCHED_UNMANAGED_SAVING
toMaybe'Enum 13 = Prelude'.Just RMATTEMPT_RECOVERED
toMaybe'Enum 14 = Prelude'.Just RMATTEMPT_FINAL_SAVING
toMaybe'Enum _ = Prelude'.Nothing
 
instance Prelude'.Enum RMAppAttemptStateProto where
  fromEnum RMATTEMPT_NEW = 1
  fromEnum RMATTEMPT_SUBMITTED = 2
  fromEnum RMATTEMPT_SCHEDULED = 3
  fromEnum RMATTEMPT_ALLOCATED = 4
  fromEnum RMATTEMPT_LAUNCHED = 5
  fromEnum RMATTEMPT_FAILED = 6
  fromEnum RMATTEMPT_RUNNING = 7
  fromEnum RMATTEMPT_FINISHING = 8
  fromEnum RMATTEMPT_FINISHED = 9
  fromEnum RMATTEMPT_KILLED = 10
  fromEnum RMATTEMPT_ALLOCATED_SAVING = 11
  fromEnum RMATTEMPT_LAUNCHED_UNMANAGED_SAVING = 12
  fromEnum RMATTEMPT_RECOVERED = 13
  fromEnum RMATTEMPT_FINAL_SAVING = 14
  toEnum
   = P'.fromMaybe
      (Prelude'.error
        "hprotoc generated code: toEnum failure for type Hadoop.Protos.YarnServerResourceManagerRecoveryProtos.RMAppAttemptStateProto")
      . toMaybe'Enum
  succ RMATTEMPT_NEW = RMATTEMPT_SUBMITTED
  succ RMATTEMPT_SUBMITTED = RMATTEMPT_SCHEDULED
  succ RMATTEMPT_SCHEDULED = RMATTEMPT_ALLOCATED
  succ RMATTEMPT_ALLOCATED = RMATTEMPT_LAUNCHED
  succ RMATTEMPT_LAUNCHED = RMATTEMPT_FAILED
  succ RMATTEMPT_FAILED = RMATTEMPT_RUNNING
  succ RMATTEMPT_RUNNING = RMATTEMPT_FINISHING
  succ RMATTEMPT_FINISHING = RMATTEMPT_FINISHED
  succ RMATTEMPT_FINISHED = RMATTEMPT_KILLED
  succ RMATTEMPT_KILLED = RMATTEMPT_ALLOCATED_SAVING
  succ RMATTEMPT_ALLOCATED_SAVING = RMATTEMPT_LAUNCHED_UNMANAGED_SAVING
  succ RMATTEMPT_LAUNCHED_UNMANAGED_SAVING = RMATTEMPT_RECOVERED
  succ RMATTEMPT_RECOVERED = RMATTEMPT_FINAL_SAVING
  succ _
   = Prelude'.error
      "hprotoc generated code: succ failure for type Hadoop.Protos.YarnServerResourceManagerRecoveryProtos.RMAppAttemptStateProto"
  pred RMATTEMPT_SUBMITTED = RMATTEMPT_NEW
  pred RMATTEMPT_SCHEDULED = RMATTEMPT_SUBMITTED
  pred RMATTEMPT_ALLOCATED = RMATTEMPT_SCHEDULED
  pred RMATTEMPT_LAUNCHED = RMATTEMPT_ALLOCATED
  pred RMATTEMPT_FAILED = RMATTEMPT_LAUNCHED
  pred RMATTEMPT_RUNNING = RMATTEMPT_FAILED
  pred RMATTEMPT_FINISHING = RMATTEMPT_RUNNING
  pred RMATTEMPT_FINISHED = RMATTEMPT_FINISHING
  pred RMATTEMPT_KILLED = RMATTEMPT_FINISHED
  pred RMATTEMPT_ALLOCATED_SAVING = RMATTEMPT_KILLED
  pred RMATTEMPT_LAUNCHED_UNMANAGED_SAVING = RMATTEMPT_ALLOCATED_SAVING
  pred RMATTEMPT_RECOVERED = RMATTEMPT_LAUNCHED_UNMANAGED_SAVING
  pred RMATTEMPT_FINAL_SAVING = RMATTEMPT_RECOVERED
  pred _
   = Prelude'.error
      "hprotoc generated code: pred failure for type Hadoop.Protos.YarnServerResourceManagerRecoveryProtos.RMAppAttemptStateProto"
 
instance P'.Wire RMAppAttemptStateProto where
  wireSize ft' enum = P'.wireSize ft' (Prelude'.fromEnum enum)
  wirePut ft' enum = P'.wirePut ft' (Prelude'.fromEnum enum)
  wireGet 14 = P'.wireGetEnum toMaybe'Enum
  wireGet ft' = P'.wireGetErr ft'
  wireGetPacked 14 = P'.wireGetPackedEnum toMaybe'Enum
  wireGetPacked ft' = P'.wireGetErr ft'
 
instance P'.GPB RMAppAttemptStateProto
 
instance P'.MessageAPI msg' (msg' -> RMAppAttemptStateProto) RMAppAttemptStateProto where
  getVal m' f' = f' m'
 
instance P'.ReflectEnum RMAppAttemptStateProto where
  reflectEnum
   = [(1, "RMATTEMPT_NEW", RMATTEMPT_NEW), (2, "RMATTEMPT_SUBMITTED", RMATTEMPT_SUBMITTED),
      (3, "RMATTEMPT_SCHEDULED", RMATTEMPT_SCHEDULED), (4, "RMATTEMPT_ALLOCATED", RMATTEMPT_ALLOCATED),
      (5, "RMATTEMPT_LAUNCHED", RMATTEMPT_LAUNCHED), (6, "RMATTEMPT_FAILED", RMATTEMPT_FAILED),
      (7, "RMATTEMPT_RUNNING", RMATTEMPT_RUNNING), (8, "RMATTEMPT_FINISHING", RMATTEMPT_FINISHING),
      (9, "RMATTEMPT_FINISHED", RMATTEMPT_FINISHED), (10, "RMATTEMPT_KILLED", RMATTEMPT_KILLED),
      (11, "RMATTEMPT_ALLOCATED_SAVING", RMATTEMPT_ALLOCATED_SAVING),
      (12, "RMATTEMPT_LAUNCHED_UNMANAGED_SAVING", RMATTEMPT_LAUNCHED_UNMANAGED_SAVING),
      (13, "RMATTEMPT_RECOVERED", RMATTEMPT_RECOVERED), (14, "RMATTEMPT_FINAL_SAVING", RMATTEMPT_FINAL_SAVING)]
  reflectEnumInfo _
   = P'.EnumInfo
      (P'.makePNF (P'.pack ".hadoop.yarn.RMAppAttemptStateProto") ["Hadoop", "Protos"] ["YarnServerResourceManagerRecoveryProtos"]
        "RMAppAttemptStateProto")
      ["Hadoop", "Protos", "YarnServerResourceManagerRecoveryProtos", "RMAppAttemptStateProto.hs"]
      [(1, "RMATTEMPT_NEW"), (2, "RMATTEMPT_SUBMITTED"), (3, "RMATTEMPT_SCHEDULED"), (4, "RMATTEMPT_ALLOCATED"),
       (5, "RMATTEMPT_LAUNCHED"), (6, "RMATTEMPT_FAILED"), (7, "RMATTEMPT_RUNNING"), (8, "RMATTEMPT_FINISHING"),
       (9, "RMATTEMPT_FINISHED"), (10, "RMATTEMPT_KILLED"), (11, "RMATTEMPT_ALLOCATED_SAVING"),
       (12, "RMATTEMPT_LAUNCHED_UNMANAGED_SAVING"), (13, "RMATTEMPT_RECOVERED"), (14, "RMATTEMPT_FINAL_SAVING")]
 
instance P'.TextType RMAppAttemptStateProto where
  tellT = P'.tellShow
  getT = P'.getRead