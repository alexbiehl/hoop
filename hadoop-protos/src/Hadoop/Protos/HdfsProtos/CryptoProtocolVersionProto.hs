{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.HdfsProtos.CryptoProtocolVersionProto (CryptoProtocolVersionProto(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data CryptoProtocolVersionProto = UNKNOWN_PROTOCOL_VERSION
                                | ENCRYPTION_ZONES
                                deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable CryptoProtocolVersionProto
 
instance Prelude'.Bounded CryptoProtocolVersionProto where
  minBound = UNKNOWN_PROTOCOL_VERSION
  maxBound = ENCRYPTION_ZONES
 
instance P'.Default CryptoProtocolVersionProto where
  defaultValue = UNKNOWN_PROTOCOL_VERSION
 
toMaybe'Enum :: Prelude'.Int -> P'.Maybe CryptoProtocolVersionProto
toMaybe'Enum 1 = Prelude'.Just UNKNOWN_PROTOCOL_VERSION
toMaybe'Enum 2 = Prelude'.Just ENCRYPTION_ZONES
toMaybe'Enum _ = Prelude'.Nothing
 
instance Prelude'.Enum CryptoProtocolVersionProto where
  fromEnum UNKNOWN_PROTOCOL_VERSION = 1
  fromEnum ENCRYPTION_ZONES = 2
  toEnum
   = P'.fromMaybe
      (Prelude'.error "hprotoc generated code: toEnum failure for type Hadoop.Protos.HdfsProtos.CryptoProtocolVersionProto")
      . toMaybe'Enum
  succ UNKNOWN_PROTOCOL_VERSION = ENCRYPTION_ZONES
  succ _ = Prelude'.error "hprotoc generated code: succ failure for type Hadoop.Protos.HdfsProtos.CryptoProtocolVersionProto"
  pred ENCRYPTION_ZONES = UNKNOWN_PROTOCOL_VERSION
  pred _ = Prelude'.error "hprotoc generated code: pred failure for type Hadoop.Protos.HdfsProtos.CryptoProtocolVersionProto"
 
instance P'.Wire CryptoProtocolVersionProto where
  wireSize ft' enum = P'.wireSize ft' (Prelude'.fromEnum enum)
  wirePut ft' enum = P'.wirePut ft' (Prelude'.fromEnum enum)
  wireGet 14 = P'.wireGetEnum toMaybe'Enum
  wireGet ft' = P'.wireGetErr ft'
  wireGetPacked 14 = P'.wireGetPackedEnum toMaybe'Enum
  wireGetPacked ft' = P'.wireGetErr ft'
 
instance P'.GPB CryptoProtocolVersionProto
 
instance P'.MessageAPI msg' (msg' -> CryptoProtocolVersionProto) CryptoProtocolVersionProto where
  getVal m' f' = f' m'
 
instance P'.ReflectEnum CryptoProtocolVersionProto where
  reflectEnum = [(1, "UNKNOWN_PROTOCOL_VERSION", UNKNOWN_PROTOCOL_VERSION), (2, "ENCRYPTION_ZONES", ENCRYPTION_ZONES)]
  reflectEnumInfo _
   = P'.EnumInfo
      (P'.makePNF (P'.pack ".hadoop.hdfs.CryptoProtocolVersionProto") ["Hadoop", "Protos"] ["HdfsProtos"]
        "CryptoProtocolVersionProto")
      ["Hadoop", "Protos", "HdfsProtos", "CryptoProtocolVersionProto.hs"]
      [(1, "UNKNOWN_PROTOCOL_VERSION"), (2, "ENCRYPTION_ZONES")]
 
instance P'.TextType CryptoProtocolVersionProto where
  tellT = P'.tellShow
  getT = P'.getRead