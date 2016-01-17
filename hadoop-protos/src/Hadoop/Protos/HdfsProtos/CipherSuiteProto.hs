{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.HdfsProtos.CipherSuiteProto (CipherSuiteProto(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data CipherSuiteProto = UNKNOWN
                      | AES_CTR_NOPADDING
                      deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable CipherSuiteProto
 
instance Prelude'.Bounded CipherSuiteProto where
  minBound = UNKNOWN
  maxBound = AES_CTR_NOPADDING
 
instance P'.Default CipherSuiteProto where
  defaultValue = UNKNOWN
 
toMaybe'Enum :: Prelude'.Int -> P'.Maybe CipherSuiteProto
toMaybe'Enum 1 = Prelude'.Just UNKNOWN
toMaybe'Enum 2 = Prelude'.Just AES_CTR_NOPADDING
toMaybe'Enum _ = Prelude'.Nothing
 
instance Prelude'.Enum CipherSuiteProto where
  fromEnum UNKNOWN = 1
  fromEnum AES_CTR_NOPADDING = 2
  toEnum
   = P'.fromMaybe (Prelude'.error "hprotoc generated code: toEnum failure for type Hadoop.Protos.HdfsProtos.CipherSuiteProto") .
      toMaybe'Enum
  succ UNKNOWN = AES_CTR_NOPADDING
  succ _ = Prelude'.error "hprotoc generated code: succ failure for type Hadoop.Protos.HdfsProtos.CipherSuiteProto"
  pred AES_CTR_NOPADDING = UNKNOWN
  pred _ = Prelude'.error "hprotoc generated code: pred failure for type Hadoop.Protos.HdfsProtos.CipherSuiteProto"
 
instance P'.Wire CipherSuiteProto where
  wireSize ft' enum = P'.wireSize ft' (Prelude'.fromEnum enum)
  wirePut ft' enum = P'.wirePut ft' (Prelude'.fromEnum enum)
  wireGet 14 = P'.wireGetEnum toMaybe'Enum
  wireGet ft' = P'.wireGetErr ft'
  wireGetPacked 14 = P'.wireGetPackedEnum toMaybe'Enum
  wireGetPacked ft' = P'.wireGetErr ft'
 
instance P'.GPB CipherSuiteProto
 
instance P'.MessageAPI msg' (msg' -> CipherSuiteProto) CipherSuiteProto where
  getVal m' f' = f' m'
 
instance P'.ReflectEnum CipherSuiteProto where
  reflectEnum = [(1, "UNKNOWN", UNKNOWN), (2, "AES_CTR_NOPADDING", AES_CTR_NOPADDING)]
  reflectEnumInfo _
   = P'.EnumInfo (P'.makePNF (P'.pack ".hadoop.hdfs.CipherSuiteProto") ["Hadoop", "Protos"] ["HdfsProtos"] "CipherSuiteProto")
      ["Hadoop", "Protos", "HdfsProtos", "CipherSuiteProto.hs"]
      [(1, "UNKNOWN"), (2, "AES_CTR_NOPADDING")]
 
instance P'.TextType CipherSuiteProto where
  tellT = P'.tellShow
  getT = P'.getRead