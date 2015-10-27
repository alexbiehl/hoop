{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.YarnServerCommonProtos.NodeActionProto (NodeActionProto(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data NodeActionProto = NORMAL
                     | RESYNC
                     | SHUTDOWN
                     deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable NodeActionProto
 
instance Prelude'.Bounded NodeActionProto where
  minBound = NORMAL
  maxBound = SHUTDOWN
 
instance P'.Default NodeActionProto where
  defaultValue = NORMAL
 
toMaybe'Enum :: Prelude'.Int -> P'.Maybe NodeActionProto
toMaybe'Enum 0 = Prelude'.Just NORMAL
toMaybe'Enum 1 = Prelude'.Just RESYNC
toMaybe'Enum 2 = Prelude'.Just SHUTDOWN
toMaybe'Enum _ = Prelude'.Nothing
 
instance Prelude'.Enum NodeActionProto where
  fromEnum NORMAL = 0
  fromEnum RESYNC = 1
  fromEnum SHUTDOWN = 2
  toEnum
   = P'.fromMaybe
      (Prelude'.error "hprotoc generated code: toEnum failure for type Hadoop.Protos.YarnServerCommonProtos.NodeActionProto")
      . toMaybe'Enum
  succ NORMAL = RESYNC
  succ RESYNC = SHUTDOWN
  succ _ = Prelude'.error "hprotoc generated code: succ failure for type Hadoop.Protos.YarnServerCommonProtos.NodeActionProto"
  pred RESYNC = NORMAL
  pred SHUTDOWN = RESYNC
  pred _ = Prelude'.error "hprotoc generated code: pred failure for type Hadoop.Protos.YarnServerCommonProtos.NodeActionProto"
 
instance P'.Wire NodeActionProto where
  wireSize ft' enum = P'.wireSize ft' (Prelude'.fromEnum enum)
  wirePut ft' enum = P'.wirePut ft' (Prelude'.fromEnum enum)
  wireGet 14 = P'.wireGetEnum toMaybe'Enum
  wireGet ft' = P'.wireGetErr ft'
  wireGetPacked 14 = P'.wireGetPackedEnum toMaybe'Enum
  wireGetPacked ft' = P'.wireGetErr ft'
 
instance P'.GPB NodeActionProto
 
instance P'.MessageAPI msg' (msg' -> NodeActionProto) NodeActionProto where
  getVal m' f' = f' m'
 
instance P'.ReflectEnum NodeActionProto where
  reflectEnum = [(0, "NORMAL", NORMAL), (1, "RESYNC", RESYNC), (2, "SHUTDOWN", SHUTDOWN)]
  reflectEnumInfo _
   = P'.EnumInfo
      (P'.makePNF (P'.pack ".hadoop.yarn.NodeActionProto") ["Hadoop", "Protos"] ["YarnServerCommonProtos"] "NodeActionProto")
      ["Hadoop", "Protos", "YarnServerCommonProtos", "NodeActionProto.hs"]
      [(0, "NORMAL"), (1, "RESYNC"), (2, "SHUTDOWN")]
 
instance P'.TextType NodeActionProto where
  tellT = P'.tellShow
  getT = P'.getRead