{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.XAttrProtos.XAttrSetFlagProto (XAttrSetFlagProto(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data XAttrSetFlagProto = XATTR_CREATE
                       | XATTR_REPLACE
                       deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable XAttrSetFlagProto
 
instance Prelude'.Bounded XAttrSetFlagProto where
  minBound = XATTR_CREATE
  maxBound = XATTR_REPLACE
 
instance P'.Default XAttrSetFlagProto where
  defaultValue = XATTR_CREATE
 
toMaybe'Enum :: Prelude'.Int -> P'.Maybe XAttrSetFlagProto
toMaybe'Enum 1 = Prelude'.Just XATTR_CREATE
toMaybe'Enum 2 = Prelude'.Just XATTR_REPLACE
toMaybe'Enum _ = Prelude'.Nothing
 
instance Prelude'.Enum XAttrSetFlagProto where
  fromEnum XATTR_CREATE = 1
  fromEnum XATTR_REPLACE = 2
  toEnum
   = P'.fromMaybe (Prelude'.error "hprotoc generated code: toEnum failure for type Hadoop.Protos.XAttrProtos.XAttrSetFlagProto") .
      toMaybe'Enum
  succ XATTR_CREATE = XATTR_REPLACE
  succ _ = Prelude'.error "hprotoc generated code: succ failure for type Hadoop.Protos.XAttrProtos.XAttrSetFlagProto"
  pred XATTR_REPLACE = XATTR_CREATE
  pred _ = Prelude'.error "hprotoc generated code: pred failure for type Hadoop.Protos.XAttrProtos.XAttrSetFlagProto"
 
instance P'.Wire XAttrSetFlagProto where
  wireSize ft' enum = P'.wireSize ft' (Prelude'.fromEnum enum)
  wirePut ft' enum = P'.wirePut ft' (Prelude'.fromEnum enum)
  wireGet 14 = P'.wireGetEnum toMaybe'Enum
  wireGet ft' = P'.wireGetErr ft'
  wireGetPacked 14 = P'.wireGetPackedEnum toMaybe'Enum
  wireGetPacked ft' = P'.wireGetErr ft'
 
instance P'.GPB XAttrSetFlagProto
 
instance P'.MessageAPI msg' (msg' -> XAttrSetFlagProto) XAttrSetFlagProto where
  getVal m' f' = f' m'
 
instance P'.ReflectEnum XAttrSetFlagProto where
  reflectEnum = [(1, "XATTR_CREATE", XATTR_CREATE), (2, "XATTR_REPLACE", XATTR_REPLACE)]
  reflectEnumInfo _
   = P'.EnumInfo (P'.makePNF (P'.pack ".hadoop.hdfs.XAttrSetFlagProto") ["Hadoop", "Protos"] ["XAttrProtos"] "XAttrSetFlagProto")
      ["Hadoop", "Protos", "XAttrProtos", "XAttrSetFlagProto.hs"]
      [(1, "XATTR_CREATE"), (2, "XATTR_REPLACE")]
 
instance P'.TextType XAttrSetFlagProto where
  tellT = P'.tellShow
  getT = P'.getRead