{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.YarnProtos.ContainerStateProto (ContainerStateProto(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data ContainerStateProto = C_NEW
                         | C_RUNNING
                         | C_COMPLETE
                         deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable ContainerStateProto
 
instance Prelude'.Bounded ContainerStateProto where
  minBound = C_NEW
  maxBound = C_COMPLETE
 
instance P'.Default ContainerStateProto where
  defaultValue = C_NEW
 
toMaybe'Enum :: Prelude'.Int -> P'.Maybe ContainerStateProto
toMaybe'Enum 1 = Prelude'.Just C_NEW
toMaybe'Enum 2 = Prelude'.Just C_RUNNING
toMaybe'Enum 3 = Prelude'.Just C_COMPLETE
toMaybe'Enum _ = Prelude'.Nothing
 
instance Prelude'.Enum ContainerStateProto where
  fromEnum C_NEW = 1
  fromEnum C_RUNNING = 2
  fromEnum C_COMPLETE = 3
  toEnum
   = P'.fromMaybe (Prelude'.error "hprotoc generated code: toEnum failure for type Hadoop.Protos.YarnProtos.ContainerStateProto") .
      toMaybe'Enum
  succ C_NEW = C_RUNNING
  succ C_RUNNING = C_COMPLETE
  succ _ = Prelude'.error "hprotoc generated code: succ failure for type Hadoop.Protos.YarnProtos.ContainerStateProto"
  pred C_RUNNING = C_NEW
  pred C_COMPLETE = C_RUNNING
  pred _ = Prelude'.error "hprotoc generated code: pred failure for type Hadoop.Protos.YarnProtos.ContainerStateProto"
 
instance P'.Wire ContainerStateProto where
  wireSize ft' enum = P'.wireSize ft' (Prelude'.fromEnum enum)
  wirePut ft' enum = P'.wirePut ft' (Prelude'.fromEnum enum)
  wireGet 14 = P'.wireGetEnum toMaybe'Enum
  wireGet ft' = P'.wireGetErr ft'
  wireGetPacked 14 = P'.wireGetPackedEnum toMaybe'Enum
  wireGetPacked ft' = P'.wireGetErr ft'
 
instance P'.GPB ContainerStateProto
 
instance P'.MessageAPI msg' (msg' -> ContainerStateProto) ContainerStateProto where
  getVal m' f' = f' m'
 
instance P'.ReflectEnum ContainerStateProto where
  reflectEnum = [(1, "C_NEW", C_NEW), (2, "C_RUNNING", C_RUNNING), (3, "C_COMPLETE", C_COMPLETE)]
  reflectEnumInfo _
   = P'.EnumInfo (P'.makePNF (P'.pack ".hadoop.yarn.ContainerStateProto") ["Hadoop", "Protos"] ["YarnProtos"] "ContainerStateProto")
      ["Hadoop", "Protos", "YarnProtos", "ContainerStateProto.hs"]
      [(1, "C_NEW"), (2, "C_RUNNING"), (3, "C_COMPLETE")]
 
instance P'.TextType ContainerStateProto where
  tellT = P'.tellShow
  getT = P'.getRead