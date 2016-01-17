{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.YarnProtos.ContainerExitStatusProto (ContainerExitStatusProto(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data ContainerExitStatusProto = SUCCESS
                              | INVALID
                              | ABORTED
                              | DISKS_FAILED
                              deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable ContainerExitStatusProto
 
instance Prelude'.Bounded ContainerExitStatusProto where
  minBound = SUCCESS
  maxBound = DISKS_FAILED
 
instance P'.Default ContainerExitStatusProto where
  defaultValue = SUCCESS
 
toMaybe'Enum :: Prelude'.Int -> P'.Maybe ContainerExitStatusProto
toMaybe'Enum 0 = Prelude'.Just SUCCESS
toMaybe'Enum (-1000) = Prelude'.Just INVALID
toMaybe'Enum (-100) = Prelude'.Just ABORTED
toMaybe'Enum (-101) = Prelude'.Just DISKS_FAILED
toMaybe'Enum _ = Prelude'.Nothing
 
instance Prelude'.Enum ContainerExitStatusProto where
  fromEnum SUCCESS = 0
  fromEnum INVALID = (-1000)
  fromEnum ABORTED = (-100)
  fromEnum DISKS_FAILED = (-101)
  toEnum
   = P'.fromMaybe
      (Prelude'.error "hprotoc generated code: toEnum failure for type Hadoop.Protos.YarnProtos.ContainerExitStatusProto")
      . toMaybe'Enum
  succ SUCCESS = INVALID
  succ INVALID = ABORTED
  succ ABORTED = DISKS_FAILED
  succ _ = Prelude'.error "hprotoc generated code: succ failure for type Hadoop.Protos.YarnProtos.ContainerExitStatusProto"
  pred INVALID = SUCCESS
  pred ABORTED = INVALID
  pred DISKS_FAILED = ABORTED
  pred _ = Prelude'.error "hprotoc generated code: pred failure for type Hadoop.Protos.YarnProtos.ContainerExitStatusProto"
 
instance P'.Wire ContainerExitStatusProto where
  wireSize ft' enum = P'.wireSize ft' (Prelude'.fromEnum enum)
  wirePut ft' enum = P'.wirePut ft' (Prelude'.fromEnum enum)
  wireGet 14 = P'.wireGetEnum toMaybe'Enum
  wireGet ft' = P'.wireGetErr ft'
  wireGetPacked 14 = P'.wireGetPackedEnum toMaybe'Enum
  wireGetPacked ft' = P'.wireGetErr ft'
 
instance P'.GPB ContainerExitStatusProto
 
instance P'.MessageAPI msg' (msg' -> ContainerExitStatusProto) ContainerExitStatusProto where
  getVal m' f' = f' m'
 
instance P'.ReflectEnum ContainerExitStatusProto where
  reflectEnum
   = [(0, "SUCCESS", SUCCESS), ((-1000), "INVALID", INVALID), ((-100), "ABORTED", ABORTED), ((-101), "DISKS_FAILED", DISKS_FAILED)]
  reflectEnumInfo _
   = P'.EnumInfo
      (P'.makePNF (P'.pack ".hadoop.yarn.ContainerExitStatusProto") ["Hadoop", "Protos"] ["YarnProtos"] "ContainerExitStatusProto")
      ["Hadoop", "Protos", "YarnProtos", "ContainerExitStatusProto.hs"]
      [(0, "SUCCESS"), ((-1000), "INVALID"), ((-100), "ABORTED"), ((-101), "DISKS_FAILED")]
 
instance P'.TextType ContainerExitStatusProto where
  tellT = P'.tellShow
  getT = P'.getRead