{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.XAttrProtos.XAttrProto.XAttrNamespaceProto (XAttrNamespaceProto(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data XAttrNamespaceProto = USER
                         | TRUSTED
                         | SECURITY
                         | SYSTEM
                         | RAW
                         deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable XAttrNamespaceProto
 
instance Prelude'.Bounded XAttrNamespaceProto where
  minBound = USER
  maxBound = RAW
 
instance P'.Default XAttrNamespaceProto where
  defaultValue = USER
 
toMaybe'Enum :: Prelude'.Int -> P'.Maybe XAttrNamespaceProto
toMaybe'Enum 0 = Prelude'.Just USER
toMaybe'Enum 1 = Prelude'.Just TRUSTED
toMaybe'Enum 2 = Prelude'.Just SECURITY
toMaybe'Enum 3 = Prelude'.Just SYSTEM
toMaybe'Enum 4 = Prelude'.Just RAW
toMaybe'Enum _ = Prelude'.Nothing
 
instance Prelude'.Enum XAttrNamespaceProto where
  fromEnum USER = 0
  fromEnum TRUSTED = 1
  fromEnum SECURITY = 2
  fromEnum SYSTEM = 3
  fromEnum RAW = 4
  toEnum
   = P'.fromMaybe
      (Prelude'.error "hprotoc generated code: toEnum failure for type Hadoop.Protos.XAttrProtos.XAttrProto.XAttrNamespaceProto")
      . toMaybe'Enum
  succ USER = TRUSTED
  succ TRUSTED = SECURITY
  succ SECURITY = SYSTEM
  succ SYSTEM = RAW
  succ _ = Prelude'.error "hprotoc generated code: succ failure for type Hadoop.Protos.XAttrProtos.XAttrProto.XAttrNamespaceProto"
  pred TRUSTED = USER
  pred SECURITY = TRUSTED
  pred SYSTEM = SECURITY
  pred RAW = SYSTEM
  pred _ = Prelude'.error "hprotoc generated code: pred failure for type Hadoop.Protos.XAttrProtos.XAttrProto.XAttrNamespaceProto"
 
instance P'.Wire XAttrNamespaceProto where
  wireSize ft' enum = P'.wireSize ft' (Prelude'.fromEnum enum)
  wirePut ft' enum = P'.wirePut ft' (Prelude'.fromEnum enum)
  wireGet 14 = P'.wireGetEnum toMaybe'Enum
  wireGet ft' = P'.wireGetErr ft'
  wireGetPacked 14 = P'.wireGetPackedEnum toMaybe'Enum
  wireGetPacked ft' = P'.wireGetErr ft'
 
instance P'.GPB XAttrNamespaceProto
 
instance P'.MessageAPI msg' (msg' -> XAttrNamespaceProto) XAttrNamespaceProto where
  getVal m' f' = f' m'
 
instance P'.ReflectEnum XAttrNamespaceProto where
  reflectEnum = [(0, "USER", USER), (1, "TRUSTED", TRUSTED), (2, "SECURITY", SECURITY), (3, "SYSTEM", SYSTEM), (4, "RAW", RAW)]
  reflectEnumInfo _
   = P'.EnumInfo
      (P'.makePNF (P'.pack ".hadoop.hdfs.XAttrProto.XAttrNamespaceProto") ["Hadoop", "Protos"] ["XAttrProtos", "XAttrProto"]
        "XAttrNamespaceProto")
      ["Hadoop", "Protos", "XAttrProtos", "XAttrProto", "XAttrNamespaceProto.hs"]
      [(0, "USER"), (1, "TRUSTED"), (2, "SECURITY"), (3, "SYSTEM"), (4, "RAW")]
 
instance P'.TextType XAttrNamespaceProto where
  tellT = P'.tellShow
  getT = P'.getRead