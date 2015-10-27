{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.YarnProtos.YarnApplicationStateProto (YarnApplicationStateProto(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data YarnApplicationStateProto = NEW
                               | NEW_SAVING
                               | SUBMITTED
                               | ACCEPTED
                               | RUNNING
                               | FINISHED
                               | FAILED
                               | KILLED
                               deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable YarnApplicationStateProto
 
instance Prelude'.Bounded YarnApplicationStateProto where
  minBound = NEW
  maxBound = KILLED
 
instance P'.Default YarnApplicationStateProto where
  defaultValue = NEW
 
toMaybe'Enum :: Prelude'.Int -> P'.Maybe YarnApplicationStateProto
toMaybe'Enum 1 = Prelude'.Just NEW
toMaybe'Enum 2 = Prelude'.Just NEW_SAVING
toMaybe'Enum 3 = Prelude'.Just SUBMITTED
toMaybe'Enum 4 = Prelude'.Just ACCEPTED
toMaybe'Enum 5 = Prelude'.Just RUNNING
toMaybe'Enum 6 = Prelude'.Just FINISHED
toMaybe'Enum 7 = Prelude'.Just FAILED
toMaybe'Enum 8 = Prelude'.Just KILLED
toMaybe'Enum _ = Prelude'.Nothing
 
instance Prelude'.Enum YarnApplicationStateProto where
  fromEnum NEW = 1
  fromEnum NEW_SAVING = 2
  fromEnum SUBMITTED = 3
  fromEnum ACCEPTED = 4
  fromEnum RUNNING = 5
  fromEnum FINISHED = 6
  fromEnum FAILED = 7
  fromEnum KILLED = 8
  toEnum
   = P'.fromMaybe
      (Prelude'.error "hprotoc generated code: toEnum failure for type Hadoop.Protos.YarnProtos.YarnApplicationStateProto")
      . toMaybe'Enum
  succ NEW = NEW_SAVING
  succ NEW_SAVING = SUBMITTED
  succ SUBMITTED = ACCEPTED
  succ ACCEPTED = RUNNING
  succ RUNNING = FINISHED
  succ FINISHED = FAILED
  succ FAILED = KILLED
  succ _ = Prelude'.error "hprotoc generated code: succ failure for type Hadoop.Protos.YarnProtos.YarnApplicationStateProto"
  pred NEW_SAVING = NEW
  pred SUBMITTED = NEW_SAVING
  pred ACCEPTED = SUBMITTED
  pred RUNNING = ACCEPTED
  pred FINISHED = RUNNING
  pred FAILED = FINISHED
  pred KILLED = FAILED
  pred _ = Prelude'.error "hprotoc generated code: pred failure for type Hadoop.Protos.YarnProtos.YarnApplicationStateProto"
 
instance P'.Wire YarnApplicationStateProto where
  wireSize ft' enum = P'.wireSize ft' (Prelude'.fromEnum enum)
  wirePut ft' enum = P'.wirePut ft' (Prelude'.fromEnum enum)
  wireGet 14 = P'.wireGetEnum toMaybe'Enum
  wireGet ft' = P'.wireGetErr ft'
  wireGetPacked 14 = P'.wireGetPackedEnum toMaybe'Enum
  wireGetPacked ft' = P'.wireGetErr ft'
 
instance P'.GPB YarnApplicationStateProto
 
instance P'.MessageAPI msg' (msg' -> YarnApplicationStateProto) YarnApplicationStateProto where
  getVal m' f' = f' m'
 
instance P'.ReflectEnum YarnApplicationStateProto where
  reflectEnum
   = [(1, "NEW", NEW), (2, "NEW_SAVING", NEW_SAVING), (3, "SUBMITTED", SUBMITTED), (4, "ACCEPTED", ACCEPTED),
      (5, "RUNNING", RUNNING), (6, "FINISHED", FINISHED), (7, "FAILED", FAILED), (8, "KILLED", KILLED)]
  reflectEnumInfo _
   = P'.EnumInfo
      (P'.makePNF (P'.pack ".hadoop.yarn.YarnApplicationStateProto") ["Hadoop", "Protos"] ["YarnProtos"]
        "YarnApplicationStateProto")
      ["Hadoop", "Protos", "YarnProtos", "YarnApplicationStateProto.hs"]
      [(1, "NEW"), (2, "NEW_SAVING"), (3, "SUBMITTED"), (4, "ACCEPTED"), (5, "RUNNING"), (6, "FINISHED"), (7, "FAILED"),
       (8, "KILLED")]
 
instance P'.TextType YarnApplicationStateProto where
  tellT = P'.tellShow
  getT = P'.getRead