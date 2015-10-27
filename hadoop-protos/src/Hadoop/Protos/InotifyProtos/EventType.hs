{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.InotifyProtos.EventType (EventType(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data EventType = EVENT_CREATE
               | EVENT_CLOSE
               | EVENT_APPEND
               | EVENT_RENAME
               | EVENT_METADATA
               | EVENT_UNLINK
               | EVENT_TRUNCATE
               deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable EventType
 
instance Prelude'.Bounded EventType where
  minBound = EVENT_CREATE
  maxBound = EVENT_TRUNCATE
 
instance P'.Default EventType where
  defaultValue = EVENT_CREATE
 
toMaybe'Enum :: Prelude'.Int -> P'.Maybe EventType
toMaybe'Enum 0 = Prelude'.Just EVENT_CREATE
toMaybe'Enum 1 = Prelude'.Just EVENT_CLOSE
toMaybe'Enum 2 = Prelude'.Just EVENT_APPEND
toMaybe'Enum 3 = Prelude'.Just EVENT_RENAME
toMaybe'Enum 4 = Prelude'.Just EVENT_METADATA
toMaybe'Enum 5 = Prelude'.Just EVENT_UNLINK
toMaybe'Enum 6 = Prelude'.Just EVENT_TRUNCATE
toMaybe'Enum _ = Prelude'.Nothing
 
instance Prelude'.Enum EventType where
  fromEnum EVENT_CREATE = 0
  fromEnum EVENT_CLOSE = 1
  fromEnum EVENT_APPEND = 2
  fromEnum EVENT_RENAME = 3
  fromEnum EVENT_METADATA = 4
  fromEnum EVENT_UNLINK = 5
  fromEnum EVENT_TRUNCATE = 6
  toEnum
   = P'.fromMaybe (Prelude'.error "hprotoc generated code: toEnum failure for type Hadoop.Protos.InotifyProtos.EventType") .
      toMaybe'Enum
  succ EVENT_CREATE = EVENT_CLOSE
  succ EVENT_CLOSE = EVENT_APPEND
  succ EVENT_APPEND = EVENT_RENAME
  succ EVENT_RENAME = EVENT_METADATA
  succ EVENT_METADATA = EVENT_UNLINK
  succ EVENT_UNLINK = EVENT_TRUNCATE
  succ _ = Prelude'.error "hprotoc generated code: succ failure for type Hadoop.Protos.InotifyProtos.EventType"
  pred EVENT_CLOSE = EVENT_CREATE
  pred EVENT_APPEND = EVENT_CLOSE
  pred EVENT_RENAME = EVENT_APPEND
  pred EVENT_METADATA = EVENT_RENAME
  pred EVENT_UNLINK = EVENT_METADATA
  pred EVENT_TRUNCATE = EVENT_UNLINK
  pred _ = Prelude'.error "hprotoc generated code: pred failure for type Hadoop.Protos.InotifyProtos.EventType"
 
instance P'.Wire EventType where
  wireSize ft' enum = P'.wireSize ft' (Prelude'.fromEnum enum)
  wirePut ft' enum = P'.wirePut ft' (Prelude'.fromEnum enum)
  wireGet 14 = P'.wireGetEnum toMaybe'Enum
  wireGet ft' = P'.wireGetErr ft'
  wireGetPacked 14 = P'.wireGetPackedEnum toMaybe'Enum
  wireGetPacked ft' = P'.wireGetErr ft'
 
instance P'.GPB EventType
 
instance P'.MessageAPI msg' (msg' -> EventType) EventType where
  getVal m' f' = f' m'
 
instance P'.ReflectEnum EventType where
  reflectEnum
   = [(0, "EVENT_CREATE", EVENT_CREATE), (1, "EVENT_CLOSE", EVENT_CLOSE), (2, "EVENT_APPEND", EVENT_APPEND),
      (3, "EVENT_RENAME", EVENT_RENAME), (4, "EVENT_METADATA", EVENT_METADATA), (5, "EVENT_UNLINK", EVENT_UNLINK),
      (6, "EVENT_TRUNCATE", EVENT_TRUNCATE)]
  reflectEnumInfo _
   = P'.EnumInfo (P'.makePNF (P'.pack ".hadoop.hdfs.EventType") ["Hadoop", "Protos"] ["InotifyProtos"] "EventType")
      ["Hadoop", "Protos", "InotifyProtos", "EventType.hs"]
      [(0, "EVENT_CREATE"), (1, "EVENT_CLOSE"), (2, "EVENT_APPEND"), (3, "EVENT_RENAME"), (4, "EVENT_METADATA"),
       (5, "EVENT_UNLINK"), (6, "EVENT_TRUNCATE")]
 
instance P'.TextType EventType where
  tellT = P'.tellShow
  getT = P'.getRead