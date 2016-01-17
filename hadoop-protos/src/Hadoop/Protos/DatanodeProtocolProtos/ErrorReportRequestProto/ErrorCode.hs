{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.DatanodeProtocolProtos.ErrorReportRequestProto.ErrorCode (ErrorCode(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data ErrorCode = NOTIFY
               | DISK_ERROR
               | INVALID_BLOCK
               | FATAL_DISK_ERROR
               deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable ErrorCode
 
instance Prelude'.Bounded ErrorCode where
  minBound = NOTIFY
  maxBound = FATAL_DISK_ERROR
 
instance P'.Default ErrorCode where
  defaultValue = NOTIFY
 
toMaybe'Enum :: Prelude'.Int -> P'.Maybe ErrorCode
toMaybe'Enum 0 = Prelude'.Just NOTIFY
toMaybe'Enum 1 = Prelude'.Just DISK_ERROR
toMaybe'Enum 2 = Prelude'.Just INVALID_BLOCK
toMaybe'Enum 3 = Prelude'.Just FATAL_DISK_ERROR
toMaybe'Enum _ = Prelude'.Nothing
 
instance Prelude'.Enum ErrorCode where
  fromEnum NOTIFY = 0
  fromEnum DISK_ERROR = 1
  fromEnum INVALID_BLOCK = 2
  fromEnum FATAL_DISK_ERROR = 3
  toEnum
   = P'.fromMaybe
      (Prelude'.error
        "hprotoc generated code: toEnum failure for type Hadoop.Protos.DatanodeProtocolProtos.ErrorReportRequestProto.ErrorCode")
      . toMaybe'Enum
  succ NOTIFY = DISK_ERROR
  succ DISK_ERROR = INVALID_BLOCK
  succ INVALID_BLOCK = FATAL_DISK_ERROR
  succ _
   = Prelude'.error
      "hprotoc generated code: succ failure for type Hadoop.Protos.DatanodeProtocolProtos.ErrorReportRequestProto.ErrorCode"
  pred DISK_ERROR = NOTIFY
  pred INVALID_BLOCK = DISK_ERROR
  pred FATAL_DISK_ERROR = INVALID_BLOCK
  pred _
   = Prelude'.error
      "hprotoc generated code: pred failure for type Hadoop.Protos.DatanodeProtocolProtos.ErrorReportRequestProto.ErrorCode"
 
instance P'.Wire ErrorCode where
  wireSize ft' enum = P'.wireSize ft' (Prelude'.fromEnum enum)
  wirePut ft' enum = P'.wirePut ft' (Prelude'.fromEnum enum)
  wireGet 14 = P'.wireGetEnum toMaybe'Enum
  wireGet ft' = P'.wireGetErr ft'
  wireGetPacked 14 = P'.wireGetPackedEnum toMaybe'Enum
  wireGetPacked ft' = P'.wireGetErr ft'
 
instance P'.GPB ErrorCode
 
instance P'.MessageAPI msg' (msg' -> ErrorCode) ErrorCode where
  getVal m' f' = f' m'
 
instance P'.ReflectEnum ErrorCode where
  reflectEnum
   = [(0, "NOTIFY", NOTIFY), (1, "DISK_ERROR", DISK_ERROR), (2, "INVALID_BLOCK", INVALID_BLOCK),
      (3, "FATAL_DISK_ERROR", FATAL_DISK_ERROR)]
  reflectEnumInfo _
   = P'.EnumInfo
      (P'.makePNF (P'.pack ".hadoop.hdfs.datanode.ErrorReportRequestProto.ErrorCode") ["Hadoop", "Protos"]
        ["DatanodeProtocolProtos", "ErrorReportRequestProto"]
        "ErrorCode")
      ["Hadoop", "Protos", "DatanodeProtocolProtos", "ErrorReportRequestProto", "ErrorCode.hs"]
      [(0, "NOTIFY"), (1, "DISK_ERROR"), (2, "INVALID_BLOCK"), (3, "FATAL_DISK_ERROR")]
 
instance P'.TextType ErrorCode where
  tellT = P'.tellShow
  getT = P'.getRead