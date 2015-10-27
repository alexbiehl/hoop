{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.ClientNamenodeProtocolProtos.CreateFlagProto (CreateFlagProto(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data CreateFlagProto = CREATE
                     | OVERWRITE
                     | APPEND
                     | LAZY_PERSIST
                     | NEW_BLOCK
                     deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable CreateFlagProto
 
instance Prelude'.Bounded CreateFlagProto where
  minBound = CREATE
  maxBound = NEW_BLOCK
 
instance P'.Default CreateFlagProto where
  defaultValue = CREATE
 
toMaybe'Enum :: Prelude'.Int -> P'.Maybe CreateFlagProto
toMaybe'Enum 1 = Prelude'.Just CREATE
toMaybe'Enum 2 = Prelude'.Just OVERWRITE
toMaybe'Enum 4 = Prelude'.Just APPEND
toMaybe'Enum 16 = Prelude'.Just LAZY_PERSIST
toMaybe'Enum 32 = Prelude'.Just NEW_BLOCK
toMaybe'Enum _ = Prelude'.Nothing
 
instance Prelude'.Enum CreateFlagProto where
  fromEnum CREATE = 1
  fromEnum OVERWRITE = 2
  fromEnum APPEND = 4
  fromEnum LAZY_PERSIST = 16
  fromEnum NEW_BLOCK = 32
  toEnum
   = P'.fromMaybe
      (Prelude'.error "hprotoc generated code: toEnum failure for type Hadoop.Protos.ClientNamenodeProtocolProtos.CreateFlagProto")
      . toMaybe'Enum
  succ CREATE = OVERWRITE
  succ OVERWRITE = APPEND
  succ APPEND = LAZY_PERSIST
  succ LAZY_PERSIST = NEW_BLOCK
  succ _ = Prelude'.error "hprotoc generated code: succ failure for type Hadoop.Protos.ClientNamenodeProtocolProtos.CreateFlagProto"
  pred OVERWRITE = CREATE
  pred APPEND = OVERWRITE
  pred LAZY_PERSIST = APPEND
  pred NEW_BLOCK = LAZY_PERSIST
  pred _ = Prelude'.error "hprotoc generated code: pred failure for type Hadoop.Protos.ClientNamenodeProtocolProtos.CreateFlagProto"
 
instance P'.Wire CreateFlagProto where
  wireSize ft' enum = P'.wireSize ft' (Prelude'.fromEnum enum)
  wirePut ft' enum = P'.wirePut ft' (Prelude'.fromEnum enum)
  wireGet 14 = P'.wireGetEnum toMaybe'Enum
  wireGet ft' = P'.wireGetErr ft'
  wireGetPacked 14 = P'.wireGetPackedEnum toMaybe'Enum
  wireGetPacked ft' = P'.wireGetErr ft'
 
instance P'.GPB CreateFlagProto
 
instance P'.MessageAPI msg' (msg' -> CreateFlagProto) CreateFlagProto where
  getVal m' f' = f' m'
 
instance P'.ReflectEnum CreateFlagProto where
  reflectEnum
   = [(1, "CREATE", CREATE), (2, "OVERWRITE", OVERWRITE), (4, "APPEND", APPEND), (16, "LAZY_PERSIST", LAZY_PERSIST),
      (32, "NEW_BLOCK", NEW_BLOCK)]
  reflectEnumInfo _
   = P'.EnumInfo
      (P'.makePNF (P'.pack ".hadoop.hdfs.CreateFlagProto") ["Hadoop", "Protos"] ["ClientNamenodeProtocolProtos"] "CreateFlagProto")
      ["Hadoop", "Protos", "ClientNamenodeProtocolProtos", "CreateFlagProto.hs"]
      [(1, "CREATE"), (2, "OVERWRITE"), (4, "APPEND"), (16, "LAZY_PERSIST"), (32, "NEW_BLOCK")]
 
instance P'.TextType CreateFlagProto where
  tellT = P'.tellShow
  getT = P'.getRead