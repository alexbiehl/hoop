{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.YarnProtos.ContainerTypeProto (ContainerTypeProto(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data ContainerTypeProto = APPLICATION_MASTER
                        | TASK
                        deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable ContainerTypeProto
 
instance Prelude'.Bounded ContainerTypeProto where
  minBound = APPLICATION_MASTER
  maxBound = TASK
 
instance P'.Default ContainerTypeProto where
  defaultValue = APPLICATION_MASTER
 
toMaybe'Enum :: Prelude'.Int -> P'.Maybe ContainerTypeProto
toMaybe'Enum 1 = Prelude'.Just APPLICATION_MASTER
toMaybe'Enum 2 = Prelude'.Just TASK
toMaybe'Enum _ = Prelude'.Nothing
 
instance Prelude'.Enum ContainerTypeProto where
  fromEnum APPLICATION_MASTER = 1
  fromEnum TASK = 2
  toEnum
   = P'.fromMaybe (Prelude'.error "hprotoc generated code: toEnum failure for type Hadoop.Protos.YarnProtos.ContainerTypeProto") .
      toMaybe'Enum
  succ APPLICATION_MASTER = TASK
  succ _ = Prelude'.error "hprotoc generated code: succ failure for type Hadoop.Protos.YarnProtos.ContainerTypeProto"
  pred TASK = APPLICATION_MASTER
  pred _ = Prelude'.error "hprotoc generated code: pred failure for type Hadoop.Protos.YarnProtos.ContainerTypeProto"
 
instance P'.Wire ContainerTypeProto where
  wireSize ft' enum = P'.wireSize ft' (Prelude'.fromEnum enum)
  wirePut ft' enum = P'.wirePut ft' (Prelude'.fromEnum enum)
  wireGet 14 = P'.wireGetEnum toMaybe'Enum
  wireGet ft' = P'.wireGetErr ft'
  wireGetPacked 14 = P'.wireGetPackedEnum toMaybe'Enum
  wireGetPacked ft' = P'.wireGetErr ft'
 
instance P'.GPB ContainerTypeProto
 
instance P'.MessageAPI msg' (msg' -> ContainerTypeProto) ContainerTypeProto where
  getVal m' f' = f' m'
 
instance P'.ReflectEnum ContainerTypeProto where
  reflectEnum = [(1, "APPLICATION_MASTER", APPLICATION_MASTER), (2, "TASK", TASK)]
  reflectEnumInfo _
   = P'.EnumInfo (P'.makePNF (P'.pack ".hadoop.yarn.ContainerTypeProto") ["Hadoop", "Protos"] ["YarnProtos"] "ContainerTypeProto")
      ["Hadoop", "Protos", "YarnProtos", "ContainerTypeProto.hs"]
      [(1, "APPLICATION_MASTER"), (2, "TASK")]
 
instance P'.TextType ContainerTypeProto where
  tellT = P'.tellShow
  getT = P'.getRead