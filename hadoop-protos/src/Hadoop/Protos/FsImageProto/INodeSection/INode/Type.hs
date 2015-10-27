{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.FsImageProto.INodeSection.INode.Type (Type(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data Type = FILE
          | DIRECTORY
          | SYMLINK
          deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable Type
 
instance Prelude'.Bounded Type where
  minBound = FILE
  maxBound = SYMLINK
 
instance P'.Default Type where
  defaultValue = FILE
 
toMaybe'Enum :: Prelude'.Int -> P'.Maybe Type
toMaybe'Enum 1 = Prelude'.Just FILE
toMaybe'Enum 2 = Prelude'.Just DIRECTORY
toMaybe'Enum 3 = Prelude'.Just SYMLINK
toMaybe'Enum _ = Prelude'.Nothing
 
instance Prelude'.Enum Type where
  fromEnum FILE = 1
  fromEnum DIRECTORY = 2
  fromEnum SYMLINK = 3
  toEnum
   = P'.fromMaybe
      (Prelude'.error "hprotoc generated code: toEnum failure for type Hadoop.Protos.FsImageProto.INodeSection.INode.Type")
      . toMaybe'Enum
  succ FILE = DIRECTORY
  succ DIRECTORY = SYMLINK
  succ _ = Prelude'.error "hprotoc generated code: succ failure for type Hadoop.Protos.FsImageProto.INodeSection.INode.Type"
  pred DIRECTORY = FILE
  pred SYMLINK = DIRECTORY
  pred _ = Prelude'.error "hprotoc generated code: pred failure for type Hadoop.Protos.FsImageProto.INodeSection.INode.Type"
 
instance P'.Wire Type where
  wireSize ft' enum = P'.wireSize ft' (Prelude'.fromEnum enum)
  wirePut ft' enum = P'.wirePut ft' (Prelude'.fromEnum enum)
  wireGet 14 = P'.wireGetEnum toMaybe'Enum
  wireGet ft' = P'.wireGetErr ft'
  wireGetPacked 14 = P'.wireGetPackedEnum toMaybe'Enum
  wireGetPacked ft' = P'.wireGetErr ft'
 
instance P'.GPB Type
 
instance P'.MessageAPI msg' (msg' -> Type) Type where
  getVal m' f' = f' m'
 
instance P'.ReflectEnum Type where
  reflectEnum = [(1, "FILE", FILE), (2, "DIRECTORY", DIRECTORY), (3, "SYMLINK", SYMLINK)]
  reflectEnumInfo _
   = P'.EnumInfo
      (P'.makePNF (P'.pack ".hadoop.hdfs.fsimage.INodeSection.INode.Type") ["Hadoop", "Protos"]
        ["FsImageProto", "INodeSection", "INode"]
        "Type")
      ["Hadoop", "Protos", "FsImageProto", "INodeSection", "INode", "Type.hs"]
      [(1, "FILE"), (2, "DIRECTORY"), (3, "SYMLINK")]
 
instance P'.TextType Type where
  tellT = P'.tellShow
  getT = P'.getRead