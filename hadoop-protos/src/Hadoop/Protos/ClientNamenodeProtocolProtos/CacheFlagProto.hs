{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.ClientNamenodeProtocolProtos.CacheFlagProto (CacheFlagProto(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data CacheFlagProto = FORCE
                    deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable CacheFlagProto
 
instance Prelude'.Bounded CacheFlagProto where
  minBound = FORCE
  maxBound = FORCE
 
instance P'.Default CacheFlagProto where
  defaultValue = FORCE
 
toMaybe'Enum :: Prelude'.Int -> P'.Maybe CacheFlagProto
toMaybe'Enum 1 = Prelude'.Just FORCE
toMaybe'Enum _ = Prelude'.Nothing
 
instance Prelude'.Enum CacheFlagProto where
  fromEnum FORCE = 1
  toEnum
   = P'.fromMaybe
      (Prelude'.error "hprotoc generated code: toEnum failure for type Hadoop.Protos.ClientNamenodeProtocolProtos.CacheFlagProto")
      . toMaybe'Enum
  succ _ = Prelude'.error "hprotoc generated code: succ failure for type Hadoop.Protos.ClientNamenodeProtocolProtos.CacheFlagProto"
  pred _ = Prelude'.error "hprotoc generated code: pred failure for type Hadoop.Protos.ClientNamenodeProtocolProtos.CacheFlagProto"
 
instance P'.Wire CacheFlagProto where
  wireSize ft' enum = P'.wireSize ft' (Prelude'.fromEnum enum)
  wirePut ft' enum = P'.wirePut ft' (Prelude'.fromEnum enum)
  wireGet 14 = P'.wireGetEnum toMaybe'Enum
  wireGet ft' = P'.wireGetErr ft'
  wireGetPacked 14 = P'.wireGetPackedEnum toMaybe'Enum
  wireGetPacked ft' = P'.wireGetErr ft'
 
instance P'.GPB CacheFlagProto
 
instance P'.MessageAPI msg' (msg' -> CacheFlagProto) CacheFlagProto where
  getVal m' f' = f' m'
 
instance P'.ReflectEnum CacheFlagProto where
  reflectEnum = [(1, "FORCE", FORCE)]
  reflectEnumInfo _
   = P'.EnumInfo
      (P'.makePNF (P'.pack ".hadoop.hdfs.CacheFlagProto") ["Hadoop", "Protos"] ["ClientNamenodeProtocolProtos"] "CacheFlagProto")
      ["Hadoop", "Protos", "ClientNamenodeProtocolProtos", "CacheFlagProto.hs"]
      [(1, "FORCE")]
 
instance P'.TextType CacheFlagProto where
  tellT = P'.tellShow
  getT = P'.getRead