{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.DatanodeProtocolProtos.BlockCommandProto.Action (Action(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data Action = TRANSFER
            | INVALIDATE
            | SHUTDOWN
            deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable Action
 
instance Prelude'.Bounded Action where
  minBound = TRANSFER
  maxBound = SHUTDOWN
 
instance P'.Default Action where
  defaultValue = TRANSFER
 
toMaybe'Enum :: Prelude'.Int -> P'.Maybe Action
toMaybe'Enum 1 = Prelude'.Just TRANSFER
toMaybe'Enum 2 = Prelude'.Just INVALIDATE
toMaybe'Enum 3 = Prelude'.Just SHUTDOWN
toMaybe'Enum _ = Prelude'.Nothing
 
instance Prelude'.Enum Action where
  fromEnum TRANSFER = 1
  fromEnum INVALIDATE = 2
  fromEnum SHUTDOWN = 3
  toEnum
   = P'.fromMaybe
      (Prelude'.error
        "hprotoc generated code: toEnum failure for type Hadoop.Protos.DatanodeProtocolProtos.BlockCommandProto.Action")
      . toMaybe'Enum
  succ TRANSFER = INVALIDATE
  succ INVALIDATE = SHUTDOWN
  succ _
   = Prelude'.error "hprotoc generated code: succ failure for type Hadoop.Protos.DatanodeProtocolProtos.BlockCommandProto.Action"
  pred INVALIDATE = TRANSFER
  pred SHUTDOWN = INVALIDATE
  pred _
   = Prelude'.error "hprotoc generated code: pred failure for type Hadoop.Protos.DatanodeProtocolProtos.BlockCommandProto.Action"
 
instance P'.Wire Action where
  wireSize ft' enum = P'.wireSize ft' (Prelude'.fromEnum enum)
  wirePut ft' enum = P'.wirePut ft' (Prelude'.fromEnum enum)
  wireGet 14 = P'.wireGetEnum toMaybe'Enum
  wireGet ft' = P'.wireGetErr ft'
  wireGetPacked 14 = P'.wireGetPackedEnum toMaybe'Enum
  wireGetPacked ft' = P'.wireGetErr ft'
 
instance P'.GPB Action
 
instance P'.MessageAPI msg' (msg' -> Action) Action where
  getVal m' f' = f' m'
 
instance P'.ReflectEnum Action where
  reflectEnum = [(1, "TRANSFER", TRANSFER), (2, "INVALIDATE", INVALIDATE), (3, "SHUTDOWN", SHUTDOWN)]
  reflectEnumInfo _
   = P'.EnumInfo
      (P'.makePNF (P'.pack ".hadoop.hdfs.datanode.BlockCommandProto.Action") ["Hadoop", "Protos"]
        ["DatanodeProtocolProtos", "BlockCommandProto"]
        "Action")
      ["Hadoop", "Protos", "DatanodeProtocolProtos", "BlockCommandProto", "Action.hs"]
      [(1, "TRANSFER"), (2, "INVALIDATE"), (3, "SHUTDOWN")]
 
instance P'.TextType Action where
  tellT = P'.tellShow
  getT = P'.getRead