{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.YarnProtos.QueueStateProto (QueueStateProto(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data QueueStateProto = Q_STOPPED
                     | Q_RUNNING
                     deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable QueueStateProto
 
instance Prelude'.Bounded QueueStateProto where
  minBound = Q_STOPPED
  maxBound = Q_RUNNING
 
instance P'.Default QueueStateProto where
  defaultValue = Q_STOPPED
 
toMaybe'Enum :: Prelude'.Int -> P'.Maybe QueueStateProto
toMaybe'Enum 1 = Prelude'.Just Q_STOPPED
toMaybe'Enum 2 = Prelude'.Just Q_RUNNING
toMaybe'Enum _ = Prelude'.Nothing
 
instance Prelude'.Enum QueueStateProto where
  fromEnum Q_STOPPED = 1
  fromEnum Q_RUNNING = 2
  toEnum
   = P'.fromMaybe (Prelude'.error "hprotoc generated code: toEnum failure for type Hadoop.Protos.YarnProtos.QueueStateProto") .
      toMaybe'Enum
  succ Q_STOPPED = Q_RUNNING
  succ _ = Prelude'.error "hprotoc generated code: succ failure for type Hadoop.Protos.YarnProtos.QueueStateProto"
  pred Q_RUNNING = Q_STOPPED
  pred _ = Prelude'.error "hprotoc generated code: pred failure for type Hadoop.Protos.YarnProtos.QueueStateProto"
 
instance P'.Wire QueueStateProto where
  wireSize ft' enum = P'.wireSize ft' (Prelude'.fromEnum enum)
  wirePut ft' enum = P'.wirePut ft' (Prelude'.fromEnum enum)
  wireGet 14 = P'.wireGetEnum toMaybe'Enum
  wireGet ft' = P'.wireGetErr ft'
  wireGetPacked 14 = P'.wireGetPackedEnum toMaybe'Enum
  wireGetPacked ft' = P'.wireGetErr ft'
 
instance P'.GPB QueueStateProto
 
instance P'.MessageAPI msg' (msg' -> QueueStateProto) QueueStateProto where
  getVal m' f' = f' m'
 
instance P'.ReflectEnum QueueStateProto where
  reflectEnum = [(1, "Q_STOPPED", Q_STOPPED), (2, "Q_RUNNING", Q_RUNNING)]
  reflectEnumInfo _
   = P'.EnumInfo (P'.makePNF (P'.pack ".hadoop.yarn.QueueStateProto") ["Hadoop", "Protos"] ["YarnProtos"] "QueueStateProto")
      ["Hadoop", "Protos", "YarnProtos", "QueueStateProto.hs"]
      [(1, "Q_STOPPED"), (2, "Q_RUNNING")]
 
instance P'.TextType QueueStateProto where
  tellT = P'.tellShow
  getT = P'.getRead