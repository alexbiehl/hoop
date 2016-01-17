{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.DataTransferProtos.DataTransferEncryptorMessageProto.DataTransferEncryptorStatus
       (DataTransferEncryptorStatus(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data DataTransferEncryptorStatus = SUCCESS
                                 | ERROR_UNKNOWN_KEY
                                 | ERROR
                                 deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable,
                                           Prelude'.Data)
 
instance P'.Mergeable DataTransferEncryptorStatus
 
instance Prelude'.Bounded DataTransferEncryptorStatus where
  minBound = SUCCESS
  maxBound = ERROR
 
instance P'.Default DataTransferEncryptorStatus where
  defaultValue = SUCCESS
 
toMaybe'Enum :: Prelude'.Int -> P'.Maybe DataTransferEncryptorStatus
toMaybe'Enum 0 = Prelude'.Just SUCCESS
toMaybe'Enum 1 = Prelude'.Just ERROR_UNKNOWN_KEY
toMaybe'Enum 2 = Prelude'.Just ERROR
toMaybe'Enum _ = Prelude'.Nothing
 
instance Prelude'.Enum DataTransferEncryptorStatus where
  fromEnum SUCCESS = 0
  fromEnum ERROR_UNKNOWN_KEY = 1
  fromEnum ERROR = 2
  toEnum
   = P'.fromMaybe
      (Prelude'.error
        "hprotoc generated code: toEnum failure for type Hadoop.Protos.DataTransferProtos.DataTransferEncryptorMessageProto.DataTransferEncryptorStatus")
      . toMaybe'Enum
  succ SUCCESS = ERROR_UNKNOWN_KEY
  succ ERROR_UNKNOWN_KEY = ERROR
  succ _
   = Prelude'.error
      "hprotoc generated code: succ failure for type Hadoop.Protos.DataTransferProtos.DataTransferEncryptorMessageProto.DataTransferEncryptorStatus"
  pred ERROR_UNKNOWN_KEY = SUCCESS
  pred ERROR = ERROR_UNKNOWN_KEY
  pred _
   = Prelude'.error
      "hprotoc generated code: pred failure for type Hadoop.Protos.DataTransferProtos.DataTransferEncryptorMessageProto.DataTransferEncryptorStatus"
 
instance P'.Wire DataTransferEncryptorStatus where
  wireSize ft' enum = P'.wireSize ft' (Prelude'.fromEnum enum)
  wirePut ft' enum = P'.wirePut ft' (Prelude'.fromEnum enum)
  wireGet 14 = P'.wireGetEnum toMaybe'Enum
  wireGet ft' = P'.wireGetErr ft'
  wireGetPacked 14 = P'.wireGetPackedEnum toMaybe'Enum
  wireGetPacked ft' = P'.wireGetErr ft'
 
instance P'.GPB DataTransferEncryptorStatus
 
instance P'.MessageAPI msg' (msg' -> DataTransferEncryptorStatus) DataTransferEncryptorStatus where
  getVal m' f' = f' m'
 
instance P'.ReflectEnum DataTransferEncryptorStatus where
  reflectEnum = [(0, "SUCCESS", SUCCESS), (1, "ERROR_UNKNOWN_KEY", ERROR_UNKNOWN_KEY), (2, "ERROR", ERROR)]
  reflectEnumInfo _
   = P'.EnumInfo
      (P'.makePNF (P'.pack ".hadoop.hdfs.DataTransferEncryptorMessageProto.DataTransferEncryptorStatus") ["Hadoop", "Protos"]
        ["DataTransferProtos", "DataTransferEncryptorMessageProto"]
        "DataTransferEncryptorStatus")
      ["Hadoop", "Protos", "DataTransferProtos", "DataTransferEncryptorMessageProto", "DataTransferEncryptorStatus.hs"]
      [(0, "SUCCESS"), (1, "ERROR_UNKNOWN_KEY"), (2, "ERROR")]
 
instance P'.TextType DataTransferEncryptorStatus where
  tellT = P'.tellShow
  getT = P'.getRead