{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.HdfsProtos.ReplicaStateProto (ReplicaStateProto(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data ReplicaStateProto = FINALIZED
                       | RBW
                       | RWR
                       | RUR
                       | TEMPORARY
                       deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable ReplicaStateProto
 
instance Prelude'.Bounded ReplicaStateProto where
  minBound = FINALIZED
  maxBound = TEMPORARY
 
instance P'.Default ReplicaStateProto where
  defaultValue = FINALIZED
 
toMaybe'Enum :: Prelude'.Int -> P'.Maybe ReplicaStateProto
toMaybe'Enum 0 = Prelude'.Just FINALIZED
toMaybe'Enum 1 = Prelude'.Just RBW
toMaybe'Enum 2 = Prelude'.Just RWR
toMaybe'Enum 3 = Prelude'.Just RUR
toMaybe'Enum 4 = Prelude'.Just TEMPORARY
toMaybe'Enum _ = Prelude'.Nothing
 
instance Prelude'.Enum ReplicaStateProto where
  fromEnum FINALIZED = 0
  fromEnum RBW = 1
  fromEnum RWR = 2
  fromEnum RUR = 3
  fromEnum TEMPORARY = 4
  toEnum
   = P'.fromMaybe (Prelude'.error "hprotoc generated code: toEnum failure for type Hadoop.Protos.HdfsProtos.ReplicaStateProto") .
      toMaybe'Enum
  succ FINALIZED = RBW
  succ RBW = RWR
  succ RWR = RUR
  succ RUR = TEMPORARY
  succ _ = Prelude'.error "hprotoc generated code: succ failure for type Hadoop.Protos.HdfsProtos.ReplicaStateProto"
  pred RBW = FINALIZED
  pred RWR = RBW
  pred RUR = RWR
  pred TEMPORARY = RUR
  pred _ = Prelude'.error "hprotoc generated code: pred failure for type Hadoop.Protos.HdfsProtos.ReplicaStateProto"
 
instance P'.Wire ReplicaStateProto where
  wireSize ft' enum = P'.wireSize ft' (Prelude'.fromEnum enum)
  wirePut ft' enum = P'.wirePut ft' (Prelude'.fromEnum enum)
  wireGet 14 = P'.wireGetEnum toMaybe'Enum
  wireGet ft' = P'.wireGetErr ft'
  wireGetPacked 14 = P'.wireGetPackedEnum toMaybe'Enum
  wireGetPacked ft' = P'.wireGetErr ft'
 
instance P'.GPB ReplicaStateProto
 
instance P'.MessageAPI msg' (msg' -> ReplicaStateProto) ReplicaStateProto where
  getVal m' f' = f' m'
 
instance P'.ReflectEnum ReplicaStateProto where
  reflectEnum = [(0, "FINALIZED", FINALIZED), (1, "RBW", RBW), (2, "RWR", RWR), (3, "RUR", RUR), (4, "TEMPORARY", TEMPORARY)]
  reflectEnumInfo _
   = P'.EnumInfo (P'.makePNF (P'.pack ".hadoop.hdfs.ReplicaStateProto") ["Hadoop", "Protos"] ["HdfsProtos"] "ReplicaStateProto")
      ["Hadoop", "Protos", "HdfsProtos", "ReplicaStateProto.hs"]
      [(0, "FINALIZED"), (1, "RBW"), (2, "RWR"), (3, "RUR"), (4, "TEMPORARY")]
 
instance P'.TextType ReplicaStateProto where
  tellT = P'.tellShow
  getT = P'.getRead