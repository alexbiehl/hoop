{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.DataTransferProtos.OpWriteBlockProto.BlockConstructionStage (BlockConstructionStage(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data BlockConstructionStage = PIPELINE_SETUP_APPEND
                            | PIPELINE_SETUP_APPEND_RECOVERY
                            | DATA_STREAMING
                            | PIPELINE_SETUP_STREAMING_RECOVERY
                            | PIPELINE_CLOSE
                            | PIPELINE_CLOSE_RECOVERY
                            | PIPELINE_SETUP_CREATE
                            | TRANSFER_RBW
                            | TRANSFER_FINALIZED
                            deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable BlockConstructionStage
 
instance Prelude'.Bounded BlockConstructionStage where
  minBound = PIPELINE_SETUP_APPEND
  maxBound = TRANSFER_FINALIZED
 
instance P'.Default BlockConstructionStage where
  defaultValue = PIPELINE_SETUP_APPEND
 
toMaybe'Enum :: Prelude'.Int -> P'.Maybe BlockConstructionStage
toMaybe'Enum 0 = Prelude'.Just PIPELINE_SETUP_APPEND
toMaybe'Enum 1 = Prelude'.Just PIPELINE_SETUP_APPEND_RECOVERY
toMaybe'Enum 2 = Prelude'.Just DATA_STREAMING
toMaybe'Enum 3 = Prelude'.Just PIPELINE_SETUP_STREAMING_RECOVERY
toMaybe'Enum 4 = Prelude'.Just PIPELINE_CLOSE
toMaybe'Enum 5 = Prelude'.Just PIPELINE_CLOSE_RECOVERY
toMaybe'Enum 6 = Prelude'.Just PIPELINE_SETUP_CREATE
toMaybe'Enum 7 = Prelude'.Just TRANSFER_RBW
toMaybe'Enum 8 = Prelude'.Just TRANSFER_FINALIZED
toMaybe'Enum _ = Prelude'.Nothing
 
instance Prelude'.Enum BlockConstructionStage where
  fromEnum PIPELINE_SETUP_APPEND = 0
  fromEnum PIPELINE_SETUP_APPEND_RECOVERY = 1
  fromEnum DATA_STREAMING = 2
  fromEnum PIPELINE_SETUP_STREAMING_RECOVERY = 3
  fromEnum PIPELINE_CLOSE = 4
  fromEnum PIPELINE_CLOSE_RECOVERY = 5
  fromEnum PIPELINE_SETUP_CREATE = 6
  fromEnum TRANSFER_RBW = 7
  fromEnum TRANSFER_FINALIZED = 8
  toEnum
   = P'.fromMaybe
      (Prelude'.error
        "hprotoc generated code: toEnum failure for type Hadoop.Protos.DataTransferProtos.OpWriteBlockProto.BlockConstructionStage")
      . toMaybe'Enum
  succ PIPELINE_SETUP_APPEND = PIPELINE_SETUP_APPEND_RECOVERY
  succ PIPELINE_SETUP_APPEND_RECOVERY = DATA_STREAMING
  succ DATA_STREAMING = PIPELINE_SETUP_STREAMING_RECOVERY
  succ PIPELINE_SETUP_STREAMING_RECOVERY = PIPELINE_CLOSE
  succ PIPELINE_CLOSE = PIPELINE_CLOSE_RECOVERY
  succ PIPELINE_CLOSE_RECOVERY = PIPELINE_SETUP_CREATE
  succ PIPELINE_SETUP_CREATE = TRANSFER_RBW
  succ TRANSFER_RBW = TRANSFER_FINALIZED
  succ _
   = Prelude'.error
      "hprotoc generated code: succ failure for type Hadoop.Protos.DataTransferProtos.OpWriteBlockProto.BlockConstructionStage"
  pred PIPELINE_SETUP_APPEND_RECOVERY = PIPELINE_SETUP_APPEND
  pred DATA_STREAMING = PIPELINE_SETUP_APPEND_RECOVERY
  pred PIPELINE_SETUP_STREAMING_RECOVERY = DATA_STREAMING
  pred PIPELINE_CLOSE = PIPELINE_SETUP_STREAMING_RECOVERY
  pred PIPELINE_CLOSE_RECOVERY = PIPELINE_CLOSE
  pred PIPELINE_SETUP_CREATE = PIPELINE_CLOSE_RECOVERY
  pred TRANSFER_RBW = PIPELINE_SETUP_CREATE
  pred TRANSFER_FINALIZED = TRANSFER_RBW
  pred _
   = Prelude'.error
      "hprotoc generated code: pred failure for type Hadoop.Protos.DataTransferProtos.OpWriteBlockProto.BlockConstructionStage"
 
instance P'.Wire BlockConstructionStage where
  wireSize ft' enum = P'.wireSize ft' (Prelude'.fromEnum enum)
  wirePut ft' enum = P'.wirePut ft' (Prelude'.fromEnum enum)
  wireGet 14 = P'.wireGetEnum toMaybe'Enum
  wireGet ft' = P'.wireGetErr ft'
  wireGetPacked 14 = P'.wireGetPackedEnum toMaybe'Enum
  wireGetPacked ft' = P'.wireGetErr ft'
 
instance P'.GPB BlockConstructionStage
 
instance P'.MessageAPI msg' (msg' -> BlockConstructionStage) BlockConstructionStage where
  getVal m' f' = f' m'
 
instance P'.ReflectEnum BlockConstructionStage where
  reflectEnum
   = [(0, "PIPELINE_SETUP_APPEND", PIPELINE_SETUP_APPEND), (1, "PIPELINE_SETUP_APPEND_RECOVERY", PIPELINE_SETUP_APPEND_RECOVERY),
      (2, "DATA_STREAMING", DATA_STREAMING), (3, "PIPELINE_SETUP_STREAMING_RECOVERY", PIPELINE_SETUP_STREAMING_RECOVERY),
      (4, "PIPELINE_CLOSE", PIPELINE_CLOSE), (5, "PIPELINE_CLOSE_RECOVERY", PIPELINE_CLOSE_RECOVERY),
      (6, "PIPELINE_SETUP_CREATE", PIPELINE_SETUP_CREATE), (7, "TRANSFER_RBW", TRANSFER_RBW),
      (8, "TRANSFER_FINALIZED", TRANSFER_FINALIZED)]
  reflectEnumInfo _
   = P'.EnumInfo
      (P'.makePNF (P'.pack ".hadoop.hdfs.OpWriteBlockProto.BlockConstructionStage") ["Hadoop", "Protos"]
        ["DataTransferProtos", "OpWriteBlockProto"]
        "BlockConstructionStage")
      ["Hadoop", "Protos", "DataTransferProtos", "OpWriteBlockProto", "BlockConstructionStage.hs"]
      [(0, "PIPELINE_SETUP_APPEND"), (1, "PIPELINE_SETUP_APPEND_RECOVERY"), (2, "DATA_STREAMING"),
       (3, "PIPELINE_SETUP_STREAMING_RECOVERY"), (4, "PIPELINE_CLOSE"), (5, "PIPELINE_CLOSE_RECOVERY"),
       (6, "PIPELINE_SETUP_CREATE"), (7, "TRANSFER_RBW"), (8, "TRANSFER_FINALIZED")]
 
instance P'.TextType BlockConstructionStage where
  tellT = P'.tellShow
  getT = P'.getRead