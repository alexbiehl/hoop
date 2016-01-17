{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.InotifyProtos.INodeType (INodeType(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data INodeType = I_TYPE_FILE
               | I_TYPE_DIRECTORY
               | I_TYPE_SYMLINK
               deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable INodeType
 
instance Prelude'.Bounded INodeType where
  minBound = I_TYPE_FILE
  maxBound = I_TYPE_SYMLINK
 
instance P'.Default INodeType where
  defaultValue = I_TYPE_FILE
 
toMaybe'Enum :: Prelude'.Int -> P'.Maybe INodeType
toMaybe'Enum 0 = Prelude'.Just I_TYPE_FILE
toMaybe'Enum 1 = Prelude'.Just I_TYPE_DIRECTORY
toMaybe'Enum 2 = Prelude'.Just I_TYPE_SYMLINK
toMaybe'Enum _ = Prelude'.Nothing
 
instance Prelude'.Enum INodeType where
  fromEnum I_TYPE_FILE = 0
  fromEnum I_TYPE_DIRECTORY = 1
  fromEnum I_TYPE_SYMLINK = 2
  toEnum
   = P'.fromMaybe (Prelude'.error "hprotoc generated code: toEnum failure for type Hadoop.Protos.InotifyProtos.INodeType") .
      toMaybe'Enum
  succ I_TYPE_FILE = I_TYPE_DIRECTORY
  succ I_TYPE_DIRECTORY = I_TYPE_SYMLINK
  succ _ = Prelude'.error "hprotoc generated code: succ failure for type Hadoop.Protos.InotifyProtos.INodeType"
  pred I_TYPE_DIRECTORY = I_TYPE_FILE
  pred I_TYPE_SYMLINK = I_TYPE_DIRECTORY
  pred _ = Prelude'.error "hprotoc generated code: pred failure for type Hadoop.Protos.InotifyProtos.INodeType"
 
instance P'.Wire INodeType where
  wireSize ft' enum = P'.wireSize ft' (Prelude'.fromEnum enum)
  wirePut ft' enum = P'.wirePut ft' (Prelude'.fromEnum enum)
  wireGet 14 = P'.wireGetEnum toMaybe'Enum
  wireGet ft' = P'.wireGetErr ft'
  wireGetPacked 14 = P'.wireGetPackedEnum toMaybe'Enum
  wireGetPacked ft' = P'.wireGetErr ft'
 
instance P'.GPB INodeType
 
instance P'.MessageAPI msg' (msg' -> INodeType) INodeType where
  getVal m' f' = f' m'
 
instance P'.ReflectEnum INodeType where
  reflectEnum = [(0, "I_TYPE_FILE", I_TYPE_FILE), (1, "I_TYPE_DIRECTORY", I_TYPE_DIRECTORY), (2, "I_TYPE_SYMLINK", I_TYPE_SYMLINK)]
  reflectEnumInfo _
   = P'.EnumInfo (P'.makePNF (P'.pack ".hadoop.hdfs.INodeType") ["Hadoop", "Protos"] ["InotifyProtos"] "INodeType")
      ["Hadoop", "Protos", "InotifyProtos", "INodeType.hs"]
      [(0, "I_TYPE_FILE"), (1, "I_TYPE_DIRECTORY"), (2, "I_TYPE_SYMLINK")]
 
instance P'.TextType INodeType where
  tellT = P'.tellShow
  getT = P'.getRead