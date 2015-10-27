{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.DatanodeProtocolProtos.DatanodeCommandProto.Type (Type(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data Type = BalancerBandwidthCommand
          | BlockCommand
          | BlockRecoveryCommand
          | FinalizeCommand
          | KeyUpdateCommand
          | RegisterCommand
          | UnusedUpgradeCommand
          | NullDatanodeCommand
          | BlockIdCommand
          deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable Type
 
instance Prelude'.Bounded Type where
  minBound = BalancerBandwidthCommand
  maxBound = BlockIdCommand
 
instance P'.Default Type where
  defaultValue = BalancerBandwidthCommand
 
toMaybe'Enum :: Prelude'.Int -> P'.Maybe Type
toMaybe'Enum 0 = Prelude'.Just BalancerBandwidthCommand
toMaybe'Enum 1 = Prelude'.Just BlockCommand
toMaybe'Enum 2 = Prelude'.Just BlockRecoveryCommand
toMaybe'Enum 3 = Prelude'.Just FinalizeCommand
toMaybe'Enum 4 = Prelude'.Just KeyUpdateCommand
toMaybe'Enum 5 = Prelude'.Just RegisterCommand
toMaybe'Enum 6 = Prelude'.Just UnusedUpgradeCommand
toMaybe'Enum 7 = Prelude'.Just NullDatanodeCommand
toMaybe'Enum 8 = Prelude'.Just BlockIdCommand
toMaybe'Enum _ = Prelude'.Nothing
 
instance Prelude'.Enum Type where
  fromEnum BalancerBandwidthCommand = 0
  fromEnum BlockCommand = 1
  fromEnum BlockRecoveryCommand = 2
  fromEnum FinalizeCommand = 3
  fromEnum KeyUpdateCommand = 4
  fromEnum RegisterCommand = 5
  fromEnum UnusedUpgradeCommand = 6
  fromEnum NullDatanodeCommand = 7
  fromEnum BlockIdCommand = 8
  toEnum
   = P'.fromMaybe
      (Prelude'.error
        "hprotoc generated code: toEnum failure for type Hadoop.Protos.DatanodeProtocolProtos.DatanodeCommandProto.Type")
      . toMaybe'Enum
  succ BalancerBandwidthCommand = BlockCommand
  succ BlockCommand = BlockRecoveryCommand
  succ BlockRecoveryCommand = FinalizeCommand
  succ FinalizeCommand = KeyUpdateCommand
  succ KeyUpdateCommand = RegisterCommand
  succ RegisterCommand = UnusedUpgradeCommand
  succ UnusedUpgradeCommand = NullDatanodeCommand
  succ NullDatanodeCommand = BlockIdCommand
  succ _
   = Prelude'.error "hprotoc generated code: succ failure for type Hadoop.Protos.DatanodeProtocolProtos.DatanodeCommandProto.Type"
  pred BlockCommand = BalancerBandwidthCommand
  pred BlockRecoveryCommand = BlockCommand
  pred FinalizeCommand = BlockRecoveryCommand
  pred KeyUpdateCommand = FinalizeCommand
  pred RegisterCommand = KeyUpdateCommand
  pred UnusedUpgradeCommand = RegisterCommand
  pred NullDatanodeCommand = UnusedUpgradeCommand
  pred BlockIdCommand = NullDatanodeCommand
  pred _
   = Prelude'.error "hprotoc generated code: pred failure for type Hadoop.Protos.DatanodeProtocolProtos.DatanodeCommandProto.Type"
 
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
  reflectEnum
   = [(0, "BalancerBandwidthCommand", BalancerBandwidthCommand), (1, "BlockCommand", BlockCommand),
      (2, "BlockRecoveryCommand", BlockRecoveryCommand), (3, "FinalizeCommand", FinalizeCommand),
      (4, "KeyUpdateCommand", KeyUpdateCommand), (5, "RegisterCommand", RegisterCommand),
      (6, "UnusedUpgradeCommand", UnusedUpgradeCommand), (7, "NullDatanodeCommand", NullDatanodeCommand),
      (8, "BlockIdCommand", BlockIdCommand)]
  reflectEnumInfo _
   = P'.EnumInfo
      (P'.makePNF (P'.pack ".hadoop.hdfs.datanode.DatanodeCommandProto.Type") ["Hadoop", "Protos"]
        ["DatanodeProtocolProtos", "DatanodeCommandProto"]
        "Type")
      ["Hadoop", "Protos", "DatanodeProtocolProtos", "DatanodeCommandProto", "Type.hs"]
      [(0, "BalancerBandwidthCommand"), (1, "BlockCommand"), (2, "BlockRecoveryCommand"), (3, "FinalizeCommand"),
       (4, "KeyUpdateCommand"), (5, "RegisterCommand"), (6, "UnusedUpgradeCommand"), (7, "NullDatanodeCommand"),
       (8, "BlockIdCommand")]
 
instance P'.TextType Type where
  tellT = P'.tellShow
  getT = P'.getRead