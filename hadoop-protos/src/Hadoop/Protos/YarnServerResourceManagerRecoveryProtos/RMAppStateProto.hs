{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.YarnServerResourceManagerRecoveryProtos.RMAppStateProto (RMAppStateProto(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data RMAppStateProto = RMAPP_NEW
                     | RMAPP_NEW_SAVING
                     | RMAPP_SUBMITTED
                     | RMAPP_ACCEPTED
                     | RMAPP_RUNNING
                     | RMAPP_FINAL_SAVING
                     | RMAPP_FINISHING
                     | RMAPP_FINISHED
                     | RMAPP_FAILED
                     | RMAPP_KILLED
                     deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable RMAppStateProto
 
instance Prelude'.Bounded RMAppStateProto where
  minBound = RMAPP_NEW
  maxBound = RMAPP_KILLED
 
instance P'.Default RMAppStateProto where
  defaultValue = RMAPP_NEW
 
toMaybe'Enum :: Prelude'.Int -> P'.Maybe RMAppStateProto
toMaybe'Enum 1 = Prelude'.Just RMAPP_NEW
toMaybe'Enum 2 = Prelude'.Just RMAPP_NEW_SAVING
toMaybe'Enum 3 = Prelude'.Just RMAPP_SUBMITTED
toMaybe'Enum 4 = Prelude'.Just RMAPP_ACCEPTED
toMaybe'Enum 5 = Prelude'.Just RMAPP_RUNNING
toMaybe'Enum 6 = Prelude'.Just RMAPP_FINAL_SAVING
toMaybe'Enum 7 = Prelude'.Just RMAPP_FINISHING
toMaybe'Enum 8 = Prelude'.Just RMAPP_FINISHED
toMaybe'Enum 9 = Prelude'.Just RMAPP_FAILED
toMaybe'Enum 10 = Prelude'.Just RMAPP_KILLED
toMaybe'Enum _ = Prelude'.Nothing
 
instance Prelude'.Enum RMAppStateProto where
  fromEnum RMAPP_NEW = 1
  fromEnum RMAPP_NEW_SAVING = 2
  fromEnum RMAPP_SUBMITTED = 3
  fromEnum RMAPP_ACCEPTED = 4
  fromEnum RMAPP_RUNNING = 5
  fromEnum RMAPP_FINAL_SAVING = 6
  fromEnum RMAPP_FINISHING = 7
  fromEnum RMAPP_FINISHED = 8
  fromEnum RMAPP_FAILED = 9
  fromEnum RMAPP_KILLED = 10
  toEnum
   = P'.fromMaybe
      (Prelude'.error
        "hprotoc generated code: toEnum failure for type Hadoop.Protos.YarnServerResourceManagerRecoveryProtos.RMAppStateProto")
      . toMaybe'Enum
  succ RMAPP_NEW = RMAPP_NEW_SAVING
  succ RMAPP_NEW_SAVING = RMAPP_SUBMITTED
  succ RMAPP_SUBMITTED = RMAPP_ACCEPTED
  succ RMAPP_ACCEPTED = RMAPP_RUNNING
  succ RMAPP_RUNNING = RMAPP_FINAL_SAVING
  succ RMAPP_FINAL_SAVING = RMAPP_FINISHING
  succ RMAPP_FINISHING = RMAPP_FINISHED
  succ RMAPP_FINISHED = RMAPP_FAILED
  succ RMAPP_FAILED = RMAPP_KILLED
  succ _
   = Prelude'.error
      "hprotoc generated code: succ failure for type Hadoop.Protos.YarnServerResourceManagerRecoveryProtos.RMAppStateProto"
  pred RMAPP_NEW_SAVING = RMAPP_NEW
  pred RMAPP_SUBMITTED = RMAPP_NEW_SAVING
  pred RMAPP_ACCEPTED = RMAPP_SUBMITTED
  pred RMAPP_RUNNING = RMAPP_ACCEPTED
  pred RMAPP_FINAL_SAVING = RMAPP_RUNNING
  pred RMAPP_FINISHING = RMAPP_FINAL_SAVING
  pred RMAPP_FINISHED = RMAPP_FINISHING
  pred RMAPP_FAILED = RMAPP_FINISHED
  pred RMAPP_KILLED = RMAPP_FAILED
  pred _
   = Prelude'.error
      "hprotoc generated code: pred failure for type Hadoop.Protos.YarnServerResourceManagerRecoveryProtos.RMAppStateProto"
 
instance P'.Wire RMAppStateProto where
  wireSize ft' enum = P'.wireSize ft' (Prelude'.fromEnum enum)
  wirePut ft' enum = P'.wirePut ft' (Prelude'.fromEnum enum)
  wireGet 14 = P'.wireGetEnum toMaybe'Enum
  wireGet ft' = P'.wireGetErr ft'
  wireGetPacked 14 = P'.wireGetPackedEnum toMaybe'Enum
  wireGetPacked ft' = P'.wireGetErr ft'
 
instance P'.GPB RMAppStateProto
 
instance P'.MessageAPI msg' (msg' -> RMAppStateProto) RMAppStateProto where
  getVal m' f' = f' m'
 
instance P'.ReflectEnum RMAppStateProto where
  reflectEnum
   = [(1, "RMAPP_NEW", RMAPP_NEW), (2, "RMAPP_NEW_SAVING", RMAPP_NEW_SAVING), (3, "RMAPP_SUBMITTED", RMAPP_SUBMITTED),
      (4, "RMAPP_ACCEPTED", RMAPP_ACCEPTED), (5, "RMAPP_RUNNING", RMAPP_RUNNING), (6, "RMAPP_FINAL_SAVING", RMAPP_FINAL_SAVING),
      (7, "RMAPP_FINISHING", RMAPP_FINISHING), (8, "RMAPP_FINISHED", RMAPP_FINISHED), (9, "RMAPP_FAILED", RMAPP_FAILED),
      (10, "RMAPP_KILLED", RMAPP_KILLED)]
  reflectEnumInfo _
   = P'.EnumInfo
      (P'.makePNF (P'.pack ".hadoop.yarn.RMAppStateProto") ["Hadoop", "Protos"] ["YarnServerResourceManagerRecoveryProtos"]
        "RMAppStateProto")
      ["Hadoop", "Protos", "YarnServerResourceManagerRecoveryProtos", "RMAppStateProto.hs"]
      [(1, "RMAPP_NEW"), (2, "RMAPP_NEW_SAVING"), (3, "RMAPP_SUBMITTED"), (4, "RMAPP_ACCEPTED"), (5, "RMAPP_RUNNING"),
       (6, "RMAPP_FINAL_SAVING"), (7, "RMAPP_FINISHING"), (8, "RMAPP_FINISHED"), (9, "RMAPP_FAILED"), (10, "RMAPP_KILLED")]
 
instance P'.TextType RMAppStateProto where
  tellT = P'.tellShow
  getT = P'.getRead