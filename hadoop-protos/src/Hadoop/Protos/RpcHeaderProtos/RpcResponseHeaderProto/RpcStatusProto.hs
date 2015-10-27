{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.RpcHeaderProtos.RpcResponseHeaderProto.RpcStatusProto (RpcStatusProto(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data RpcStatusProto = SUCCESS
                    | ERROR
                    | FATAL
                    deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable RpcStatusProto
 
instance Prelude'.Bounded RpcStatusProto where
  minBound = SUCCESS
  maxBound = FATAL
 
instance P'.Default RpcStatusProto where
  defaultValue = SUCCESS
 
toMaybe'Enum :: Prelude'.Int -> P'.Maybe RpcStatusProto
toMaybe'Enum 0 = Prelude'.Just SUCCESS
toMaybe'Enum 1 = Prelude'.Just ERROR
toMaybe'Enum 2 = Prelude'.Just FATAL
toMaybe'Enum _ = Prelude'.Nothing
 
instance Prelude'.Enum RpcStatusProto where
  fromEnum SUCCESS = 0
  fromEnum ERROR = 1
  fromEnum FATAL = 2
  toEnum
   = P'.fromMaybe
      (Prelude'.error
        "hprotoc generated code: toEnum failure for type Hadoop.Protos.RpcHeaderProtos.RpcResponseHeaderProto.RpcStatusProto")
      . toMaybe'Enum
  succ SUCCESS = ERROR
  succ ERROR = FATAL
  succ _
   = Prelude'.error
      "hprotoc generated code: succ failure for type Hadoop.Protos.RpcHeaderProtos.RpcResponseHeaderProto.RpcStatusProto"
  pred ERROR = SUCCESS
  pred FATAL = ERROR
  pred _
   = Prelude'.error
      "hprotoc generated code: pred failure for type Hadoop.Protos.RpcHeaderProtos.RpcResponseHeaderProto.RpcStatusProto"
 
instance P'.Wire RpcStatusProto where
  wireSize ft' enum = P'.wireSize ft' (Prelude'.fromEnum enum)
  wirePut ft' enum = P'.wirePut ft' (Prelude'.fromEnum enum)
  wireGet 14 = P'.wireGetEnum toMaybe'Enum
  wireGet ft' = P'.wireGetErr ft'
  wireGetPacked 14 = P'.wireGetPackedEnum toMaybe'Enum
  wireGetPacked ft' = P'.wireGetErr ft'
 
instance P'.GPB RpcStatusProto
 
instance P'.MessageAPI msg' (msg' -> RpcStatusProto) RpcStatusProto where
  getVal m' f' = f' m'
 
instance P'.ReflectEnum RpcStatusProto where
  reflectEnum = [(0, "SUCCESS", SUCCESS), (1, "ERROR", ERROR), (2, "FATAL", FATAL)]
  reflectEnumInfo _
   = P'.EnumInfo
      (P'.makePNF (P'.pack ".hadoop.common.RpcResponseHeaderProto.RpcStatusProto") ["Hadoop", "Protos"]
        ["RpcHeaderProtos", "RpcResponseHeaderProto"]
        "RpcStatusProto")
      ["Hadoop", "Protos", "RpcHeaderProtos", "RpcResponseHeaderProto", "RpcStatusProto.hs"]
      [(0, "SUCCESS"), (1, "ERROR"), (2, "FATAL")]
 
instance P'.TextType RpcStatusProto where
  tellT = P'.tellShow
  getT = P'.getRead