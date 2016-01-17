{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.HdfsProtos.DatanodeStorageProto.StorageState (StorageState(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data StorageState = NORMAL
                  | READ_ONLY_SHARED
                  deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable StorageState
 
instance Prelude'.Bounded StorageState where
  minBound = NORMAL
  maxBound = READ_ONLY_SHARED
 
instance P'.Default StorageState where
  defaultValue = NORMAL
 
toMaybe'Enum :: Prelude'.Int -> P'.Maybe StorageState
toMaybe'Enum 0 = Prelude'.Just NORMAL
toMaybe'Enum 1 = Prelude'.Just READ_ONLY_SHARED
toMaybe'Enum _ = Prelude'.Nothing
 
instance Prelude'.Enum StorageState where
  fromEnum NORMAL = 0
  fromEnum READ_ONLY_SHARED = 1
  toEnum
   = P'.fromMaybe
      (Prelude'.error "hprotoc generated code: toEnum failure for type Hadoop.Protos.HdfsProtos.DatanodeStorageProto.StorageState")
      . toMaybe'Enum
  succ NORMAL = READ_ONLY_SHARED
  succ _ = Prelude'.error "hprotoc generated code: succ failure for type Hadoop.Protos.HdfsProtos.DatanodeStorageProto.StorageState"
  pred READ_ONLY_SHARED = NORMAL
  pred _ = Prelude'.error "hprotoc generated code: pred failure for type Hadoop.Protos.HdfsProtos.DatanodeStorageProto.StorageState"
 
instance P'.Wire StorageState where
  wireSize ft' enum = P'.wireSize ft' (Prelude'.fromEnum enum)
  wirePut ft' enum = P'.wirePut ft' (Prelude'.fromEnum enum)
  wireGet 14 = P'.wireGetEnum toMaybe'Enum
  wireGet ft' = P'.wireGetErr ft'
  wireGetPacked 14 = P'.wireGetPackedEnum toMaybe'Enum
  wireGetPacked ft' = P'.wireGetErr ft'
 
instance P'.GPB StorageState
 
instance P'.MessageAPI msg' (msg' -> StorageState) StorageState where
  getVal m' f' = f' m'
 
instance P'.ReflectEnum StorageState where
  reflectEnum = [(0, "NORMAL", NORMAL), (1, "READ_ONLY_SHARED", READ_ONLY_SHARED)]
  reflectEnumInfo _
   = P'.EnumInfo
      (P'.makePNF (P'.pack ".hadoop.hdfs.DatanodeStorageProto.StorageState") ["Hadoop", "Protos"]
        ["HdfsProtos", "DatanodeStorageProto"]
        "StorageState")
      ["Hadoop", "Protos", "HdfsProtos", "DatanodeStorageProto", "StorageState.hs"]
      [(0, "NORMAL"), (1, "READ_ONLY_SHARED")]
 
instance P'.TextType StorageState where
  tellT = P'.tellShow
  getT = P'.getRead