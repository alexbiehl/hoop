{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.AclProtos.AclEntryProto.AclEntryTypeProto (AclEntryTypeProto(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data AclEntryTypeProto = USER
                       | GROUP
                       | MASK
                       | OTHER
                       deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable AclEntryTypeProto
 
instance Prelude'.Bounded AclEntryTypeProto where
  minBound = USER
  maxBound = OTHER
 
instance P'.Default AclEntryTypeProto where
  defaultValue = USER
 
toMaybe'Enum :: Prelude'.Int -> P'.Maybe AclEntryTypeProto
toMaybe'Enum 0 = Prelude'.Just USER
toMaybe'Enum 1 = Prelude'.Just GROUP
toMaybe'Enum 2 = Prelude'.Just MASK
toMaybe'Enum 3 = Prelude'.Just OTHER
toMaybe'Enum _ = Prelude'.Nothing
 
instance Prelude'.Enum AclEntryTypeProto where
  fromEnum USER = 0
  fromEnum GROUP = 1
  fromEnum MASK = 2
  fromEnum OTHER = 3
  toEnum
   = P'.fromMaybe
      (Prelude'.error "hprotoc generated code: toEnum failure for type Hadoop.Protos.AclProtos.AclEntryProto.AclEntryTypeProto")
      . toMaybe'Enum
  succ USER = GROUP
  succ GROUP = MASK
  succ MASK = OTHER
  succ _ = Prelude'.error "hprotoc generated code: succ failure for type Hadoop.Protos.AclProtos.AclEntryProto.AclEntryTypeProto"
  pred GROUP = USER
  pred MASK = GROUP
  pred OTHER = MASK
  pred _ = Prelude'.error "hprotoc generated code: pred failure for type Hadoop.Protos.AclProtos.AclEntryProto.AclEntryTypeProto"
 
instance P'.Wire AclEntryTypeProto where
  wireSize ft' enum = P'.wireSize ft' (Prelude'.fromEnum enum)
  wirePut ft' enum = P'.wirePut ft' (Prelude'.fromEnum enum)
  wireGet 14 = P'.wireGetEnum toMaybe'Enum
  wireGet ft' = P'.wireGetErr ft'
  wireGetPacked 14 = P'.wireGetPackedEnum toMaybe'Enum
  wireGetPacked ft' = P'.wireGetErr ft'
 
instance P'.GPB AclEntryTypeProto
 
instance P'.MessageAPI msg' (msg' -> AclEntryTypeProto) AclEntryTypeProto where
  getVal m' f' = f' m'
 
instance P'.ReflectEnum AclEntryTypeProto where
  reflectEnum = [(0, "USER", USER), (1, "GROUP", GROUP), (2, "MASK", MASK), (3, "OTHER", OTHER)]
  reflectEnumInfo _
   = P'.EnumInfo
      (P'.makePNF (P'.pack ".hadoop.hdfs.AclEntryProto.AclEntryTypeProto") ["Hadoop", "Protos"] ["AclProtos", "AclEntryProto"]
        "AclEntryTypeProto")
      ["Hadoop", "Protos", "AclProtos", "AclEntryProto", "AclEntryTypeProto.hs"]
      [(0, "USER"), (1, "GROUP"), (2, "MASK"), (3, "OTHER")]
 
instance P'.TextType AclEntryTypeProto where
  tellT = P'.tellShow
  getT = P'.getRead