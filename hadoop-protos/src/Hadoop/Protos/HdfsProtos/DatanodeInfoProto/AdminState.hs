{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.HdfsProtos.DatanodeInfoProto.AdminState (AdminState(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data AdminState = NORMAL
                | DECOMMISSION_INPROGRESS
                | DECOMMISSIONED
                deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable AdminState
 
instance Prelude'.Bounded AdminState where
  minBound = NORMAL
  maxBound = DECOMMISSIONED
 
instance P'.Default AdminState where
  defaultValue = NORMAL
 
toMaybe'Enum :: Prelude'.Int -> P'.Maybe AdminState
toMaybe'Enum 0 = Prelude'.Just NORMAL
toMaybe'Enum 1 = Prelude'.Just DECOMMISSION_INPROGRESS
toMaybe'Enum 2 = Prelude'.Just DECOMMISSIONED
toMaybe'Enum _ = Prelude'.Nothing
 
instance Prelude'.Enum AdminState where
  fromEnum NORMAL = 0
  fromEnum DECOMMISSION_INPROGRESS = 1
  fromEnum DECOMMISSIONED = 2
  toEnum
   = P'.fromMaybe
      (Prelude'.error "hprotoc generated code: toEnum failure for type Hadoop.Protos.HdfsProtos.DatanodeInfoProto.AdminState")
      . toMaybe'Enum
  succ NORMAL = DECOMMISSION_INPROGRESS
  succ DECOMMISSION_INPROGRESS = DECOMMISSIONED
  succ _ = Prelude'.error "hprotoc generated code: succ failure for type Hadoop.Protos.HdfsProtos.DatanodeInfoProto.AdminState"
  pred DECOMMISSION_INPROGRESS = NORMAL
  pred DECOMMISSIONED = DECOMMISSION_INPROGRESS
  pred _ = Prelude'.error "hprotoc generated code: pred failure for type Hadoop.Protos.HdfsProtos.DatanodeInfoProto.AdminState"
 
instance P'.Wire AdminState where
  wireSize ft' enum = P'.wireSize ft' (Prelude'.fromEnum enum)
  wirePut ft' enum = P'.wirePut ft' (Prelude'.fromEnum enum)
  wireGet 14 = P'.wireGetEnum toMaybe'Enum
  wireGet ft' = P'.wireGetErr ft'
  wireGetPacked 14 = P'.wireGetPackedEnum toMaybe'Enum
  wireGetPacked ft' = P'.wireGetErr ft'
 
instance P'.GPB AdminState
 
instance P'.MessageAPI msg' (msg' -> AdminState) AdminState where
  getVal m' f' = f' m'
 
instance P'.ReflectEnum AdminState where
  reflectEnum
   = [(0, "NORMAL", NORMAL), (1, "DECOMMISSION_INPROGRESS", DECOMMISSION_INPROGRESS), (2, "DECOMMISSIONED", DECOMMISSIONED)]
  reflectEnumInfo _
   = P'.EnumInfo
      (P'.makePNF (P'.pack ".hadoop.hdfs.DatanodeInfoProto.AdminState") ["Hadoop", "Protos"] ["HdfsProtos", "DatanodeInfoProto"]
        "AdminState")
      ["Hadoop", "Protos", "HdfsProtos", "DatanodeInfoProto", "AdminState.hs"]
      [(0, "NORMAL"), (1, "DECOMMISSION_INPROGRESS"), (2, "DECOMMISSIONED")]
 
instance P'.TextType AdminState where
  tellT = P'.tellShow
  getT = P'.getRead