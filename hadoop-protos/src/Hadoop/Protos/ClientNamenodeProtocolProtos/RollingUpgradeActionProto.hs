{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.ClientNamenodeProtocolProtos.RollingUpgradeActionProto (RollingUpgradeActionProto(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data RollingUpgradeActionProto = QUERY
                               | START
                               | FINALIZE
                               deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable RollingUpgradeActionProto
 
instance Prelude'.Bounded RollingUpgradeActionProto where
  minBound = QUERY
  maxBound = FINALIZE
 
instance P'.Default RollingUpgradeActionProto where
  defaultValue = QUERY
 
toMaybe'Enum :: Prelude'.Int -> P'.Maybe RollingUpgradeActionProto
toMaybe'Enum 1 = Prelude'.Just QUERY
toMaybe'Enum 2 = Prelude'.Just START
toMaybe'Enum 3 = Prelude'.Just FINALIZE
toMaybe'Enum _ = Prelude'.Nothing
 
instance Prelude'.Enum RollingUpgradeActionProto where
  fromEnum QUERY = 1
  fromEnum START = 2
  fromEnum FINALIZE = 3
  toEnum
   = P'.fromMaybe
      (Prelude'.error
        "hprotoc generated code: toEnum failure for type Hadoop.Protos.ClientNamenodeProtocolProtos.RollingUpgradeActionProto")
      . toMaybe'Enum
  succ QUERY = START
  succ START = FINALIZE
  succ _
   = Prelude'.error
      "hprotoc generated code: succ failure for type Hadoop.Protos.ClientNamenodeProtocolProtos.RollingUpgradeActionProto"
  pred START = QUERY
  pred FINALIZE = START
  pred _
   = Prelude'.error
      "hprotoc generated code: pred failure for type Hadoop.Protos.ClientNamenodeProtocolProtos.RollingUpgradeActionProto"
 
instance P'.Wire RollingUpgradeActionProto where
  wireSize ft' enum = P'.wireSize ft' (Prelude'.fromEnum enum)
  wirePut ft' enum = P'.wirePut ft' (Prelude'.fromEnum enum)
  wireGet 14 = P'.wireGetEnum toMaybe'Enum
  wireGet ft' = P'.wireGetErr ft'
  wireGetPacked 14 = P'.wireGetPackedEnum toMaybe'Enum
  wireGetPacked ft' = P'.wireGetErr ft'
 
instance P'.GPB RollingUpgradeActionProto
 
instance P'.MessageAPI msg' (msg' -> RollingUpgradeActionProto) RollingUpgradeActionProto where
  getVal m' f' = f' m'
 
instance P'.ReflectEnum RollingUpgradeActionProto where
  reflectEnum = [(1, "QUERY", QUERY), (2, "START", START), (3, "FINALIZE", FINALIZE)]
  reflectEnumInfo _
   = P'.EnumInfo
      (P'.makePNF (P'.pack ".hadoop.hdfs.RollingUpgradeActionProto") ["Hadoop", "Protos"] ["ClientNamenodeProtocolProtos"]
        "RollingUpgradeActionProto")
      ["Hadoop", "Protos", "ClientNamenodeProtocolProtos", "RollingUpgradeActionProto.hs"]
      [(1, "QUERY"), (2, "START"), (3, "FINALIZE")]
 
instance P'.TextType RollingUpgradeActionProto where
  tellT = P'.tellShow
  getT = P'.getRead