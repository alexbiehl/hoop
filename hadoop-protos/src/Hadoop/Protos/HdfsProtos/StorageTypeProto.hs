{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.HdfsProtos.StorageTypeProto (StorageTypeProto(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data StorageTypeProto = DISK
                      | SSD
                      | ARCHIVE
                      | RAM_DISK
                      deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable StorageTypeProto
 
instance Prelude'.Bounded StorageTypeProto where
  minBound = DISK
  maxBound = RAM_DISK
 
instance P'.Default StorageTypeProto where
  defaultValue = DISK
 
toMaybe'Enum :: Prelude'.Int -> P'.Maybe StorageTypeProto
toMaybe'Enum 1 = Prelude'.Just DISK
toMaybe'Enum 2 = Prelude'.Just SSD
toMaybe'Enum 3 = Prelude'.Just ARCHIVE
toMaybe'Enum 4 = Prelude'.Just RAM_DISK
toMaybe'Enum _ = Prelude'.Nothing
 
instance Prelude'.Enum StorageTypeProto where
  fromEnum DISK = 1
  fromEnum SSD = 2
  fromEnum ARCHIVE = 3
  fromEnum RAM_DISK = 4
  toEnum
   = P'.fromMaybe (Prelude'.error "hprotoc generated code: toEnum failure for type Hadoop.Protos.HdfsProtos.StorageTypeProto") .
      toMaybe'Enum
  succ DISK = SSD
  succ SSD = ARCHIVE
  succ ARCHIVE = RAM_DISK
  succ _ = Prelude'.error "hprotoc generated code: succ failure for type Hadoop.Protos.HdfsProtos.StorageTypeProto"
  pred SSD = DISK
  pred ARCHIVE = SSD
  pred RAM_DISK = ARCHIVE
  pred _ = Prelude'.error "hprotoc generated code: pred failure for type Hadoop.Protos.HdfsProtos.StorageTypeProto"
 
instance P'.Wire StorageTypeProto where
  wireSize ft' enum = P'.wireSize ft' (Prelude'.fromEnum enum)
  wirePut ft' enum = P'.wirePut ft' (Prelude'.fromEnum enum)
  wireGet 14 = P'.wireGetEnum toMaybe'Enum
  wireGet ft' = P'.wireGetErr ft'
  wireGetPacked 14 = P'.wireGetPackedEnum toMaybe'Enum
  wireGetPacked ft' = P'.wireGetErr ft'
 
instance P'.GPB StorageTypeProto
 
instance P'.MessageAPI msg' (msg' -> StorageTypeProto) StorageTypeProto where
  getVal m' f' = f' m'
 
instance P'.ReflectEnum StorageTypeProto where
  reflectEnum = [(1, "DISK", DISK), (2, "SSD", SSD), (3, "ARCHIVE", ARCHIVE), (4, "RAM_DISK", RAM_DISK)]
  reflectEnumInfo _
   = P'.EnumInfo (P'.makePNF (P'.pack ".hadoop.hdfs.StorageTypeProto") ["Hadoop", "Protos"] ["HdfsProtos"] "StorageTypeProto")
      ["Hadoop", "Protos", "HdfsProtos", "StorageTypeProto.hs"]
      [(1, "DISK"), (2, "SSD"), (3, "ARCHIVE"), (4, "RAM_DISK")]
 
instance P'.TextType StorageTypeProto where
  tellT = P'.tellShow
  getT = P'.getRead