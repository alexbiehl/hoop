{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.DatanodeProtocolProtos.ReceivedDeletedBlockInfoProto.BlockStatus (BlockStatus(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data BlockStatus = RECEIVING
                 | RECEIVED
                 | DELETED
                 deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable BlockStatus
 
instance Prelude'.Bounded BlockStatus where
  minBound = RECEIVING
  maxBound = DELETED
 
instance P'.Default BlockStatus where
  defaultValue = RECEIVING
 
toMaybe'Enum :: Prelude'.Int -> P'.Maybe BlockStatus
toMaybe'Enum 1 = Prelude'.Just RECEIVING
toMaybe'Enum 2 = Prelude'.Just RECEIVED
toMaybe'Enum 3 = Prelude'.Just DELETED
toMaybe'Enum _ = Prelude'.Nothing
 
instance Prelude'.Enum BlockStatus where
  fromEnum RECEIVING = 1
  fromEnum RECEIVED = 2
  fromEnum DELETED = 3
  toEnum
   = P'.fromMaybe
      (Prelude'.error
        "hprotoc generated code: toEnum failure for type Hadoop.Protos.DatanodeProtocolProtos.ReceivedDeletedBlockInfoProto.BlockStatus")
      . toMaybe'Enum
  succ RECEIVING = RECEIVED
  succ RECEIVED = DELETED
  succ _
   = Prelude'.error
      "hprotoc generated code: succ failure for type Hadoop.Protos.DatanodeProtocolProtos.ReceivedDeletedBlockInfoProto.BlockStatus"
  pred RECEIVED = RECEIVING
  pred DELETED = RECEIVED
  pred _
   = Prelude'.error
      "hprotoc generated code: pred failure for type Hadoop.Protos.DatanodeProtocolProtos.ReceivedDeletedBlockInfoProto.BlockStatus"
 
instance P'.Wire BlockStatus where
  wireSize ft' enum = P'.wireSize ft' (Prelude'.fromEnum enum)
  wirePut ft' enum = P'.wirePut ft' (Prelude'.fromEnum enum)
  wireGet 14 = P'.wireGetEnum toMaybe'Enum
  wireGet ft' = P'.wireGetErr ft'
  wireGetPacked 14 = P'.wireGetPackedEnum toMaybe'Enum
  wireGetPacked ft' = P'.wireGetErr ft'
 
instance P'.GPB BlockStatus
 
instance P'.MessageAPI msg' (msg' -> BlockStatus) BlockStatus where
  getVal m' f' = f' m'
 
instance P'.ReflectEnum BlockStatus where
  reflectEnum = [(1, "RECEIVING", RECEIVING), (2, "RECEIVED", RECEIVED), (3, "DELETED", DELETED)]
  reflectEnumInfo _
   = P'.EnumInfo
      (P'.makePNF (P'.pack ".hadoop.hdfs.datanode.ReceivedDeletedBlockInfoProto.BlockStatus") ["Hadoop", "Protos"]
        ["DatanodeProtocolProtos", "ReceivedDeletedBlockInfoProto"]
        "BlockStatus")
      ["Hadoop", "Protos", "DatanodeProtocolProtos", "ReceivedDeletedBlockInfoProto", "BlockStatus.hs"]
      [(1, "RECEIVING"), (2, "RECEIVED"), (3, "DELETED")]
 
instance P'.TextType BlockStatus where
  tellT = P'.tellShow
  getT = P'.getRead