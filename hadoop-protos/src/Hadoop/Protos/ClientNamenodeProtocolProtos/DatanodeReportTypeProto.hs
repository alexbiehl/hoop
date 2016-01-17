{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.ClientNamenodeProtocolProtos.DatanodeReportTypeProto (DatanodeReportTypeProto(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data DatanodeReportTypeProto = ALL
                             | LIVE
                             | DEAD
                             | DECOMMISSIONING
                             deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable DatanodeReportTypeProto
 
instance Prelude'.Bounded DatanodeReportTypeProto where
  minBound = ALL
  maxBound = DECOMMISSIONING
 
instance P'.Default DatanodeReportTypeProto where
  defaultValue = ALL
 
toMaybe'Enum :: Prelude'.Int -> P'.Maybe DatanodeReportTypeProto
toMaybe'Enum 1 = Prelude'.Just ALL
toMaybe'Enum 2 = Prelude'.Just LIVE
toMaybe'Enum 3 = Prelude'.Just DEAD
toMaybe'Enum 4 = Prelude'.Just DECOMMISSIONING
toMaybe'Enum _ = Prelude'.Nothing
 
instance Prelude'.Enum DatanodeReportTypeProto where
  fromEnum ALL = 1
  fromEnum LIVE = 2
  fromEnum DEAD = 3
  fromEnum DECOMMISSIONING = 4
  toEnum
   = P'.fromMaybe
      (Prelude'.error
        "hprotoc generated code: toEnum failure for type Hadoop.Protos.ClientNamenodeProtocolProtos.DatanodeReportTypeProto")
      . toMaybe'Enum
  succ ALL = LIVE
  succ LIVE = DEAD
  succ DEAD = DECOMMISSIONING
  succ _
   = Prelude'.error
      "hprotoc generated code: succ failure for type Hadoop.Protos.ClientNamenodeProtocolProtos.DatanodeReportTypeProto"
  pred LIVE = ALL
  pred DEAD = LIVE
  pred DECOMMISSIONING = DEAD
  pred _
   = Prelude'.error
      "hprotoc generated code: pred failure for type Hadoop.Protos.ClientNamenodeProtocolProtos.DatanodeReportTypeProto"
 
instance P'.Wire DatanodeReportTypeProto where
  wireSize ft' enum = P'.wireSize ft' (Prelude'.fromEnum enum)
  wirePut ft' enum = P'.wirePut ft' (Prelude'.fromEnum enum)
  wireGet 14 = P'.wireGetEnum toMaybe'Enum
  wireGet ft' = P'.wireGetErr ft'
  wireGetPacked 14 = P'.wireGetPackedEnum toMaybe'Enum
  wireGetPacked ft' = P'.wireGetErr ft'
 
instance P'.GPB DatanodeReportTypeProto
 
instance P'.MessageAPI msg' (msg' -> DatanodeReportTypeProto) DatanodeReportTypeProto where
  getVal m' f' = f' m'
 
instance P'.ReflectEnum DatanodeReportTypeProto where
  reflectEnum = [(1, "ALL", ALL), (2, "LIVE", LIVE), (3, "DEAD", DEAD), (4, "DECOMMISSIONING", DECOMMISSIONING)]
  reflectEnumInfo _
   = P'.EnumInfo
      (P'.makePNF (P'.pack ".hadoop.hdfs.DatanodeReportTypeProto") ["Hadoop", "Protos"] ["ClientNamenodeProtocolProtos"]
        "DatanodeReportTypeProto")
      ["Hadoop", "Protos", "ClientNamenodeProtocolProtos", "DatanodeReportTypeProto.hs"]
      [(1, "ALL"), (2, "LIVE"), (3, "DEAD"), (4, "DECOMMISSIONING")]
 
instance P'.TextType DatanodeReportTypeProto where
  tellT = P'.tellShow
  getT = P'.getRead