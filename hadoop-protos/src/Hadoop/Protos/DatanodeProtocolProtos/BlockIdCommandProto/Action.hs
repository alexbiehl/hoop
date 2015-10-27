{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.DatanodeProtocolProtos.BlockIdCommandProto.Action (Action(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data Action = CACHE
            | UNCACHE
            deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable Action
 
instance Prelude'.Bounded Action where
  minBound = CACHE
  maxBound = UNCACHE
 
instance P'.Default Action where
  defaultValue = CACHE
 
toMaybe'Enum :: Prelude'.Int -> P'.Maybe Action
toMaybe'Enum 1 = Prelude'.Just CACHE
toMaybe'Enum 2 = Prelude'.Just UNCACHE
toMaybe'Enum _ = Prelude'.Nothing
 
instance Prelude'.Enum Action where
  fromEnum CACHE = 1
  fromEnum UNCACHE = 2
  toEnum
   = P'.fromMaybe
      (Prelude'.error
        "hprotoc generated code: toEnum failure for type Hadoop.Protos.DatanodeProtocolProtos.BlockIdCommandProto.Action")
      . toMaybe'Enum
  succ CACHE = UNCACHE
  succ _
   = Prelude'.error "hprotoc generated code: succ failure for type Hadoop.Protos.DatanodeProtocolProtos.BlockIdCommandProto.Action"
  pred UNCACHE = CACHE
  pred _
   = Prelude'.error "hprotoc generated code: pred failure for type Hadoop.Protos.DatanodeProtocolProtos.BlockIdCommandProto.Action"
 
instance P'.Wire Action where
  wireSize ft' enum = P'.wireSize ft' (Prelude'.fromEnum enum)
  wirePut ft' enum = P'.wirePut ft' (Prelude'.fromEnum enum)
  wireGet 14 = P'.wireGetEnum toMaybe'Enum
  wireGet ft' = P'.wireGetErr ft'
  wireGetPacked 14 = P'.wireGetPackedEnum toMaybe'Enum
  wireGetPacked ft' = P'.wireGetErr ft'
 
instance P'.GPB Action
 
instance P'.MessageAPI msg' (msg' -> Action) Action where
  getVal m' f' = f' m'
 
instance P'.ReflectEnum Action where
  reflectEnum = [(1, "CACHE", CACHE), (2, "UNCACHE", UNCACHE)]
  reflectEnumInfo _
   = P'.EnumInfo
      (P'.makePNF (P'.pack ".hadoop.hdfs.datanode.BlockIdCommandProto.Action") ["Hadoop", "Protos"]
        ["DatanodeProtocolProtos", "BlockIdCommandProto"]
        "Action")
      ["Hadoop", "Protos", "DatanodeProtocolProtos", "BlockIdCommandProto", "Action.hs"]
      [(1, "CACHE"), (2, "UNCACHE")]
 
instance P'.TextType Action where
  tellT = P'.tellShow
  getT = P'.getRead