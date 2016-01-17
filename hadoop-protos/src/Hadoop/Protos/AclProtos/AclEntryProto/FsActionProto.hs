{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.AclProtos.AclEntryProto.FsActionProto (FsActionProto(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data FsActionProto = NONE
                   | EXECUTE
                   | WRITE
                   | WRITE_EXECUTE
                   | READ
                   | READ_EXECUTE
                   | READ_WRITE
                   | PERM_ALL
                   deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable FsActionProto
 
instance Prelude'.Bounded FsActionProto where
  minBound = NONE
  maxBound = PERM_ALL
 
instance P'.Default FsActionProto where
  defaultValue = NONE
 
toMaybe'Enum :: Prelude'.Int -> P'.Maybe FsActionProto
toMaybe'Enum 0 = Prelude'.Just NONE
toMaybe'Enum 1 = Prelude'.Just EXECUTE
toMaybe'Enum 2 = Prelude'.Just WRITE
toMaybe'Enum 3 = Prelude'.Just WRITE_EXECUTE
toMaybe'Enum 4 = Prelude'.Just READ
toMaybe'Enum 5 = Prelude'.Just READ_EXECUTE
toMaybe'Enum 6 = Prelude'.Just READ_WRITE
toMaybe'Enum 7 = Prelude'.Just PERM_ALL
toMaybe'Enum _ = Prelude'.Nothing
 
instance Prelude'.Enum FsActionProto where
  fromEnum NONE = 0
  fromEnum EXECUTE = 1
  fromEnum WRITE = 2
  fromEnum WRITE_EXECUTE = 3
  fromEnum READ = 4
  fromEnum READ_EXECUTE = 5
  fromEnum READ_WRITE = 6
  fromEnum PERM_ALL = 7
  toEnum
   = P'.fromMaybe
      (Prelude'.error "hprotoc generated code: toEnum failure for type Hadoop.Protos.AclProtos.AclEntryProto.FsActionProto")
      . toMaybe'Enum
  succ NONE = EXECUTE
  succ EXECUTE = WRITE
  succ WRITE = WRITE_EXECUTE
  succ WRITE_EXECUTE = READ
  succ READ = READ_EXECUTE
  succ READ_EXECUTE = READ_WRITE
  succ READ_WRITE = PERM_ALL
  succ _ = Prelude'.error "hprotoc generated code: succ failure for type Hadoop.Protos.AclProtos.AclEntryProto.FsActionProto"
  pred EXECUTE = NONE
  pred WRITE = EXECUTE
  pred WRITE_EXECUTE = WRITE
  pred READ = WRITE_EXECUTE
  pred READ_EXECUTE = READ
  pred READ_WRITE = READ_EXECUTE
  pred PERM_ALL = READ_WRITE
  pred _ = Prelude'.error "hprotoc generated code: pred failure for type Hadoop.Protos.AclProtos.AclEntryProto.FsActionProto"
 
instance P'.Wire FsActionProto where
  wireSize ft' enum = P'.wireSize ft' (Prelude'.fromEnum enum)
  wirePut ft' enum = P'.wirePut ft' (Prelude'.fromEnum enum)
  wireGet 14 = P'.wireGetEnum toMaybe'Enum
  wireGet ft' = P'.wireGetErr ft'
  wireGetPacked 14 = P'.wireGetPackedEnum toMaybe'Enum
  wireGetPacked ft' = P'.wireGetErr ft'
 
instance P'.GPB FsActionProto
 
instance P'.MessageAPI msg' (msg' -> FsActionProto) FsActionProto where
  getVal m' f' = f' m'
 
instance P'.ReflectEnum FsActionProto where
  reflectEnum
   = [(0, "NONE", NONE), (1, "EXECUTE", EXECUTE), (2, "WRITE", WRITE), (3, "WRITE_EXECUTE", WRITE_EXECUTE), (4, "READ", READ),
      (5, "READ_EXECUTE", READ_EXECUTE), (6, "READ_WRITE", READ_WRITE), (7, "PERM_ALL", PERM_ALL)]
  reflectEnumInfo _
   = P'.EnumInfo
      (P'.makePNF (P'.pack ".hadoop.hdfs.AclEntryProto.FsActionProto") ["Hadoop", "Protos"] ["AclProtos", "AclEntryProto"]
        "FsActionProto")
      ["Hadoop", "Protos", "AclProtos", "AclEntryProto", "FsActionProto.hs"]
      [(0, "NONE"), (1, "EXECUTE"), (2, "WRITE"), (3, "WRITE_EXECUTE"), (4, "READ"), (5, "READ_EXECUTE"), (6, "READ_WRITE"),
       (7, "PERM_ALL")]
 
instance P'.TextType FsActionProto where
  tellT = P'.tellShow
  getT = P'.getRead