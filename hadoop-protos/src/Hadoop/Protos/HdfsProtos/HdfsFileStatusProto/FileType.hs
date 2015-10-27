{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.HdfsProtos.HdfsFileStatusProto.FileType (FileType(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data FileType = IS_DIR
              | IS_FILE
              | IS_SYMLINK
              deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable FileType
 
instance Prelude'.Bounded FileType where
  minBound = IS_DIR
  maxBound = IS_SYMLINK
 
instance P'.Default FileType where
  defaultValue = IS_DIR
 
toMaybe'Enum :: Prelude'.Int -> P'.Maybe FileType
toMaybe'Enum 1 = Prelude'.Just IS_DIR
toMaybe'Enum 2 = Prelude'.Just IS_FILE
toMaybe'Enum 3 = Prelude'.Just IS_SYMLINK
toMaybe'Enum _ = Prelude'.Nothing
 
instance Prelude'.Enum FileType where
  fromEnum IS_DIR = 1
  fromEnum IS_FILE = 2
  fromEnum IS_SYMLINK = 3
  toEnum
   = P'.fromMaybe
      (Prelude'.error "hprotoc generated code: toEnum failure for type Hadoop.Protos.HdfsProtos.HdfsFileStatusProto.FileType")
      . toMaybe'Enum
  succ IS_DIR = IS_FILE
  succ IS_FILE = IS_SYMLINK
  succ _ = Prelude'.error "hprotoc generated code: succ failure for type Hadoop.Protos.HdfsProtos.HdfsFileStatusProto.FileType"
  pred IS_FILE = IS_DIR
  pred IS_SYMLINK = IS_FILE
  pred _ = Prelude'.error "hprotoc generated code: pred failure for type Hadoop.Protos.HdfsProtos.HdfsFileStatusProto.FileType"
 
instance P'.Wire FileType where
  wireSize ft' enum = P'.wireSize ft' (Prelude'.fromEnum enum)
  wirePut ft' enum = P'.wirePut ft' (Prelude'.fromEnum enum)
  wireGet 14 = P'.wireGetEnum toMaybe'Enum
  wireGet ft' = P'.wireGetErr ft'
  wireGetPacked 14 = P'.wireGetPackedEnum toMaybe'Enum
  wireGetPacked ft' = P'.wireGetErr ft'
 
instance P'.GPB FileType
 
instance P'.MessageAPI msg' (msg' -> FileType) FileType where
  getVal m' f' = f' m'
 
instance P'.ReflectEnum FileType where
  reflectEnum = [(1, "IS_DIR", IS_DIR), (2, "IS_FILE", IS_FILE), (3, "IS_SYMLINK", IS_SYMLINK)]
  reflectEnumInfo _
   = P'.EnumInfo
      (P'.makePNF (P'.pack ".hadoop.hdfs.HdfsFileStatusProto.FileType") ["Hadoop", "Protos"] ["HdfsProtos", "HdfsFileStatusProto"]
        "FileType")
      ["Hadoop", "Protos", "HdfsProtos", "HdfsFileStatusProto", "FileType.hs"]
      [(1, "IS_DIR"), (2, "IS_FILE"), (3, "IS_SYMLINK")]
 
instance P'.TextType FileType where
  tellT = P'.tellShow
  getT = P'.getRead