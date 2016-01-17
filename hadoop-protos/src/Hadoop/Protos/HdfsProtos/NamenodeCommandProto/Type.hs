{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.HdfsProtos.NamenodeCommandProto.Type (Type(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data Type = NamenodeCommand
          | CheckPointCommand
          deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable Type
 
instance Prelude'.Bounded Type where
  minBound = NamenodeCommand
  maxBound = CheckPointCommand
 
instance P'.Default Type where
  defaultValue = NamenodeCommand
 
toMaybe'Enum :: Prelude'.Int -> P'.Maybe Type
toMaybe'Enum 0 = Prelude'.Just NamenodeCommand
toMaybe'Enum 1 = Prelude'.Just CheckPointCommand
toMaybe'Enum _ = Prelude'.Nothing
 
instance Prelude'.Enum Type where
  fromEnum NamenodeCommand = 0
  fromEnum CheckPointCommand = 1
  toEnum
   = P'.fromMaybe
      (Prelude'.error "hprotoc generated code: toEnum failure for type Hadoop.Protos.HdfsProtos.NamenodeCommandProto.Type")
      . toMaybe'Enum
  succ NamenodeCommand = CheckPointCommand
  succ _ = Prelude'.error "hprotoc generated code: succ failure for type Hadoop.Protos.HdfsProtos.NamenodeCommandProto.Type"
  pred CheckPointCommand = NamenodeCommand
  pred _ = Prelude'.error "hprotoc generated code: pred failure for type Hadoop.Protos.HdfsProtos.NamenodeCommandProto.Type"
 
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
  reflectEnum = [(0, "NamenodeCommand", NamenodeCommand), (1, "CheckPointCommand", CheckPointCommand)]
  reflectEnumInfo _
   = P'.EnumInfo
      (P'.makePNF (P'.pack ".hadoop.hdfs.NamenodeCommandProto.Type") ["Hadoop", "Protos"] ["HdfsProtos", "NamenodeCommandProto"]
        "Type")
      ["Hadoop", "Protos", "HdfsProtos", "NamenodeCommandProto", "Type.hs"]
      [(0, "NamenodeCommand"), (1, "CheckPointCommand")]
 
instance P'.TextType Type where
  tellT = P'.tellShow
  getT = P'.getRead