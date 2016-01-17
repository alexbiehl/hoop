{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.InotifyProtos.MetadataUpdateType (MetadataUpdateType(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data MetadataUpdateType = META_TYPE_TIMES
                        | META_TYPE_REPLICATION
                        | META_TYPE_OWNER
                        | META_TYPE_PERMS
                        | META_TYPE_ACLS
                        | META_TYPE_XATTRS
                        deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable MetadataUpdateType
 
instance Prelude'.Bounded MetadataUpdateType where
  minBound = META_TYPE_TIMES
  maxBound = META_TYPE_XATTRS
 
instance P'.Default MetadataUpdateType where
  defaultValue = META_TYPE_TIMES
 
toMaybe'Enum :: Prelude'.Int -> P'.Maybe MetadataUpdateType
toMaybe'Enum 0 = Prelude'.Just META_TYPE_TIMES
toMaybe'Enum 1 = Prelude'.Just META_TYPE_REPLICATION
toMaybe'Enum 2 = Prelude'.Just META_TYPE_OWNER
toMaybe'Enum 3 = Prelude'.Just META_TYPE_PERMS
toMaybe'Enum 4 = Prelude'.Just META_TYPE_ACLS
toMaybe'Enum 5 = Prelude'.Just META_TYPE_XATTRS
toMaybe'Enum _ = Prelude'.Nothing
 
instance Prelude'.Enum MetadataUpdateType where
  fromEnum META_TYPE_TIMES = 0
  fromEnum META_TYPE_REPLICATION = 1
  fromEnum META_TYPE_OWNER = 2
  fromEnum META_TYPE_PERMS = 3
  fromEnum META_TYPE_ACLS = 4
  fromEnum META_TYPE_XATTRS = 5
  toEnum
   = P'.fromMaybe (Prelude'.error "hprotoc generated code: toEnum failure for type Hadoop.Protos.InotifyProtos.MetadataUpdateType")
      . toMaybe'Enum
  succ META_TYPE_TIMES = META_TYPE_REPLICATION
  succ META_TYPE_REPLICATION = META_TYPE_OWNER
  succ META_TYPE_OWNER = META_TYPE_PERMS
  succ META_TYPE_PERMS = META_TYPE_ACLS
  succ META_TYPE_ACLS = META_TYPE_XATTRS
  succ _ = Prelude'.error "hprotoc generated code: succ failure for type Hadoop.Protos.InotifyProtos.MetadataUpdateType"
  pred META_TYPE_REPLICATION = META_TYPE_TIMES
  pred META_TYPE_OWNER = META_TYPE_REPLICATION
  pred META_TYPE_PERMS = META_TYPE_OWNER
  pred META_TYPE_ACLS = META_TYPE_PERMS
  pred META_TYPE_XATTRS = META_TYPE_ACLS
  pred _ = Prelude'.error "hprotoc generated code: pred failure for type Hadoop.Protos.InotifyProtos.MetadataUpdateType"
 
instance P'.Wire MetadataUpdateType where
  wireSize ft' enum = P'.wireSize ft' (Prelude'.fromEnum enum)
  wirePut ft' enum = P'.wirePut ft' (Prelude'.fromEnum enum)
  wireGet 14 = P'.wireGetEnum toMaybe'Enum
  wireGet ft' = P'.wireGetErr ft'
  wireGetPacked 14 = P'.wireGetPackedEnum toMaybe'Enum
  wireGetPacked ft' = P'.wireGetErr ft'
 
instance P'.GPB MetadataUpdateType
 
instance P'.MessageAPI msg' (msg' -> MetadataUpdateType) MetadataUpdateType where
  getVal m' f' = f' m'
 
instance P'.ReflectEnum MetadataUpdateType where
  reflectEnum
   = [(0, "META_TYPE_TIMES", META_TYPE_TIMES), (1, "META_TYPE_REPLICATION", META_TYPE_REPLICATION),
      (2, "META_TYPE_OWNER", META_TYPE_OWNER), (3, "META_TYPE_PERMS", META_TYPE_PERMS), (4, "META_TYPE_ACLS", META_TYPE_ACLS),
      (5, "META_TYPE_XATTRS", META_TYPE_XATTRS)]
  reflectEnumInfo _
   = P'.EnumInfo
      (P'.makePNF (P'.pack ".hadoop.hdfs.MetadataUpdateType") ["Hadoop", "Protos"] ["InotifyProtos"] "MetadataUpdateType")
      ["Hadoop", "Protos", "InotifyProtos", "MetadataUpdateType.hs"]
      [(0, "META_TYPE_TIMES"), (1, "META_TYPE_REPLICATION"), (2, "META_TYPE_OWNER"), (3, "META_TYPE_PERMS"), (4, "META_TYPE_ACLS"),
       (5, "META_TYPE_XATTRS")]
 
instance P'.TextType MetadataUpdateType where
  tellT = P'.tellShow
  getT = P'.getRead