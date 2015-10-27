{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.YarnProtos.NodeStateProto (NodeStateProto(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data NodeStateProto = NS_NEW
                    | NS_RUNNING
                    | NS_UNHEALTHY
                    | NS_DECOMMISSIONED
                    | NS_LOST
                    | NS_REBOOTED
                    | NS_DECOMMISSIONING
                    | NS_SHUTDOWN
                    deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable NodeStateProto
 
instance Prelude'.Bounded NodeStateProto where
  minBound = NS_NEW
  maxBound = NS_SHUTDOWN
 
instance P'.Default NodeStateProto where
  defaultValue = NS_NEW
 
toMaybe'Enum :: Prelude'.Int -> P'.Maybe NodeStateProto
toMaybe'Enum 1 = Prelude'.Just NS_NEW
toMaybe'Enum 2 = Prelude'.Just NS_RUNNING
toMaybe'Enum 3 = Prelude'.Just NS_UNHEALTHY
toMaybe'Enum 4 = Prelude'.Just NS_DECOMMISSIONED
toMaybe'Enum 5 = Prelude'.Just NS_LOST
toMaybe'Enum 6 = Prelude'.Just NS_REBOOTED
toMaybe'Enum 7 = Prelude'.Just NS_DECOMMISSIONING
toMaybe'Enum 8 = Prelude'.Just NS_SHUTDOWN
toMaybe'Enum _ = Prelude'.Nothing
 
instance Prelude'.Enum NodeStateProto where
  fromEnum NS_NEW = 1
  fromEnum NS_RUNNING = 2
  fromEnum NS_UNHEALTHY = 3
  fromEnum NS_DECOMMISSIONED = 4
  fromEnum NS_LOST = 5
  fromEnum NS_REBOOTED = 6
  fromEnum NS_DECOMMISSIONING = 7
  fromEnum NS_SHUTDOWN = 8
  toEnum
   = P'.fromMaybe (Prelude'.error "hprotoc generated code: toEnum failure for type Hadoop.Protos.YarnProtos.NodeStateProto") .
      toMaybe'Enum
  succ NS_NEW = NS_RUNNING
  succ NS_RUNNING = NS_UNHEALTHY
  succ NS_UNHEALTHY = NS_DECOMMISSIONED
  succ NS_DECOMMISSIONED = NS_LOST
  succ NS_LOST = NS_REBOOTED
  succ NS_REBOOTED = NS_DECOMMISSIONING
  succ NS_DECOMMISSIONING = NS_SHUTDOWN
  succ _ = Prelude'.error "hprotoc generated code: succ failure for type Hadoop.Protos.YarnProtos.NodeStateProto"
  pred NS_RUNNING = NS_NEW
  pred NS_UNHEALTHY = NS_RUNNING
  pred NS_DECOMMISSIONED = NS_UNHEALTHY
  pred NS_LOST = NS_DECOMMISSIONED
  pred NS_REBOOTED = NS_LOST
  pred NS_DECOMMISSIONING = NS_REBOOTED
  pred NS_SHUTDOWN = NS_DECOMMISSIONING
  pred _ = Prelude'.error "hprotoc generated code: pred failure for type Hadoop.Protos.YarnProtos.NodeStateProto"
 
instance P'.Wire NodeStateProto where
  wireSize ft' enum = P'.wireSize ft' (Prelude'.fromEnum enum)
  wirePut ft' enum = P'.wirePut ft' (Prelude'.fromEnum enum)
  wireGet 14 = P'.wireGetEnum toMaybe'Enum
  wireGet ft' = P'.wireGetErr ft'
  wireGetPacked 14 = P'.wireGetPackedEnum toMaybe'Enum
  wireGetPacked ft' = P'.wireGetErr ft'
 
instance P'.GPB NodeStateProto
 
instance P'.MessageAPI msg' (msg' -> NodeStateProto) NodeStateProto where
  getVal m' f' = f' m'
 
instance P'.ReflectEnum NodeStateProto where
  reflectEnum
   = [(1, "NS_NEW", NS_NEW), (2, "NS_RUNNING", NS_RUNNING), (3, "NS_UNHEALTHY", NS_UNHEALTHY),
      (4, "NS_DECOMMISSIONED", NS_DECOMMISSIONED), (5, "NS_LOST", NS_LOST), (6, "NS_REBOOTED", NS_REBOOTED),
      (7, "NS_DECOMMISSIONING", NS_DECOMMISSIONING), (8, "NS_SHUTDOWN", NS_SHUTDOWN)]
  reflectEnumInfo _
   = P'.EnumInfo (P'.makePNF (P'.pack ".hadoop.yarn.NodeStateProto") ["Hadoop", "Protos"] ["YarnProtos"] "NodeStateProto")
      ["Hadoop", "Protos", "YarnProtos", "NodeStateProto.hs"]
      [(1, "NS_NEW"), (2, "NS_RUNNING"), (3, "NS_UNHEALTHY"), (4, "NS_DECOMMISSIONED"), (5, "NS_LOST"), (6, "NS_REBOOTED"),
       (7, "NS_DECOMMISSIONING"), (8, "NS_SHUTDOWN")]
 
instance P'.TextType NodeStateProto where
  tellT = P'.tellShow
  getT = P'.getRead