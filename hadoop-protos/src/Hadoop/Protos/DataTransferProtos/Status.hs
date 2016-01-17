{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.DataTransferProtos.Status (Status(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data Status = SUCCESS
            | ERROR
            | ERROR_CHECKSUM
            | ERROR_INVALID
            | ERROR_EXISTS
            | ERROR_ACCESS_TOKEN
            | CHECKSUM_OK
            | ERROR_UNSUPPORTED
            | OOB_RESTART
            | OOB_RESERVED1
            | OOB_RESERVED2
            | OOB_RESERVED3
            | IN_PROGRESS
            deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable Status
 
instance Prelude'.Bounded Status where
  minBound = SUCCESS
  maxBound = IN_PROGRESS
 
instance P'.Default Status where
  defaultValue = SUCCESS
 
toMaybe'Enum :: Prelude'.Int -> P'.Maybe Status
toMaybe'Enum 0 = Prelude'.Just SUCCESS
toMaybe'Enum 1 = Prelude'.Just ERROR
toMaybe'Enum 2 = Prelude'.Just ERROR_CHECKSUM
toMaybe'Enum 3 = Prelude'.Just ERROR_INVALID
toMaybe'Enum 4 = Prelude'.Just ERROR_EXISTS
toMaybe'Enum 5 = Prelude'.Just ERROR_ACCESS_TOKEN
toMaybe'Enum 6 = Prelude'.Just CHECKSUM_OK
toMaybe'Enum 7 = Prelude'.Just ERROR_UNSUPPORTED
toMaybe'Enum 8 = Prelude'.Just OOB_RESTART
toMaybe'Enum 9 = Prelude'.Just OOB_RESERVED1
toMaybe'Enum 10 = Prelude'.Just OOB_RESERVED2
toMaybe'Enum 11 = Prelude'.Just OOB_RESERVED3
toMaybe'Enum 12 = Prelude'.Just IN_PROGRESS
toMaybe'Enum _ = Prelude'.Nothing
 
instance Prelude'.Enum Status where
  fromEnum SUCCESS = 0
  fromEnum ERROR = 1
  fromEnum ERROR_CHECKSUM = 2
  fromEnum ERROR_INVALID = 3
  fromEnum ERROR_EXISTS = 4
  fromEnum ERROR_ACCESS_TOKEN = 5
  fromEnum CHECKSUM_OK = 6
  fromEnum ERROR_UNSUPPORTED = 7
  fromEnum OOB_RESTART = 8
  fromEnum OOB_RESERVED1 = 9
  fromEnum OOB_RESERVED2 = 10
  fromEnum OOB_RESERVED3 = 11
  fromEnum IN_PROGRESS = 12
  toEnum
   = P'.fromMaybe (Prelude'.error "hprotoc generated code: toEnum failure for type Hadoop.Protos.DataTransferProtos.Status") .
      toMaybe'Enum
  succ SUCCESS = ERROR
  succ ERROR = ERROR_CHECKSUM
  succ ERROR_CHECKSUM = ERROR_INVALID
  succ ERROR_INVALID = ERROR_EXISTS
  succ ERROR_EXISTS = ERROR_ACCESS_TOKEN
  succ ERROR_ACCESS_TOKEN = CHECKSUM_OK
  succ CHECKSUM_OK = ERROR_UNSUPPORTED
  succ ERROR_UNSUPPORTED = OOB_RESTART
  succ OOB_RESTART = OOB_RESERVED1
  succ OOB_RESERVED1 = OOB_RESERVED2
  succ OOB_RESERVED2 = OOB_RESERVED3
  succ OOB_RESERVED3 = IN_PROGRESS
  succ _ = Prelude'.error "hprotoc generated code: succ failure for type Hadoop.Protos.DataTransferProtos.Status"
  pred ERROR = SUCCESS
  pred ERROR_CHECKSUM = ERROR
  pred ERROR_INVALID = ERROR_CHECKSUM
  pred ERROR_EXISTS = ERROR_INVALID
  pred ERROR_ACCESS_TOKEN = ERROR_EXISTS
  pred CHECKSUM_OK = ERROR_ACCESS_TOKEN
  pred ERROR_UNSUPPORTED = CHECKSUM_OK
  pred OOB_RESTART = ERROR_UNSUPPORTED
  pred OOB_RESERVED1 = OOB_RESTART
  pred OOB_RESERVED2 = OOB_RESERVED1
  pred OOB_RESERVED3 = OOB_RESERVED2
  pred IN_PROGRESS = OOB_RESERVED3
  pred _ = Prelude'.error "hprotoc generated code: pred failure for type Hadoop.Protos.DataTransferProtos.Status"
 
instance P'.Wire Status where
  wireSize ft' enum = P'.wireSize ft' (Prelude'.fromEnum enum)
  wirePut ft' enum = P'.wirePut ft' (Prelude'.fromEnum enum)
  wireGet 14 = P'.wireGetEnum toMaybe'Enum
  wireGet ft' = P'.wireGetErr ft'
  wireGetPacked 14 = P'.wireGetPackedEnum toMaybe'Enum
  wireGetPacked ft' = P'.wireGetErr ft'
 
instance P'.GPB Status
 
instance P'.MessageAPI msg' (msg' -> Status) Status where
  getVal m' f' = f' m'
 
instance P'.ReflectEnum Status where
  reflectEnum
   = [(0, "SUCCESS", SUCCESS), (1, "ERROR", ERROR), (2, "ERROR_CHECKSUM", ERROR_CHECKSUM), (3, "ERROR_INVALID", ERROR_INVALID),
      (4, "ERROR_EXISTS", ERROR_EXISTS), (5, "ERROR_ACCESS_TOKEN", ERROR_ACCESS_TOKEN), (6, "CHECKSUM_OK", CHECKSUM_OK),
      (7, "ERROR_UNSUPPORTED", ERROR_UNSUPPORTED), (8, "OOB_RESTART", OOB_RESTART), (9, "OOB_RESERVED1", OOB_RESERVED1),
      (10, "OOB_RESERVED2", OOB_RESERVED2), (11, "OOB_RESERVED3", OOB_RESERVED3), (12, "IN_PROGRESS", IN_PROGRESS)]
  reflectEnumInfo _
   = P'.EnumInfo (P'.makePNF (P'.pack ".hadoop.hdfs.Status") ["Hadoop", "Protos"] ["DataTransferProtos"] "Status")
      ["Hadoop", "Protos", "DataTransferProtos", "Status.hs"]
      [(0, "SUCCESS"), (1, "ERROR"), (2, "ERROR_CHECKSUM"), (3, "ERROR_INVALID"), (4, "ERROR_EXISTS"), (5, "ERROR_ACCESS_TOKEN"),
       (6, "CHECKSUM_OK"), (7, "ERROR_UNSUPPORTED"), (8, "OOB_RESTART"), (9, "OOB_RESERVED1"), (10, "OOB_RESERVED2"),
       (11, "OOB_RESERVED3"), (12, "IN_PROGRESS")]
 
instance P'.TextType Status where
  tellT = P'.tellShow
  getT = P'.getRead