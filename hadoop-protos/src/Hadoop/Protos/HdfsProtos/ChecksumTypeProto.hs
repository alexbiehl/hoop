{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.HdfsProtos.ChecksumTypeProto (ChecksumTypeProto(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data ChecksumTypeProto = CHECKSUM_NULL
                       | CHECKSUM_CRC32
                       | CHECKSUM_CRC32C
                       deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable ChecksumTypeProto
 
instance Prelude'.Bounded ChecksumTypeProto where
  minBound = CHECKSUM_NULL
  maxBound = CHECKSUM_CRC32C
 
instance P'.Default ChecksumTypeProto where
  defaultValue = CHECKSUM_NULL
 
toMaybe'Enum :: Prelude'.Int -> P'.Maybe ChecksumTypeProto
toMaybe'Enum 0 = Prelude'.Just CHECKSUM_NULL
toMaybe'Enum 1 = Prelude'.Just CHECKSUM_CRC32
toMaybe'Enum 2 = Prelude'.Just CHECKSUM_CRC32C
toMaybe'Enum _ = Prelude'.Nothing
 
instance Prelude'.Enum ChecksumTypeProto where
  fromEnum CHECKSUM_NULL = 0
  fromEnum CHECKSUM_CRC32 = 1
  fromEnum CHECKSUM_CRC32C = 2
  toEnum
   = P'.fromMaybe (Prelude'.error "hprotoc generated code: toEnum failure for type Hadoop.Protos.HdfsProtos.ChecksumTypeProto") .
      toMaybe'Enum
  succ CHECKSUM_NULL = CHECKSUM_CRC32
  succ CHECKSUM_CRC32 = CHECKSUM_CRC32C
  succ _ = Prelude'.error "hprotoc generated code: succ failure for type Hadoop.Protos.HdfsProtos.ChecksumTypeProto"
  pred CHECKSUM_CRC32 = CHECKSUM_NULL
  pred CHECKSUM_CRC32C = CHECKSUM_CRC32
  pred _ = Prelude'.error "hprotoc generated code: pred failure for type Hadoop.Protos.HdfsProtos.ChecksumTypeProto"
 
instance P'.Wire ChecksumTypeProto where
  wireSize ft' enum = P'.wireSize ft' (Prelude'.fromEnum enum)
  wirePut ft' enum = P'.wirePut ft' (Prelude'.fromEnum enum)
  wireGet 14 = P'.wireGetEnum toMaybe'Enum
  wireGet ft' = P'.wireGetErr ft'
  wireGetPacked 14 = P'.wireGetPackedEnum toMaybe'Enum
  wireGetPacked ft' = P'.wireGetErr ft'
 
instance P'.GPB ChecksumTypeProto
 
instance P'.MessageAPI msg' (msg' -> ChecksumTypeProto) ChecksumTypeProto where
  getVal m' f' = f' m'
 
instance P'.ReflectEnum ChecksumTypeProto where
  reflectEnum
   = [(0, "CHECKSUM_NULL", CHECKSUM_NULL), (1, "CHECKSUM_CRC32", CHECKSUM_CRC32), (2, "CHECKSUM_CRC32C", CHECKSUM_CRC32C)]
  reflectEnumInfo _
   = P'.EnumInfo (P'.makePNF (P'.pack ".hadoop.hdfs.ChecksumTypeProto") ["Hadoop", "Protos"] ["HdfsProtos"] "ChecksumTypeProto")
      ["Hadoop", "Protos", "HdfsProtos", "ChecksumTypeProto.hs"]
      [(0, "CHECKSUM_NULL"), (1, "CHECKSUM_CRC32"), (2, "CHECKSUM_CRC32C")]
 
instance P'.TextType ChecksumTypeProto where
  tellT = P'.tellShow
  getT = P'.getRead