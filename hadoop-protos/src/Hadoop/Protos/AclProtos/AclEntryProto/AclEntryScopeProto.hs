{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.AclProtos.AclEntryProto.AclEntryScopeProto (AclEntryScopeProto(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data AclEntryScopeProto = ACCESS
                        | DEFAULT
                        deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable AclEntryScopeProto
 
instance Prelude'.Bounded AclEntryScopeProto where
  minBound = ACCESS
  maxBound = DEFAULT
 
instance P'.Default AclEntryScopeProto where
  defaultValue = ACCESS
 
toMaybe'Enum :: Prelude'.Int -> P'.Maybe AclEntryScopeProto
toMaybe'Enum 0 = Prelude'.Just ACCESS
toMaybe'Enum 1 = Prelude'.Just DEFAULT
toMaybe'Enum _ = Prelude'.Nothing
 
instance Prelude'.Enum AclEntryScopeProto where
  fromEnum ACCESS = 0
  fromEnum DEFAULT = 1
  toEnum
   = P'.fromMaybe
      (Prelude'.error "hprotoc generated code: toEnum failure for type Hadoop.Protos.AclProtos.AclEntryProto.AclEntryScopeProto")
      . toMaybe'Enum
  succ ACCESS = DEFAULT
  succ _ = Prelude'.error "hprotoc generated code: succ failure for type Hadoop.Protos.AclProtos.AclEntryProto.AclEntryScopeProto"
  pred DEFAULT = ACCESS
  pred _ = Prelude'.error "hprotoc generated code: pred failure for type Hadoop.Protos.AclProtos.AclEntryProto.AclEntryScopeProto"
 
instance P'.Wire AclEntryScopeProto where
  wireSize ft' enum = P'.wireSize ft' (Prelude'.fromEnum enum)
  wirePut ft' enum = P'.wirePut ft' (Prelude'.fromEnum enum)
  wireGet 14 = P'.wireGetEnum toMaybe'Enum
  wireGet ft' = P'.wireGetErr ft'
  wireGetPacked 14 = P'.wireGetPackedEnum toMaybe'Enum
  wireGetPacked ft' = P'.wireGetErr ft'
 
instance P'.GPB AclEntryScopeProto
 
instance P'.MessageAPI msg' (msg' -> AclEntryScopeProto) AclEntryScopeProto where
  getVal m' f' = f' m'
 
instance P'.ReflectEnum AclEntryScopeProto where
  reflectEnum = [(0, "ACCESS", ACCESS), (1, "DEFAULT", DEFAULT)]
  reflectEnumInfo _
   = P'.EnumInfo
      (P'.makePNF (P'.pack ".hadoop.hdfs.AclEntryProto.AclEntryScopeProto") ["Hadoop", "Protos"] ["AclProtos", "AclEntryProto"]
        "AclEntryScopeProto")
      ["Hadoop", "Protos", "AclProtos", "AclEntryProto", "AclEntryScopeProto.hs"]
      [(0, "ACCESS"), (1, "DEFAULT")]
 
instance P'.TextType AclEntryScopeProto where
  tellT = P'.tellShow
  getT = P'.getRead